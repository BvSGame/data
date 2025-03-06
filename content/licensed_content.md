---
revised: 0.1.5.15
contributors_wip1_5:
- edx
---

# 📄 Licensed Content

💣 ***[Bombs vs. Sleepwalkers][home]** ➔ [Content][content]*

## Official mirrors for media content

*See [Mirrors][mirrors].*

## License lines

Use the following lines where needed.

### CC BY

> This work is licensed under Creative Commons Attribution 4.0 International: <https://creativecommons.org/licenses/by/4.0>

## How IDs work

7-digit hexadecimal number. If it’s 8-digit, it has leading zero *(unless you consider going beyond 21st century – time traveler as well, huh?)*

```text
7-digit  │  8-digit
         │
2530500  │  02530500
——_——__  │  ———_——__
1 23 4   │  1  23 4
```

1. `25` – last two digits of the year (2025).
    - Or last three digits, if it’s about `025`.
2. `3` – month (March). `a` for October, `b` for November, `c` for December.
3. `05` – day (5th). There’s also an extended format, see below.
4. `00` – serial number. Every day, it starts with `00` and ends with `ff`, meaning that this number can hold up to 256 IDs per day.
    - However, if 256 is not enough for some reason, add 40 to the day part – `45`, `85` and `c5` all mean the 5th day, just extended. This way, up to 1024 IDs per day are allowed.

### Where IDs are used

Anywhere there’s a need to avoid lengthy references (like file names, directory paths and URLs). Especially when it comes to the programmatic fetching.

## List of the licensed content

### /brand/

#### /brand/logos/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |
| `2530500` | `bvs_logo_full_2023.png` | [Archive.org][2530500a] | Full version of BvS logo (2023) | [CC] | edx |
| `2530501` | `bvs_logo_mono_2023.png` | [Archive.org][2530501a] | White monochrome version of BvS logo (2023) | [CC] | edx |

[home]: /README.md
[content]: /content/readme.md
[mirrors]: /mirrors.md#official-mirrors-for-media-content

[CC]: #cc-by

[2530500a]: https://archive.org/download/bvsgame/brand/logos/bvs_logo_full_2023.png
[2530501a]: https://archive.org/download/bvsgame/brand/logos/bvs_logo_mono_2023.png
