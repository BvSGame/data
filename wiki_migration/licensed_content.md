---
revised: 0.1.5.17
contributors_wip1_5:
- edx
---

# 📄 Licensed Content

💣 ***[Bombs vs. Sleepwalkers][home]** ➔ [Content][content]*

****

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

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |

### /brand/logos/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |
| `2530500` | `bvs_logo_full_2023.png` | [![ia]][2530500a] | Full version of BvS logo (2023) | [CC] | edx |
| `2530501` | `bvs_logo_mono_2023.png` | [![ia]][2530501a] | White monochrome version of BvS logo (2023) | [CC] | edx |

### /music_bvs1/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |

### /music_bvs2/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |

### /music_bvso/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |

### /music_bvs3d/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |

### /scripts/

| ID | File name | Links | Notes and #tags | License | Author(s) |
| -: | :-------- | :---- | :-------------- | :-----: | :-------- |

## Reserved icons

They’ll be used later.

![i4] ![id] ![ig] ![il] ![im] ![ir] ![is] ![it] ![iy]

[home]: /README.md
[content]: /content/readme.md
[mirrors]: /mirrors.md#official-mirrors-for-media-content

[CC]: #cc-by

[i4]: https://www.4shared.com/favicon.ico
[ia]: https://autumn.revolt.chat/attachments/7s4mWOn5k6iPtwai-5xVRlhHdXFX-ZqO2O9GW7UKSo
[id]: https://autumn.revolt.chat/attachments/uMJ0tAazsckNl_kP80qottUuU8sWst9lKftSoIVK_m
[ig]: https://autumn.revolt.chat/attachments/AN8wZKR7ylgwQQlhbY9fxZ22CAVM4hlOfQfqIqeTn7
[il]: https://autumn.revolt.chat/attachments/biWR2DQLub1JpxxbswICCq7oBC4mUUeltBJUSEpFX6
[im]: https://autumn.revolt.chat/attachments/aNg0LtJLd5dLvlT0HHElb4rQs5pJatNEZ4p4POWU2A
[ir]: https://autumn.revolt.chat/attachments/fuQoZkhAAaBSaunPbgo6f6ooQUNsC7TKiz7IA3e3Hw
[is]: https://autumn.revolt.chat/attachments/LfnTvbx-N-Pil70020v_aKhLwBwBj0NhiZwPB_v8ol
[it]: https://telegram.org/img/favicon-16x16.png
[iy]: https://www.youtube.com/s/desktop/23c6425d/img/logos/favicon.ico

[2530500a]: https://archive.org/download/bvsgame/brand/logos/bvs_logo_full_2023.png
[2530501a]: https://archive.org/download/bvsgame/brand/logos/bvs_logo_mono_2023.png
