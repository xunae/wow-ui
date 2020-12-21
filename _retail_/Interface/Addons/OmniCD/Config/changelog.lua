local E, L, C = select(2, ...):unpack()

C.changelog = [=[
v2.5.5
    Bug Fixes
        Custom spells without an Item ID will no longer cause an error.
        Running Test mode while disabled will no longer cause an error.
        Fixed an issue that caused multiple frames to be created for the same unit.

v2.5.4
    Trinkets no longer show correctly if your teammate is using version-2.2.3 for BFA.

    Bug Fixes
        Fixed an issue that caused the wrong profile to load on zone change.
        Guardian Druid: Berserk will correctly reduce Frenzied Regen's CD while it is active.
    Feature Updates
        Supported UIs: Interrupt/Raid bars are now usable in any group size.(beta)

v2.5.3
    Bug Fixes
        Fixed an issue that caused covenant data to be cleared from synced units.
        Fixed player spells in UIs with hidden player frames.

v2.5.2
    TL:DR
        Bug fixes.
        Added option to always show player's CD in the Interrupt/Raid bar.

    Bug Fixes
        Pandaren racial will correctly show for Horde factions.
        Party Bars will no longer anchor to hidden frames.
        Interrupt/Raid Bar will correctly show when the UI is toggled off and on.
        Status bar timers will retain it's color state when reloading addon.
        Fixed an issue that caused the wrong profile to load on entering LFG instances.
    Feature Updates
        General: Added option to always show player's CD in the Interrupt/Raid bar.
        Interrupt Bar: Removed finish animation and changed timer format.
        Outdoor/Scenario zones can now select which setting to use.
        Plexus (Grid) support added.
    Spell Updates
        Fixed Foryfying Brew CD for Brewmaster Monk.
        Removed Premonition from Disc Priest (PvP Talent).
    Localization Updates
        zhTW
    Known Issues
        Trinkets will not show if your group member is using ver 2.2.3. (no fix planned)

v2.5.1
    Bug Fixes
        General: 'Show Player' will correctly update on zone change.
        Spells: 'Clear All' will correctly clear all enabled spells instead of setting it back to default.
        Fixed an issue that caused cross-addon communication to fail.
    Icons
        All borders have been reverted back to grow inward.
        Default offset/padding values have changed accordingly.
    Localization Updates
        ruRU

v2.5.0
    TL;DR
        Shadowlands release update.
        New Interrupt and Raid-CD bars.
        Still lighweight with minimal CPU usage.

    Feature Updates
        Ex Bars: New Interrupt and Raid-CD bars with optional progress timers added.
        Highlights: Option to disable animation added.
        Spell Editor: Spell can be spec-default while being a talent for others.
        Spell Editor: Non-Class spells can now select any priority type.
        Option settings are now fully customizable per instance zone.
        Synchronizing CD reduction by spending resources is enabled for Rogues in Arenas only.
        All frames are now created on demand and recycled.
        Revamped spell detection for slight efficiency.
        Better handling of large outdoor raids where members are constantly changing.
        Removed all non-essential process in the background while not actively tracking CDs.
    Spell Updates
        Class abilities updated for Shadowlands. (700+ spells)
        New Covenant abilities added.
        New PvP/PvE Trinkets added.
    Cooldown Modifiers
        Class modifiers updated for Shadowlands.
        New Runeforge-Legendaries, Covenants, and Soulbind-Conduits added.
        Cooldown recovery-rate added for Heartstop Aura, Thundercharge, Blessing of Autumn. and Benevolent Fae.
        Chance to proc and free charge mechanics were excluded. Everything else has been implemented.
    Removed Features
        Icons: 'Relative Scale' option.
        Azerite, Essence, and Corruption effects.
    Known Issues (from Blizzard)
        Aspirant's Medallion used while under the effect of Thundercharge results in slower CD recovery when it ends.
        Aspirant's Medallion used while under the effect of Blessing of Autumn results in slower CD recovery when it ends.
        Thundercharge CD recovery rate doubling when casted on player. (temp fix applied)
        Shifting Power's CD reduction not applying to Alter time for Arcane Mage. (temp fix applied)


]=]
