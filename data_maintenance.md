---
revised: 0.1.5.15
contributors_wip1_5:
- edx
---

# 📄 Maintenance of the “Data” Repository

💣 ***[Bombs vs. Sleepwalkers][home]***

## Before you proceed

### Software you would need

It is assumed that you use **Windows** (at least Windows 10). As of now, we’re not dealing with macOS, Linux distributions and any other operating systems – therefore, you may need to find similarly functioning programs for your OS. *Let us know and we’ll add programs to this page.*

You don’t have to install **every single** program or extension – just pick what you find most helpful.

- [**Everything**][everything]
- [**Obsidian**][obsidian]
- [**Visual Studio Code**][vscode] or [**VSCodium**][vscodium] *(most recommended)* – with following extensions:
  - [**Better Fountain**][ext_vsc_fountain]
  - [**Bookmarks**][ext_vsc_bookmarks]
  - [**Color Highlight**][ext_vsc_colorhighlight]
  - [**Discord Rich Presence**][ext_vsc_discordrpc]
  - [**favorites**][ext_vsc_favorites]
  - [**File Group**][ext_vsc_filegroup]
  - [**file-size**][ext_vsc_filesize]
  - [**File Utils**][ext_vsc_fileutils]
  - [**Git Graph**][ext_vsc_gitgraph]
  - [**GitLens**][ext_vsc_gitlens]
  - [**indent-rainbow**][ext_vsc_indentrainbow]
  - [**JSON Keys Remover**][ext_vsc_jsonkeysremover]
  - [**JSONPath Extraction**][ext_vsc_jsonpathextract]
  - [**Live Server**][ext_vsc_liveserver]
  - [**Markdown All in One**][ext_vsc_markdownaio]
  - [**markdown-hashtags**][ext_vsc_markdownhashtags]
  - [**markdownlint**][ext_vsc_markdownlint]
  - [**Markdown Memo**][ext_vsc_markdownmemo]
  - [**Markdown Notes**][ext_vsc_markdownnotes]
  - [**Markdown yaml Preamble**][ext_vsc_markdownyamlpreamble]
  - [**Material Icon Theme**][ext_vsc_materialicontheme]
  - [**Open all files in directory**][ext_vsc_openallfilesindirectory]
  - [**Open to New Window**][ext_vsc_opentonewwindow]
  - [**Scoped Sort**][ext_vsc_scopedsort]
  - [**Select Line Status Bar**][ext_vsc_selectlinestatusbar]
  - [**Smart Quotes**][ext_vsc_smartquotes]
  - [**Table Editor**][ext_vsc_tableeditor]
  - [**Todo Tree**][ext_vsc_todotree]
  - [**VS Code Counter**][ext_vsc_vscodecounter]
- ***Extensions for Chromium browsers** (Brave, Ungoogled Chromium, Microsoft Edge, Google Chrome, etc.)*
  - [**Markdown Viewer**][ext_chr_md]
  - [**RSS Subscription Extension**][ext_chr_rss]
  - [**XML Tree**][ext_chr_xml]

## Find empty directories and files smaller than 2 KB

Use this search query in **Everything**:

```text
path:"\.bvs\" !path:<\.git\|\.obsidian\|\.vscode\> <folder:size:<=0b|file:<*.csv|*.json|*.md|*.xml> !size:>2kb>
```

Customization:

