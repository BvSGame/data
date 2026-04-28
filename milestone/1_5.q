# Bombs vs. Sleepwalkers, Milestone 1.5: Version History

## Refreshed 1.5 (2026)

[IN PROGRESS] Day 7 | 0.1.507 | March 25, 2026

Day 6 | 0.1.506 | March 24, 2026

Day 5 | 0.1.505 | March 23, 2026
  Data update
    Version history is partially merged (versions 0.1.5.1 - 0.1.5.4).

Day 4 | 0.1.504 | March 22, 2026
  Data update: <https://github.com/BvSGame/data/compare/0.1.503..0.1.504>
    Brand new index page.
    ".htaccess" for browsing files in the mirrors.
  Version history is reintroduced.

Day 3 | 0.1.503 | March 21, 2026
  Data update: <https://github.com/BvSGame/data/compare/0.1.502..0.1.503>
  Quartz Wiki update: <https://github.com/BvSGame/quartz/releases/tag/0.1.503>

Day 2 | 0.1.502 | March 20, 2026
  Versioning: brand new format.
  Data update: <https://github.com/BvSGame/data/compare/0.1.5.111..0.1.502>
  Quartz Wiki update: <https://github.com/BvSGame/quartz/releases/tag/0.1.502>

Day 1 | 0.1.5.111 | March 19, 2026
  Data update: <https://github.com/BvSGame/data/compare/0.1.5.17..0.1.5.111>
  Quartz Wiki update: <https://github.com/BvSGame/quartz/releases/tag/0.1.5.111>

## Initial 1.5 (2025)

0.1.5.18 | March 7-16, 2025
  Data – [*see GitHub changes*][comp_01518]
    Home page
      Now the latest change log is easier to reach!
  Website
    Stars are looking slightly better with the use of radial gradient instead of plain color.
      > edx: I wouldn’t be too picky about the fact that I didn’t replace `box-shadow` with `filter: drop-shadow()` – the stars are so small that very doubtfully anyone would notice a difference. Nevertheless, the use of `box-shadow` when the edges of element are fully transparent is a bad practice.
0.1.5.17 | March 7, 2025
  **Data** – [*see GitHub changes*][comp_01517]
    [Home page][home]
      Reorganized links for easier access for newcomers.
      Added links to the official websites.
    Root directory:
      Some page titles are fixed to reduce the ambiguity.
        *BvS 1* now has a disambiguation term “the game” instead of “the first game.”
      Slight improvement of readability for every page, by adding horizontal rule below navigational links under H1 heading.
      Created `index.html` file to redirect to the [home page][home] on GitHub.
      Created `.nojekyll` file to avoid Jekyll rendering of Markdown files and allow programmatic access (like XMLHttpRequest) to these files.
    [Glossary][glossary]: 6 new terms and new heading “Story and writing.”
      Also, “Specific to BvS” is now lower than “General terms.”
    `games/`: added alternative titles to the games.
    New empty pages:
      [Introduction to *Bombs vs. Sleepwalkers*][intro]
      `gameplay/`
        New subdirectories: `game_genres/`, `game_modes/` and `/quests`
        New subdirectories for `levels/`: `bvs1/` and `bvs2/`
        New subdirectories for `quests/`: `bvs1/`, `bvs2/`, `bvso/` and `bvs3d/`
      `locations/` – renamed from “Locations” to “Locations and Time Periods.”
        New subdirectories: `astronomical/`, `specific/`, `time_periods/` and `universes/`
        New pages in `astronomical/`: [Earth][locations_astr_earth], [Jenesis’ Asteroid][locations_astr_jenesisasteroid] and [the Moon][locations_astr_moon].
        New pages in `specific/`: [Cube-Simulator][locations_spec_cubesimulator], [Darkrock’s Underground Magmatic Base][locations_spec_darkrockmagmabase], [Giza][locations_spec_giza], [Hekla][locations_spec_hekla], [Jenesis’ Palace][locations_spec_jenesispalace], [Manhattan][locations_spec_manhattan], [the Moon’s Surface][locations_spec_moonsurface], [Darkrock’s Moonbase][locations_spec_moonbase] and [Pripyat][locations_spec_pripyat].
        New pages in `time_periods/`: [1,000s BC][locations_time_1000bc], [14th Millennium][locations_time_14mill], [Late 1940s][locations_time_1940l], [1960s][locations_time_1960], [1970s][locations_time_1970], [1980s][locations_time_1980], [1990s][locations_time_1990], [2036][locations_time_2036], [2038][locations_time_2038], [2345][locations_time_2345], [3000s][locations_time_3000], [40th Millennium][locations_time_40mill], [Ancient Egypt][locations_time_ancegypt], [Distant Future][locations_time_distfuture], [Industrial Revolution][locations_time_industrev], [Jurassic Period][locations_time_jurassic], [Medieval Fortress][locations_time_medieval], [Present Time][locations_time_present] and [Wild West][locations_time_wildwest].
        New pages in `universes/`: [13th][locations_univ_13], [38th][locations_univ_38], [42nd][locations_univ_42], [51st][locations_univ_51] and [56th][locations_univ_56].
      `merged_projects/`: [EDimensions][edimensions], [Retribute][retribute] and [Secretly Incorporated][secretlyinc].

