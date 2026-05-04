---
title: Bombs vs. Sleepwalkers Wiki
tags:
  - 500Words
version: 0.1.521
aliases:
  - Wiki
  - BvS Wiki
---
![Cover of Bombs vs. Sleepwalkers Wiki](https://media.bvsga.me/brand/covers/bvs_wiki_cover.jpg)

Welcome to ***Bombs vs. Sleepwalkers Wiki***, your first stop for everything you’d like to learn about *[Bombs vs. Sleepwalkers](Bombs%20vs.%20Sleepwalkers%20(franchise).md)*! This website is also known as ***BvS Wiki***, and the project itself is often called simply ***BvS***.

You can start your journey by **using the search bar** or **[going through the list of tags](tags)**. We use tags as **categories where pages belong**.

> [!WARNING] Note on Quartz version of *BvS Wiki*
> Unfortunately, since March 24, 2026, [Quartz](Quartz.md) (a system for generating static webpages out of Markdown files) proved to be unreliable in building complex wikis. On some occasions, it may be possible that pages reload themselves infinitely. The worst in this situation is: it’s not always possible to fix bugs or track down issues created by Quartz itself, especially due to sheer complexity of Quartz (360 Node.js packages as dependencies? Try to pin down where the problem lies!)
>
> Therefore, the decision has been made to begin creating a purely custom wiki system from scratch.  [liledix⁴](liledix4.md) announced it in the [YouTube community post](https://www.youtube.com/post/UgkxP1wzfITy7vj5cnaGuGWZ4dZj3FR4BGNP).
>
> Quartz version of *BvS Wiki* will be maintained passively. Keep in mind that now there’s a focus on creating a custom experience. It takes time, but for the sake of reliability, it has to be done. No more ready-to-go solutions, we had enough.

## Current version of the project

| Version number | Last updated |
| -- | -- |
| 0.1.521 | May 4, 2026 |

## Sources and mirrors of wiki

Official addresses of *Bombs vs. Sleepwalkers Wiki* are:

- https://wiki.bvsga.me – custom wiki (in production as of March 22, 2026).
- https://quartz.bvsga.me – special wiki powered by [Quartz](Quartz.md).

### Official mirrors

You can find official mirrors of *Bombs vs. Sleepwalkers Wiki* here:

- https://bvsgame.github.io/quartz
- https://bvsgame.github.io/wiki

### Run your own mirror

You’re free to run your own unofficial mirror if you clone following repositories:

- [GitHub: BvSGame/quartz](https://github.com/BvSGame/quartz)

Coming soon to Codeberg and sourcehut.

## Quick information about *Bombs vs. Sleepwalkers*

You can read more here: [*Bombs vs. Sleepwalkers* (franchise)](Bombs%20vs.%20Sleepwalkers%20(franchise).md).

![[Bombs vs. Sleepwalkers (franchise).md#Quick information]]

## Redacted content

In order to avoid revealing too much (spoilers), you may see this mentioned in various places:

```txt
{REDACTED: Some Text}
```

What follows the “REDACTED” text is an ID that can be replaced with private information if you have access to it. Yes, some info is deliberately hidden from your eyes, but some people can see it.

Don’t worry, though. There will be a day when it gets revealed to you too. You have to be patient.

## How to contribute to *BvS Wiki*?

In order to make a contribution to *BvS Wiki*, you can do the following.

You can **contact the maintainers** of this wiki directly. Currently, it’s [liledix⁴](liledix4.md) alone.

Or, you can create **issues** or **pull requests** for the “data” repository. Here’s where you can go:

![[Bombs vs. Sleepwalkers Git.md#data]]

## License

Quartz version of *Bombs vs. Sleepwalkers Wiki* consists of two assembled parts: Quartz itself and “wiki” directory from “data” repository of *BvS*.

- Quartz repository is licensed under [MIT License](https://github.com/BvSGame/quartz/blob/v4/LICENSE.txt).
- *BvS* “data” repository is licensed under [GNU Affero General Public License v3.0](https://github.com/BvSGame/data/blob/main/LICENSE).

## Known issues

- [ ] Apostrophes that mark omission (like in “don’t” or “’85”) are incorrect. Those should not have an opening single quotation mark. This must be fixed for consistency. Same applies to the scripts, not just wiki pages.
	- [ ] It would also be lovely to update [2fountain](2fountain.md) for correct automatic parsing and auto-fixing of the wrong apostrophes.
