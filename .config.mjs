export const config = {

  version: {
    revision: 0,
    milestone: {
      iteration: 1,
      stage: 5,
    },
  },

  filePath: {
    data: {
      indexPage: './index.html',
    },
    version: {
      min: './version',
      minFloat: './version_float',
      minShort: './version_short',
      json: './version.json',
    },
    wiki: {
      indexPage: './wiki/index.md',
      template: {
        newNote: './wiki/_Templates/New note.md',
      },
    },
  },

  node: {
    fs: {
      writeFile: {
        defaultOptions: {
          encoding: 'utf-8',
          flag: 'w+',
        },
      },
    },
  },

};