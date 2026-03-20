---
tags:
  - EmptyPages
contributors:
  - liledix4
version: 0.1.502.23
---
#TBA

## Current format

```
Format  R.M.SDD.H.M
Example 0.1.502.23.4
```

| Letter(s) | Meaning                                | In example                                                                                                                                                                             |
| --------- | -------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **R**     | Revision of the project.               | `0` means the project is in **zero revision**, likely indicating very early development.                                                                                               |
| **M**     | [Milestone](Milestone.md).             | `1` refers to **Milestone 1**.                                                                                                                                                         |
| **S**     | Stage of development in the milestone. | `5` refers to the stage of development called **Milestone 1.5**.                                                                                                                       |
| **DD**    | Day of stage.                          | `02` is a **second day of development** during Milestone 1.5. This number resets as soon as stage of development changes. One milestone is allowed to last maximum 99 days of updates. |
| **H**     | UTC hour, real-time.                   | `23` means **23:00 in UTC time zone**.                                                                                                                                                 |
| **M**     | Minor update.                          | `4` means the fourth update during 23:XX.                                                                                                                                              |

## Previous formats

#TBA 
