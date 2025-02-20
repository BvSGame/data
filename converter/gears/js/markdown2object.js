export function markdown2object(markdownString) {
  let result = [];
  const markdownLines = markdownString.split(/\r?\n+/).filter(a => a.length > 0);

  markdownLines.forEach(line => {
    let obj = {};
    if (line.startsWith('#')) {
      const split = line.split(/(?<=^#+)(?!#)\s*/);
      obj = {
        type: 'heading',
        level: split[0].length,
        text: split[1]
      };
    }
    else if (line.match(/^\s*-/)) {
      const tab = 2;
      const split = line.split(/(?<=^\s*)-\s*/);
      obj = {
        type: 'list',
        level: 1 + (split[0].length / tab),
        text: split[1]
      };
    }
    else {
      obj = {
        type: 'etc',
        text: line
      };
    }
    result.push(obj);
  });

  return result;
}