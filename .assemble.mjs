import { readFileSync, writeFileSync } from 'fs';
import { config } from './.config.mjs';

const zeroPad = (num, places) => String( num ).padStart( places, '0' );

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
version: ${ output_VersionObject.version }
---
`
);