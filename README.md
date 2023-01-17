# STCH Pack for BeamMP <!-- omit in toc -->

A fork of many GitHub plugins for BeamMP with a touch of me and easy installation

## Basic Setup <!-- omit in toc -->

This guide will walk through the most basic process of installing **STCH Pack** onto a **BeamMP Server** and setting yourself as the **owner**

This assumes you have successfully set up your own **BeamMP Server**, there is a guide **[here](https://wiki.beammp.com/en/home/server-installation)**

- **Download** `/Resources` folder and `*.exe` files of this Repository
- With the **BeamMP Server** ***NOT*** running:
  - Extracted `/Resources` on your **BeamMP Server** folder
  - Add `BeamMP.Server.Management.Tool.v*.exe` to your **BeamMP Server** folder
- **Launch** the server with `BeamMP.Server.Management.Tool.v*.exe`
- In the **server console**, run the command `ce setgroup yourName owner`
  - Replacing `yourName` with your BeamMP username
- Welcome on your **BeamMP Server**!

## Menu <!-- omit in toc -->

- [CobaltEssentials by prestonelam2003](#cobaltessentials-by-prestonelam2003)
  - [Description](#description)
- [CobaltEssentialsInterface by StanleyDudek](#cobaltessentialsinterface-by-stanleydudek)
  - [Description](#description-1)
  - [Preview](#preview)
- [Server Management by SteliosLL](#server-management-by-steliosll)
  - [Description](#description-2)
  - [Preview](#preview-1)
- [ChangeLogs](#changelogs)
  - [STCH Repository](#stch-repository)
    - [**v00.0.4 - Update CEI - 2023-01-17**](#v0004---update-cei---2023-01-17)
    - [**v00.0.3 - Server Management Update - 2023-01-14**](#v0003---server-management-update---2023-01-14)
    - [**v00.0.2 - Update sources and SM - 2023-01-14**](#v0002---update-sources-and-sm---2023-01-14)
    - [**v00.0.1 - First push - 2023-01-14**](#v0001---first-push---2023-01-14)
  - [Cobalt Essentials](#cobalt-essentials)
    - [**v1.7.4**](#v174)
  - [Cobalt Essentials Interface](#cobalt-essentials-interface)
    - [**v0.7.6**](#v076)
  - [Server Management](#server-management)
    - [**v2.2**](#v22)

# [CobaltEssentials](https://github.com/prestonelam2003/CobaltEssentials) by prestonelam2003

CobaltEssentials for BeamMP Servers

Copyright (C) 2020, Preston Elam (CobaltTetra) ALL RIGHTS RESERVED

## Description

- A simple plugin for BeamMP servers that adds a few useful commands, features, permissions, and more!

# [CobaltEssentialsInterface](https://github.com/StanleyDudek/CobaltEssentialsInterface) by StanleyDudek

A Dear ImGui based interface for BeamMP Servers running CobaltEssentials

## Description

- Owner / Administrator / Moderator / Default interfaces based on groups!
- Manipulation of player permissions, vehicle and parts permissions, CE and base server configuration, sun control and sync, weather control and sync, simulation speed control and sync, gravity control and sync, custom temperature curve control and sync, teleportation control and timeout, nametag whitelisting and timer based nametag hiding, server-wide and per-vehicle remote start/stop and freeze/unfreeze.
- voteKick, Kick, Ban, TempBan, Mute, Whitelist
- Handy `Join Race` and `Race Countdown` buttons to freeze all players in place, notify and countdown, and then release everyone for perfect race starts!
- And more, all via the interface!

## Preview

![image](https://user-images.githubusercontent.com/49531350/198840124-8ed08ef6-7193-42ea-a3b5-54b3adcc4957.png)

# [Server Management](https://github.com/SteliosLL/BeamMP-Server-Management-Tool) by SteliosLL

## Description

This small program will help you edit your server’s settings quick and easy, like the server name, description, port, auth key etc. One of the biggest features is that it makes changing maps very quick and easy. Simply select the one you like and save the settings! It also supports custom maps! You aren’t limited to the default beamng maps. It also has other useful features like mod and plugin management, server start-stop, restart timer etc.

## Preview

![image](https://user-images.githubusercontent.com/55713334/162746418-5a411f6a-f3f9-4835-96b4-d7e357c73633.png)

# ChangeLogs

## STCH Repository

### **v00.0.4 - Update CEI - 2023-01-17**

- [x] Update CEI 0.7.6

### **v00.0.3 - Server Management Update - 2023-01-14**

- [x] Added Server Management 2.2
- Delete Server Management sources files
  - i don't have the skiil to edit this software

### **v00.0.2 - Update sources and SM - 2023-01-14**

- [x] Added Server Management 2.1.1
- Rework files structure and add Sources folder
- Little update of Readme

### **v00.0.1 - First push - 2023-01-14**

- [x] Added CE 1.7.4
- [x] Added CEI 0.7.5-hotfix
- Rework files structure
- Add Changelog to Readme

## Cobalt Essentials

### **v1.7.4**

- No changelogs found

### **v1.7.3**<!-- omit in toc -->

- Fix luasocket still being a dependency

TODO:
Make vehicles objects

### **v1.7.2**<!-- omit in toc -->

- Overhauled extension system, now featuring autoload

### **v1.7.1**<!-- omit in toc -->

- Removed Quake RCON from the base plugin (moved to an extension)

### **v1.7.0**<!-- omit in toc -->

- Moved to 3.x server syntax (MP.*)
- Added event based DB connector, no longer relying on luasocket (though it is still a legacy option)
- Fixed Cobalt Essentials relying on the folder name being "CobaltEssentials"
- Rework of command system
- Added support for direct console command input

Now using FS.CopyFile instead of LTN12 function
Don't load luasocket if the DB doesn't need it
Made sure the players table is easy to iterate over
Added extensions.* interface as a secondary option to access extensions

### **v1.6.0**<!-- omit in toc -->

- CobaltDB can now auto-detect errors and will repair itself accordingly.
- Fixed CobaltDB "disconnect" that many server/network owners were reporting.
- Changed out the Lua DLLs to support the new server version.
- Added psudeo random number generator, it currently operates off a linear congruential generator, though in the future i want to add some entropy by stacking multiple generators under one master generator.
- Fixed BeamMPconfig bug that may or may not be fixed and may or may not have existed on the live build
- Added the ability to set new log types to be used with CElog(output,heading) with setLogType(heading,headingColor,conditionFunc,stringColor) the colors use 3 and 4 bit ANSI color codes, the conditionFunc is ran when the log type is executed, if it returns false, the message will not be displayed.
- You may also get the aforementioned log types with getLogTypes()
- Implemented on vehicle reset event support.
- Temporarily removed date and time from CElog() since the new server version has it, negotiating a rawPrint() function as we speak.
- Fix for onInit() requirement in extensions from @Deer Boi
- Implemented new connected command which will list players based on their connectStage
- Fix for a dumb bug with beamMPconfig metatable/object in lua which was causing problems with certain extensions and the setcfg command.
- Added support for onServerStop() in extensions, a global event will now also be called, though most forigen plugins likely won't be able to react in time.
- OnChatMessage event now passes in the correct player object (Thanks to @Deer Boi)
- Cobalt Essentials now supports the TOML config file used by BeamMP servers
- Began Vehicle Rework

### **v1.5.3**<!-- omit in toc -->

- Reworked how groups function in code
- Added getGroup method to players
- Implemented support for using a playerID in a command by using {<ID>} instead of the username
- Overhauled Console output with new `CElog()` function.
- Added show debug option to config
- Added the ability to color text in the console, assuming the console you are using is compliant with ANSI escape sequences.
- Applied the aforementioned colors in a bunch of places.
- Fixed bug that caused json files to be corrupted upon shrinking
- Added more error-trapping for setgroup and setperm
- Implemented security measures to setgroup and setperm to disallow them from granting a permission level higher than the sender's
- Groups may now be removed from a player by using setgroup and setting the group to "none"
- Moved the default ban reason off default and to guest, where it was supposed to be.

### **v1.5.2**<!-- omit in toc -->

- Extensions now have a version
- Reworked command arguments
- Implemented optional command arguments
- Added the ability to use a + symbol to represent a space in a player's name when using commands.
- Fixed false values not saving to json configs.

### **v1.5.1**<!-- omit in toc -->

- Fixed setperm because im a dumb idiot
- Hotfix to mute/chat, did not fix underlying problem.
Credit to @Dudekahedron for help with both of these problems.

### **v1.5.0**<!-- omit in toc -->

- Fully implemented onPlayerAuth event
- Repurposed the onPlayerConnecting event, which now only serves to bind an ID to an authenticated player and grab values that are only availible once a player has been assigned an ID.
- Renamed onPlayerFirstConnecting to onPlayerFirstAuth
- Renamed player.permissions.CobaltPlrMgmt_database to player.permissions.CobaltPlayerMgnr_database for consistency
- Replaced player.permissons.playerID with player.permissons.CobaltPlayerMgnr_playerObject
- Replaced getPlayerByID with getPlayerByName
- Implemented permission groups
  - in playerPermissions.json, create an entry group:<groupName> under it, permissons as per usual.
  - players can be given the key 'group', followed by string groupName, to be assigned all permisssons of a certain group.
- Turned default, and inactive into permission groups under the new system.
- Implemented new permission group for guests, aptly named "guest"
- Implemented setgroup command
- Implemented whitelist command, for controlling the whitelist.
- Moved commands that refer to players from their playerID to their name.
- Implemented unban command
- Fixed permisson problems caused by exceeding the maxActivePlayers cap (spectators)
- Fixed status being broken by players not in gamemode 0 due to a typo.
- Actually Fixed ban this time.
- Fixed mutes because everything was broken.

**More Changelog [here](https://github.com/prestonelam2003/CobaltEssentials/blob/master/Cobalt%20Essentials%20Changelogs.txt)**

## Cobalt Essentials Interface

### **v0.7.6**

Server:

- Send descriptions only once to save on data
- Try to process data on the safest joining event
- Implement a CEI sync request from the client

Client:

- Work with descriptions now being provided only once as necessary
- Expand reset blocking coverage
- Capture a map's default environment so reverting is true to the map's defaults
- Disabled database filtering which severely degraded performance
- Add "add/remove to/from race" button to players in Players tab, so players can be added/removed from race countdown by players with mod and up permissions or Race level UI permissions

### **v0.7.5 - hotfix**<!-- omit in toc -->

- Fixed an oversight which led to default players not having UI.
- Actually fixed the server side CPU usage problem.
- And I improved the client side framerate drop when dealing with large numbers of players in the database tab (this still needs more improvements)

### **v0.7.5**<!-- omit in toc -->

- I got over covid, here's an update.
- No more server high CPU usage, sorry about that.
- I changed how the race countdown button works a little bit, after countdowns complete it resets all players join race status.

### **v0.7.3**<!-- omit in toc -->

- stop-gap for database woes (symptom: flashing CEI window in game, lag spikes ~1/sec)
- I've been sick lately and when I recover I hope to get a lot more done on CEI

### **v0.7.2** - hotfix<!-- omit in toc -->

- Fixes the vehiclePerms interface section breaking when a vehicle entry is deleted
- A small fix for reset exempted players not receiving their exemption
- I forgot that guests do not have beammp forum ids
- Fixed a UI bug in database permissions display, as well as player groups not being set to database, and corrected pretty severe input bugs

### **v0.7.2**<!-- omit in toc -->

- This release enables permission control to interface elements based on a UI Level.
- Custom and stock CE groups can have various UI levels allowed.
- Also added Reset control exemptions for players.
- Other stuff, please ask me if you have any questions.

### **v0.7.1**<!-- omit in toc -->

- Small update that adds new Sun and Weather settings. Maps with two cloud layers can now have both cloud layers adjusted. Shadow resolution can be set. The moon can now be adjusted:
- And other sun/weather related goodies!

### **v0.7.0**<!-- omit in toc -->

BeamMP Server version 3.1.0 is PUBLIC, so here is new CEI to go with it!

A LOT has changed under the hood, but the overall feel will remain the same.

- Most notable improvements are New Addition of database, so you may work with all players that have ever been on your server.
- Environment sync has been overhauled, this includes sun, weather, gravity, temperature, with clearer info for you to know if you're controlling this for everyone, and allowing them perhaps to not be locked out of making changes on their end when you turn environment sync off.
- Teleportation timeout and sim speed control have been moved to an extras section in config.
- New, Global Restrictions sections that houses reset blocking for now and will have more input filtering added later.
- New ability to add custom permissions to a player, this is basically placeholder for now but will be useful in the future.
- Overhauled Race inclusion and countdown.
- ADDED VOTEKICK this operates on a 2/3s threshold

I'm publishing this in a hurry, and without a beta tag but with a pre-release tag, so please do report issues or bugs.

### **v0.5.0**<!-- omit in toc -->

- Improve time play sync for slower computers
- Maintain time play when no connected players
- Fix temperature curve pickup on connect
- Alphabetize the vehicle perms list
- fix breaking vehicles on 0.26

### **v0.4.5**<!-- omit in toc -->

- This hotfix removes the previously included Cobalt Essentials patches
- Improves environment logging (should not crash due to environment,json)
- fixes partLevels permissions not displaying
- Fix for per-player teleport blocking

### **v0.4.0**<!-- omit in toc -->

- Added nametag control
- Added opt-in for Race Countdown
- Added per-user teleport control (allow / revoke)
- Added hacky workaround to prevent client changes to time of day
- Added setting to change default CEI show/hidden state for new players

### **v0.3.5**<!-- omit in toc -->

- This fixes a bug with environment not affecting players with CEI hidden

### **v0.3.0**<!-- omit in toc -->

This release adds level based permissions for vehicle spawns (long list is filterable), as well as level based permissions for vehicle parts, adds temperature curve setting, fixes a few config settings, rearranges a few items, environment moved to a new tab, expanded teleport to a to/from method, and other misc. small fixes. May be last update before optimization.

### **v0.2.0**<!-- omit in toc -->

This release improves time play reliability, has some small UI corrections, fixes time play sync for players joining after time play has started, fixes the environment reset buttons, rearranges a couple buttons and adds some color, and introduces a teleport timeout setting in Client>Simulation.

### **v0.0.1**<!-- omit in toc -->

This is the initial GitHub release of this extension.

**More Changelog [here](https://github.com/StanleyDudek/CobaltEssentialsInterface/releases)**

## Server Management

### **v2.2**

- Added Johnson Valley and old Gridmap maps

### **v2.1.1**<!-- omit in toc -->

- Implemented all DLLs into the main executable. Now all you have to do is copy the executable into the BeamMP folder.
- Updated the Help-Information window

### **v2.0.1**<!-- omit in toc -->

- Fixed an issue were if you had more than 10 players limit or
more than 5 cars allowed per player in the config file, it would throw an error.

### **v2.0.0**<!-- omit in toc -->

- Custom map support
- Mod Management
- Plugin Management
- The map selection window has been improved
- Start-Stop server
- Auto restart timer
- Auto restart when config changes are detected
- Log file and live log window
- Abilitiy to use custom server executable
- Button to quickly open mods, maps, plugins folders
- TOML configuration file support
- Removed ability to view larger map previews when you right click on maps

### **v1.0.0**<!-- omit in toc -->

- BeamMP Server Tool released

**More Changelog [here](https://github.com/SteliosLL/BeamMP-Server-Management-Tool/releases)**