- Change `\.bvs\` to the name of *your* cloned directory.

What does it do:

- First of all, it excludes subdirectories you don’t normally interact with: `.git` for Git, `.obsidian` for Obsidian, and `.vscode` for Visual Studio Code.
- Then, there are two conditions for finding what we need:
  1. Any directory should be empty or have files without any content.
  2. Any file should NOT be bigger than 2 KB (this is an average size of files that have a critical lack of the textual content).
      - Also, file types are limited: we only need CSV, JSON, MD and XML. If we won’t exclude other file types, we’ll see files we don’t need: CSS, HTML, JS, `version`, `.git`, `.gitignore`, `.gitkeep`, `gitmodules` and so on.

## Reserved reference definitions for Markdown links

We use the format `[text][key]` for Markdown links. You should avoid defining links other than what these keys are supposed to have:

- `home` – [main ReadMe page in the root directory][home].
- `prev` – previous serialized page.
- `next` – next serialized page.

[home]: /README.md

[everything]: https://voidtools.com
[obsidian]: https://obsidian.md
[vscode]: https://code.visualstudio.com
[vscodium]: https://vscodium.com

[ext_chr_md]: https://chromewebstore.google.com/detail/ckkdlimhmcjmikdlpkmbgfkaikojcbjk
[ext_chr_rss]: https://chromewebstore.google.com/detail/nlbjncdgjeocebhnmkbbbdekmmmcbfjd
[ext_chr_xml]: https://chromewebstore.google.com/detail/gbammbheopgpmaagmckhpjbfgdfkpadb

[ext_vsc_bookmarks]: https://open-vsx.org/vscode/item?itemName=alefragnani.Bookmarks
[ext_vsc_colorhighlight]: https://open-vsx.org/vscode/item?itemName=naumovs.color-highlight
[ext_vsc_discordrpc]: https://open-vsx.org/vscode/item?itemName=LeonardSSH.vscord
[ext_vsc_favorites]: https://open-vsx.org/vscode/item?itemName=howardzuo.vscode-favorites
[ext_vsc_filegroup]: https://open-vsx.org/vscode/item?itemName=rioj7.FileGroup
[ext_vsc_filesize]: https://open-vsx.org/vscode/item?itemName=zh9528.file-size
[ext_vsc_fileutils]: https://open-vsx.org/vscode/item?itemName=sleistner.vscode-fileutils
[ext_vsc_fountain]: https://open-vsx.org/vscode/item?itemName=piersdeseilligny.betterfountain
[ext_vsc_gitgraph]: https://open-vsx.org/vscode/item?itemName=mhutchie.git-graph
[ext_vsc_gitlens]: https://open-vsx.org/vscode/item?itemName=eamodio.gitlens
[ext_vsc_indentrainbow]: https://open-vsx.org/vscode/item?itemName=oderwat.indent-rainbow
[ext_vsc_jsonkeysremover]: https://open-vsx.org/vscode/item?itemName=muneeb706.json-keys-remover
[ext_vsc_jsonpathextract]: https://open-vsx.org/vscode/item?itemName=davidmarek.jsonpath-extract
[ext_vsc_liveserver]: https://open-vsx.org/vscode/item?itemName=ritwickdey.LiveServer
[ext_vsc_markdownaio]: https://open-vsx.org/vscode/item?itemName=yzhang.markdown-all-in-one
[ext_vsc_markdownhashtags]: https://open-vsx.org/vscode/item?itemName=vanadium23.markdown-hashtags
[ext_vsc_markdownlint]: https://open-vsx.org/vscode/item?itemName=DavidAnson.vscode-markdownlint
[ext_vsc_markdownmemo]: https://open-vsx.org/vscode/item?itemName=svsool.markdown-memo
[ext_vsc_markdownnotes]: https://open-vsx.org/vscode/item?itemName=kortina.vscode-markdown-notes
[ext_vsc_markdownyamlpreamble]: https://open-vsx.org/vscode/item?itemName=bierner.markdown-yaml-preamble
[ext_vsc_materialicontheme]: https://open-vsx.org/vscode/item?itemName=PKief.material-icon-theme
[ext_vsc_openallfilesindirectory]: https://github.com/kieran-osgood/vscode-open-files-in-directory
[ext_vsc_opentonewwindow]: https://open-vsx.org/vscode/item?itemName=zokugun.open-to-new-window
[ext_vsc_scopedsort]: https://open-vsx.org/vscode/item?itemName=karizma.scoped-sort
[ext_vsc_selectlinestatusbar]: https://open-vsx.org/vscode/item?itemName=tomoki1207.selectline-statusbar
[ext_vsc_smartquotes]: https://open-vsx.org/vscode/item?itemName=LukeParkinson.smart-quotes
[ext_vsc_tableeditor]: https://open-vsx.org/vscode/item?itemName=sswatson.table-editor
[ext_vsc_todotree]: https://open-vsx.org/vscode/item?itemName=Gruntfuggly.todo-tree
[ext_vsc_vscodecounter]: https://open-vsx.org/vscode/item?itemName=uctakeoff.vscode-counter