0.1.5.16 | March 6, 2025
  **4shared**
    A new mirror is freshly created!!!!
  **Data** – [*see GitHub changes*][comp_01516]
    Fully written [AI][ai] page.
    [Home page][home]: instead of many inline links, now there’s a bulleted list of links, with brief descriptions added to every link.
    [Licensed Content][licensedcontent]: icons replaced text in the file links. Headings for more directories: `/music_bvs1/`, `/music_bvs2/`, `/music_bvso/`, `/music_bvs3d/` and `/scripts/`.
    [Mirrors][mirrors]: icons added.
  **Website**
    Loading spinner is added.
    Background stars are regularly changing positions, size and blinking rate.
    Social media links are changed from text to icons.
    Bottom part (with the logo) is more compact.
    Media queries are changed to lower values of width and height of the document.
    Blending mode is changed for some elements.
    HTML structure is changed.
    Separate CSS files.
  **Failed attempts** – *this version could have more updates*
    There was an attempt to use [Quartz][quartz] to render more readable form of the “data” repository, essentially creating one of the wikis. However, Quartz doesn’t work with directories added as submodules. So this idea was canceled.
    There was an attempt to use Discord server as a source for direct links to files. However, it’s not possible without revealing additional query strings that may be relevant to the access tokens. We’ll still add Discord links to the files in case you’ve already joined the server.

0.1.5.15 | March 3-5, 2025
  The second massive update this month!
  **Archive.org**
    The first release of the repository for public files! Starting with two versions of logos, first time published under Creative Commons license!
  **Data** – [*see GitHub changes*][comp_01515]
    4 new sections: [Content][content], [Data Maintenance][datamaintenance], [Donate][donate] and [Notes][notes].
    You’ll find answers to 17 new questions in [F.A.Q.][faq]!
    [Mirrors][mirrors] now have a list of actual links! 9 sources are at your service!
    **Change logs** – the new practice of adding a **“see GitHub changes”** link to every version if any Git repository has been updated. Basically, these are links to tag comparisons. Tags are being added more actively, right after committing if possible.
    The new practice of using **reference definitions** as links! All links throughout the whole “data” Git repository are changed to the reference definitions.
    [Glossary][glossary]: one new term and one new heading “General terms”.
    Edited GitHub description of the repository:
      Public data repository for Bombs vs. Sleepwalkers project. Technically, documentation and wiki in one place, designed to be parsed in a variety of ways.
    New empty pages:
      `content/`: [Licensed Content][licensedcontent]
      `notes/`: [Bombing is Not Cool!][bombingisnotcool]
    Minor stylistic changes in the previous change logs.
  **Discord applications**
    Created a new application called **“BvS Data Editing”**, specifically for Discord Rich Presence *(usable in Visual Studio Code and Obsidian)*.
  **Discord server**
    New public forums: `bvs-knowledge-base` and `cc-licensed-content`.
    Channel `more-info❓` now leads to `bvs-knowledge-base`, to provide access from Server Guide.
    Additions and rearrangements in the private channel categories.
  **Revolt server**
    Freshly created!!!!
  **SoundCloud** *(liledix4 account)*
    Updated album covers for every uploaded track.
    Slightly fixed track titles. Particularly, “Final” changed to “Final Part”.
    Renamed albums and changed their links:
      [Bombs vs. Sleepwalkers – WIP 1 Soundtrack (2023-2025)][soundcloud_album_bvs_wip1]
      [Bombs vs. Sleepwalkers – Legacy Soundtrack (2014-2022)][soundcloud_album_bvs_legacy]
    Disabled direct downloads for every track (there is a major problem with the inability to change metadata for MP3 and WAVE files).
  **Telegram forum**
    Freshly created!!!!
  **Website**
    Introducing a brand new, [stellar placeholder][bvswebsite_gh] you’ll see while the website itself is still in production! Hint: you’ll notice that there are more stars being added as the version number keeps increasing!

