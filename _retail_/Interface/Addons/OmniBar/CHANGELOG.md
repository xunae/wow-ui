# [v11.5](https://github.com/jordonwow/omnibar/tree/v11.5) (2021-05-18)

[Full Changelog](https://github.com/jordonwow/omnibar/compare/v11.4...v11.5)

## Highlights

 - Add support for The Burning Crusade Classic
- Correctly detect enemies while mind controlled
- Fix detection of arena opponents
- BCC: Add hunter and warlock pet spells
- Add a `General` spell category 

## Commits

jordon (12):

- reset position if frame anchor does not exist
- fix custom spells and add a `General` category (#58)
- use `softMax` to allow cooldowns longer than 600s to be set
- bcc: add default spells
- fix `As Enemies Appear` for arena targets
- assume Guardian's Favor and decrease Blessing of Protection by 120s
- add cooldown reductions from talents and gear
- bcc: add hunter and warlock pet spells
- fix detection of arena opponents
- allow for a `decrease` key to reduce the cooldown duration
- cache functions and refactor
- correctly detect enemies when mind controlled

