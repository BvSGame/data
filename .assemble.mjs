import { readFileSync, writeFile } from 'node:fs';
import { config } from './.config.mjs';


const zeroPad = ( num, places ) => String( num ).padStart( places, '0' );


const initial = {
  data: {
    indexPage: readFileSync(
      config.filePath.data.indexPage,
      { encoding: 'utf-8' }
    ),
  },
  versionObject: JSON.parse(
    readFileSync(
      config.filePath.version.json,
      { encoding: 'utf-8' }
    )
  ),
  wiki: {
    indexPage: readFileSync(
      config.filePath.wiki.indexPage,
      { encoding: 'utf-8' }
    ),
  },
};


const dateObject = new Date();
const dateProper = dateObject.toLocaleDateString( 'en-US', {
  month: 'long',
  day: 'numeric',
  year: 'numeric',
} );
const dateSplit = dateObject.toISOString().split( /T|:/ );
const today = dateSplit[ 0 ];
const time = `${ zeroPad( dateObject.getUTCHours(), 2 ) }:${ zeroPad( dateObject.getUTCMinutes(), 2 ) }`;
const hour = parseInt( dateSplit[ 1 ] );


let newVersionObject = {
  version: {
    full: null,
    short: null,
    float: null,
  },
  date: today,
  time: time,
  timestamp: dateObject.getTime(),
  revision: config.version.revision,
  milestone: {
    iteration: config.version.milestone.iteration,
    stage: config.version.milestone.stage,
    stageWeek: initial.versionObject.milestone.stageWeek,
    stageDay: getWeekdayInteger( dateObject ),
    version: null,
  },
  hour: hour,
};


if ( newVersionObject.milestone.stageDay < initial.versionObject.milestone.stageDay )
  newVersionObject.milestone.stageWeek++;


// if ( process.argv[ 2 ] === 'versionbump' )
//   newVersionObject.milestone.stageDay++;
newVersionObject.milestone.version = parseInt(
  `${ newVersionObject.milestone.stage }${ newVersionObject.milestone.stageWeek }${ newVersionObject.milestone.stageDay }`
);
newVersionObject.version.short = `${ newVersionObject.revision }.${ newVersionObject.milestone.iteration }.${ newVersionObject.milestone.version }`;
newVersionObject.version.full = `${ newVersionObject.version.short }.${ newVersionObject.hour }`;
newVersionObject.version.float = parseFloat(
  `${ newVersionObject.revision }${ zeroPad( newVersionObject.milestone.iteration, 2 ) }${ zeroPad( newVersionObject.milestone.version, 4 ) }.${ zeroPad( newVersionObject.hour, 2 ) }`
);


class GetUpdatedContent {
  static dataIndexPage() {
    return initial.data.indexPage
      .replaceAll( /(?<=<data id="data_version">).*?(?=<\/data>)/g, newVersionObject.version.full )
      .replaceAll( /(?<=<data id="data_revision">).*?(?=<\/data>)/g, newVersionObject.revision )
      .replaceAll( /(?<=<data id="data_milestone">).*?(?=<\/data>)/g, `${ newVersionObject.milestone.iteration }.${ newVersionObject.milestone.stage }` )
      .replaceAll( /(?<=<data id="data_updatetime">).*?(?=<\/data>)/g, `${ newVersionObject.date } ${ newVersionObject.time } UTC` )
      .replaceAll( /(?<=<data id="data_timestamp">).*?(?=<\/data>)/g, newVersionObject.timestamp );
  }
  static wikiIndexPage() {
    return initial.wiki.indexPage
      .replaceAll(
        /^version: (\d+\.){2}\d+$/gm,
        'version: ' + newVersionObject.version.short
      )
      .replaceAll(
        /^## Current version of the project\n\n\| Version number \| Last updated \|\n\| -- \| -- \|\n\| (\d+\.){2}\d+ \| [ADFJMNOS][a-y]+ [123]?\d, \d{4} \|/gm,
        `## Current version of the project\n\n| Version number | Last updated |\n| -- | -- |\n| ${ newVersionObject.version.short } | ${ dateProper } |`
      );
  }
  static wikiNewNoteTemplate() {
    return `---
tags:
  - 99WordsOrLower
version: ${ newVersionObject.version.short }
---
`
  }
}


doWriteFile(
  config.filePath.version.json,
  JSON.stringify( newVersionObject, undefined, 2 )
);
doWriteFile(
  config.filePath.version.min,
  newVersionObject.version.full
);
doWriteFile(
  config.filePath.version.minFloat,
  newVersionObject.version.float.toString()
);
doWriteFile(
  config.filePath.version.minShort,
  newVersionObject.version.short
);
doWriteFile(
  config.filePath.wiki.template.newNote,
  GetUpdatedContent.wikiNewNoteTemplate()
);
doWriteFile(
  config.filePath.data.indexPage,
  GetUpdatedContent.dataIndexPage()
);
doWriteFile(
  config.filePath.wiki.indexPage,
  GetUpdatedContent.wikiIndexPage()
);


async function doWriteFile( path, content ) {
  writeFile(
    path,
    content,
    config.node.fs.writeFile.defaultOptions,
    writeFileCallback
  );
}
function writeFileCallback( err ) {
  if ( err )
    console.log( err );
}


function getWeekdayInteger( date ) {
  if ( date === undefined ) date = new Date();
  const weekdayString = date.toLocaleString( 'en-US', { weekday: 'short' } );
  switch ( weekdayString ) {
    case 'Mon': return 1;
    case 'Tue': return 2;
    case 'Wed': return 3;
    case 'Thu': return 4;
    case 'Fri': return 5;
    case 'Sat': return 6;
    case 'Sun': return 7;
  }
}