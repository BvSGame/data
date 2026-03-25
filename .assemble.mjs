import { readFileSync, writeFileSync } from 'fs';
import { config } from './.config.mjs';


const zeroPad = (num, places) => String( num ).padStart( places, '0' );


const initial_dataIndexPage = readFileSync( config.filePath.dataIndexPage, { encoding: 'utf-8' } );
const initial_VersionObject = JSON.parse(
  readFileSync( config.filePath.version.json, { encoding: 'utf-8' } )
);
const dateObject = new Date();
const dateSplit = dateObject.toISOString().split( /T|:/ );
const today = dateSplit[ 0 ];
const time = `${ zeroPad( dateObject.getUTCHours(), 2) }:${ zeroPad( dateObject.getUTCMinutes(), 2 ) }`;
const hour = parseInt( dateSplit[ 1 ] );


let output_VersionObject = {
  version: null,
  date: today,
  time: time,
  timestamp: dateObject.getTime(),
  revision: config.version.revision,
  milestone: config.version.milestone,
  milestoneStage: config.version.milestoneStage,
  milestoneStageDay: null,
  milestoneVersion: null,
  hour: hour,
};


output_VersionObject.milestoneStageDay = initial_VersionObject.milestoneStageDay;
if ( process.argv[ 2 ] === 'versionbump' )
  output_VersionObject.milestoneStageDay++;
output_VersionObject.milestoneVersion = parseInt(
  `${ output_VersionObject.milestoneStage }${ zeroPad( output_VersionObject.milestoneStageDay, 2 ) }`
);
output_VersionObject.version = `${ output_VersionObject.revision }.${ output_VersionObject.milestone }.${ output_VersionObject.milestoneVersion }.${ output_VersionObject.hour }`;


writeFileSync(
  config.filePath.version.json,
  JSON.stringify( output_VersionObject, undefined, 2 )
);
writeFileSync(
  config.filePath.version.min,
  output_VersionObject.version
);
writeFileSync(
  config.filePath.wiki.template.newNote,
  `---
tags:
  - EmptyPages
contributors:
  - liledix4
version: ${ output_VersionObject.version }
---
`
);
writeFileSync(
  config.filePath.dataIndexPage,
  initial_dataIndexPage
    .replaceAll( /(?<=<data id="data_version">).*?(?=<\/data>)/g, output_VersionObject.version )
    .replaceAll( /(?<=<data id="data_revision">).*?(?=<\/data>)/g, output_VersionObject.revision )
    .replaceAll( /(?<=<data id="data_milestone">).*?(?=<\/data>)/g, `${ output_VersionObject.milestone }.${ output_VersionObject.milestoneStage }` )
    .replaceAll( /(?<=<data id="data_updatetime">).*?(?=<\/data>)/g, `${ output_VersionObject.date } ${ output_VersionObject.time } UTC` )
    .replaceAll( /(?<=<data id="data_timestamp">).*?(?=<\/data>)/g, output_VersionObject.timestamp )
);