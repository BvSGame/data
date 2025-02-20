import { readTextFile } from "../modules/js_xhr_ajax/xhr_ajax.min.js";
import { markdown2object } from "./markdown2object.js";
import { month2number } from "./month2number.js";
import { toSnakeCase } from "./tosnakecase.js";


let file = {
  projectVersion: {}
};


readTextFile({url: '../project_version.md'}, fileContents => {
  const md = markdown2object(fileContents);

  let currentDevStage = 'n_a';
  let currentDate = 'n_a';
  let currentVersion = 'n_a';
  let currentListLevel = 0;
  let addListString = '';

  function addList() {
    if (addListString.length > 0)
      file.projectVersion[currentDevStage][currentDate][currentVersion].push(addListString);
    addListString = '';
  }

  md.forEach(line => {
    if (line.type === 'heading' && line.level === 2) {
      addList();
      const machineReadable = toSnakeCase(line.text);
      currentDevStage = machineReadable;
      file.projectVersion[currentDevStage] = {};

      currentDate = 'n_a';
      currentVersion = 'n_a';
      currentListLevel = 0;
    }
    else if (line.type === 'heading' && line.level === 3) {
      addList();
      const split = line.text.split(/\s+/);
      let monthNumber = month2number(split[0]);
      if (monthNumber < 10)
        monthNumber = '0' + monthNumber.toString();

      currentDate = split[1] + '_' + monthNumber;

      currentVersion = 'n_a';
      currentListLevel = 0;
      addListString = '';
    }
    else if (line.type === 'heading' && line.level === 4) {
      addList();
      currentDate += '_' + line.text;
      file.projectVersion[currentDevStage][currentDate] = {};

      currentVersion = 'n_a';
      currentListLevel = 0;
      addListString = '';
    }
    else if (line.type === 'list' && line.text === 'Not started yet.') {
      addList();
      file.projectVersion[currentDevStage].not_started = true;

      currentVersion = 'n_a';
      currentListLevel = 0;
      addListString = '';
    }
    else if (line.type === 'list' && line.level === 1) {
      addList();
      currentVersion = toSnakeCase(line.text.replaceAll('`', ''));
      if (file.projectVersion[currentDevStage][currentDate] === undefined)
        file.projectVersion[currentDevStage][currentDate] = {};
      file.projectVersion[currentDevStage][currentDate][currentVersion] = [];

      addListString = '';
    }
    else if (line.type === 'list' && line.level > 1) {
      if (line.level >= 3 && line.level >= currentListLevel) {
        if (addListString.length > 0) {
          const tab = 4;
          addListString += '\n' + ' '.repeat(tab * (line.level - 3)) + '-  ';
        }
        addListString += line.text;
      }
      else {
        addList();
        addListString = line.text;
      }
      currentListLevel = line.level;
    }
  });

  if (addListString.length > 0)
    file.projectVersion[currentDevStage][currentDate][currentVersion].push(addListString);

  const hJSON_string = JSON.stringify(file.projectVersion, undefined, 2);
  const hH2 = document.createElement('h2');
  const hJSON_h3 = document.createElement('h3');
  const hXML_h3 = document.createElement('h3');
  const hCSV_h3 = document.createElement('h3');
  const hJSON_pre = document.createElement('pre');
  const hH2_text = document.createTextNode('project_version');
  const hJSON_h3_text = document.createTextNode('JSON');
  const hXML_h3_text = document.createTextNode('XML');
  const hCSV_h3_text = document.createTextNode('CSV');
  const hJSON_pre_text = document.createTextNode(hJSON_string);

  hH2.appendChild(hH2_text);
  hJSON_pre.appendChild(hJSON_pre_text);
  hJSON_h3.appendChild(hJSON_h3_text);
  hXML_h3.appendChild(hXML_h3_text);
  hCSV_h3.appendChild(hCSV_h3_text);

  document.querySelector('body').appendChild( document.createElement('hr') );
  document.querySelector('body').appendChild(hH2);
  document.querySelector('body').appendChild(hJSON_h3);
  document.querySelector('body').appendChild(hJSON_pre);
});