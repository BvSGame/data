export const config = {

  version: {
    revision: 0,
    milestone: 1,
    milestoneStage: 5,
  },

  filePath: {
    data: {
      indexPage: './index.html',
    },
    version: {
      min: './version',
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