0.1.5.14 | March 3, 2025
  **Data** – [*see GitHub changes*][comp_01514]
    [Main page][home] got disclaimer about blank pages that this repository contains.
    Minor stylistic changes in the previous change logs.

0.1.5.13 | March 3, 2025
  **Data** – [*see GitHub changes*][comp_01513]
    Navigational “Previous/Next” links have been added for every page in `project_versions/`

0.1.5.12 | March 3, 2025
  **Data** – [*see GitHub changes*][comp_01512]
    For monthly change logs, there is the new practice of adding Overviews, starting with the [March 2025 edition](#overview).
    [Main page][home] – removed centering due to the incompatibility with some Markdown parsers (particularly Jekyll).

0.1.5.11 | March 3, 2025
  **Data** – [*see GitHub changes*][comp_01511]
    New directories: `characters/groups/` and `story/tropes/`
    `story/bvso/` – new empty subdirectories for stories (for almost every character so far): `alice_story/`, `james_story/`, `jenna_story/`, `lisa_story/`, `mannequin_story/`, `marie_story/`, `minty_story/`, `philipp_story/`, `rgbs_story/`, `rick_story/`, `wolfgang_story/`
    New empty pages for characters: [Minty][char_minty] and [RGBs][char_rgbs].
    Empty headings for [Game Engines][gameengines] – to acknowledge Redot (fork of Godot).
    Finished change log for [0.1.5.8](#0158) that has been skipped earlier (due to the amount of changes).

0.1.5.10 | March 2, 2025
  **Data** – [*see GitHub changes*][comp_01510]
    `partnering_projects/` – added more info about *DDLC New Heading* and some info on how partnership works.

0.1.5.9 | March 2, 2025
  **Data** – [*see GitHub changes*][comp_0159]
    4 new subdirectories for `music/` directory: `bvs1/`, `bvs2/`, `bvso/` and `bvs3d/`.

0.1.5.8 | March 1-2, 2025
  **Data** – ONE WHOPPER of an update! – [*see GitHub changes*][comp_0158]
    Massively revamped [main ReadMe page][home]!!!!
    EVERY Markdown file (old and new) in this repository got following updates:
      The returning practice of adding navigational links right below H1 headings!
      The returning practice of adding emojis at the beginning of H1 headings to visually differentiate categories (ReadMe files) and pages! (all other Markdown files)
      Frontmatter got `contributors_*` properties, separate for each development stage.
      `revised` property in the frontmatter, contains version number during which the revision is occured.
      Serialized pages, like [BvS 1 story chapters][story_bvs1], have additional “Previous/Next” navigational links.
    New info:
      [Document for Artists][docart] – it doesn’t have images, but text is exactly the same as in the privately shared PDF file.
    New directories:
      `characters/mini_bosses/`
      `characters/sleepwalkers/`
      `coding_dev/languages/`
      `coding_dev/tenacious_dreamforge/`
      `collaboration/`
      `gameplay/devices_gadgets/`
      `gameplay/items/`
      `gameplay/levels/`
      `gameplay/vehicles/`
      `gameplay/weapons/`
      `help/`
    Replacements and rearrangements:
      `index.json` file moved from the root directory to `json/`. It’s planned to additionally have CSV and XML versions later on.
      Directory `coding_dev/game_engines/` is replaced with [Game Engines][gameengines] page.
      Replaced `distribution/github/` and `distribution/steam/` – with `distribution/services/` that now contains [GitHub][distr_github] and [Steam][distr_steam] pages.
      Renamed `project_version/` to `project_versions/` and deleted all subdirectories – instead, there are pages directly in one common place: [Legacy][projver_legacy], [WIP 1.0][projver_wip10], [WIP 1.5: February 2025][projver_wip15_2502], [WIP 1.5: March 2025][projver_wip15_2503] and [WIP 2.0][projver_wip20].
      Deleted `story/chapters/` directory. Instead, there are subdirectories for every game that contain pages for story chapters and side stories:
        `story/bvs1/`
        `story/bvs1/side_stories/`
        `story/bvs2/`
        `story/bvso/` – with a number of new subdirectories: `darkrock_story/`, `saylor_story` and `toni_story`.
        `story/bvs3d/`
      Deleted `video/` directory, because textual content for it makes more sense as a part of `community/`
    New pages:
      Pages for root directory: [Ways to Contact][contact], [Contributors][contributors] and [F.A.Q.][faq].
      Empty pages for `characters/`: [Alice][char_alice], [BitBox][char_bitbox], [James][char_james], [Jenesis][char_jenesis], [Lisa][char_lisa], [Mannequin][char_mannequin], [Philipp][char_philipp] *(this one actually has some short textual content added)*, [The Player][char_theplayer] and [Wolfgang][char_wolfgang].
      Empty page for `community/`: [Email][comm_email].
      Empty pages for `community/social_media/`: [Bluesky][comm_bsky], [Discord][comm_discord], [Twitter/X][comm_twitter] and [YouTube][comm_yt].
      Empty pages in `games/`: [BvS 1][game_bvs1], [BvS 2][game_bvs2], [BvS Origins][game_bvso] and [BvS 3D][game_bvs3d].
      In `help/`: [Glossary][glossary].
      Empty pages for `project_versions/`: [WIP 1.5: Unversioned][projver_wip15_unv], [WIP 3.0][projver_wip30] and [WIP 4.0][projver_wip40].
      A LOT of empty pages for `story/bvs1/`
        1 side story: [The Day of Saylor][story_bvs1_side_thedayofsaylor].
        43 main chapters:
          [1: No Time Like the Present][story_bvs1_ch1]
          [2: Not O.K. Quarrel][story_bvs1_ch2]
          [3: 2345][story_bvs1_ch3]
          [4: Future in Your Hands][story_bvs1_ch4]
          [5: 2038][story_bvs1_ch5]
          [6: No Space Like This Universe][story_bvs1_ch6]
          [7: Caught in 2K][story_bvs1_ch7]
          [8: Give the Pianist a Shot][story_bvs1_ch8]
          [9: Security Breach][story_bvs1_ch9]
          [10: Sleepless Thousand][story_bvs1_ch10]
          [11: Don’t Shoot Saylor][story_bvs1_ch11]
          [12: The New Order][story_bvs1_ch12]
          [13: The New Tribes][story_bvs1_ch13]
          [14: Ancient Habits][story_bvs1_ch14]
          [15: Tech Paradise][story_bvs1_ch15]
          [16: So Meta][story_bvs1_ch16]
          [17: Radiation Fall][story_bvs1_ch17]
          [18: Spring Field][story_bvs1_ch18]
          [19: Chartbusters][story_bvs1_ch19]
          [20: The Beat of ’84][story_bvs1_ch20]
          [21: Twice Upon a Time][story_bvs1_ch21]
          [22: The Surf Boom][story_bvs1_ch22]
          [23: No Sun at the Beach][story_bvs1_ch23]
          [24: Noir Au Revoir][story_bvs1_ch24]
          [25: Manhattan in Time][story_bvs1_ch25]
          [26: The Rise of Machinery][story_bvs1_ch26]
          [27: Industry Standout][story_bvs1_ch27]
          [28: Steam-Powered Computers][story_bvs1_ch28]
          [29: Journey to the Mid][story_bvs1_ch29]
          [30: My Moonlit Pony][story_bvs1_ch30]
          [31: Slow Burn][story_bvs1_ch31]
          [32: Fast Burnout][story_bvs1_ch32]
          [33: The Maze of Giza][story_bvs1_ch33]
          [34: Smart Home][story_bvs1_ch34]
          [35: Jurassic Megalo-Blastic][story_bvs1_ch35]
          [36: The Last of Them][story_bvs1_ch36]
          [37: Cube-Simulator][story_bvs1_ch37]
          [38: Borderline All-Out][story_bvs1_ch38]
          [39: Moonwalkers][story_bvs1_ch39]
          [40: Unearthly Files][story_bvs1_ch40]
          [41: It’s Time to Stop][story_bvs1_ch41]
          [42: Icy Hot][story_bvs1_ch42]
          [43: Wrapping by Warping][story_bvs1_ch43]
      Empty page of the chapter for `story/bvs2/`: [1: Space Twister][story_bvs2_ch1].
  **Discord server**
    **WIP 2** category is renamed to **WIP 2 / WIP 1.5**
    A number of new private channels for **WIP 2 / WIP 1.5** category – they’re replicating the file structure of `data` and `private` Git repositories (with a few exceptions that are considered unneeded for Discord).
    Now there’s the returning practice of writing story drafts and fresh ideas **directly** to the Discord server channels – once they’re fleshed out, they’re being committed to Git repositories.

0.1.5.7 | March 1, 2025
  **Data** – [*see GitHub changes*][comp_0157]
    Slight edit of [Saylor][char_saylor]

0.1.5.6 | March 1, 2025
  **Data** – [*see GitHub changes*][comp_0156]
    Small but important changes to [Saylor][char_saylor] to reduce the ambiguity and improve readability. And a few new lines were added.

0.1.5.5 | March 1, 2025
  **Data** – [*see GitHub changes*][comp_0155]
    BIGGEST UPDATE: introducing freshly written [Saylor][char_saylor] – 960 words of introduction, adapted specifically for artists.
    Now both PUBLIC and PRIVATE data repositories share the same file structure!
      Starting from this version, some parts of information are becoming more transparent.
    Unnecessary `.gitkeep` files are deleted.
    Instead of `story_chapters/` directory, there’s a `story` directory with `chapters/` subdirectory.
    Instead of multiple `index.json` files (one for each directory), there’s just one `index.json` file at the root directory.
    Instead of a single `project_version.md` file, there’s a `project_versions/` directory, and WIP directories may have various Markdown files named as a year and month.
      Text structure for change logs is also changed. Version numbers are headings now. And there are full dates instead of simply days.
    For Markdown files, there are several new practices introduced:
      Frontmatter.
        `revised` – version number during which the page is revised (checked if the changes are necessary).
      Highlighting ideas.
        Using `==this Markdown syntax==`, now it’s possible to highlight ideas so that they could be added to the list of ideas (parser would treat highlights in a special way). There’s no need to have separate files for collecting ideas and takes any longer – now there’s a direct integration with Markdown files.
      Footnotes.
        Footnotes are used to mention ideas/opinions that are not supposed to be a part of the main text.
    Numerous empty files were created. Content will be added in the next versions.
    Some housekeeping.

0.1.5.4 | February 21, 2026
  Data update: <https://github.com/BvSGame/data/compare/0.1.5.3...0.1.5.4>
  **Scripts (Private)** are properly uploaded! ALL of them!

0.1.5.3 | February 20, 2025
  Data update: <https://github.com/BvSGame/data/compare/0.1.5.2...0.1.5.3>
  Data Converter: early version is done - <https://bvsgame.github.io/data/converter>. It just converts “project_version.md” to JSON format.
    *Outdated, see breaking change in **0.1.5.5**.*

0.1.5.2 | February 20, 2025
  Data update: <https://github.com/BvSGame/data/compare/0.1.5.1...0.1.5.2>
    Empty files for Markdown converter are created.
    Instead of just JSON files, it’s also planned to have conversions to CSV and XML files.
    **2do.md** – now formatted as a Markdown checklist.

0.1.5.1 | February 20, 2025
  Data update: <https://github.com/BvSGame/data/compare/0.0...0.1.5.1>
  Proper versioning of the project itself is started! Introducing “project_version” files! Publicly accessible from: <https://bvsgame.github.io/data/project_version.md>
    From now on, all other elements of the project are sharing this number.
    If contributions are done simultaneously by multiple people, it’s recommended to use the format of branches, e.g. `0.1.5.1_edx`
      Branch names must be unique. Simply use a short form of your nickname, like `edx` is short for `liledix4`
      Eventually, all branches must be merged into the main version number.
  Public to-do list is started: <https://bvsgame.github.io/data/2do.md>

#TEMP To find more of version history of "2025 era" of Milestone 1.5, see this file: <https://data.bvsga.me/project_versions/wip1_5_2025_03.md>
