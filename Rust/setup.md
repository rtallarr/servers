# Vanilla server setup

1. Create a folder for the server.
2. Create a `start.bat` file inside de server folder.
3. Run `start.bat` until all files are downloaded
> **_NOTE:_** It can also be installed via steamcmd [this way](#install-server-alternative).

# Installing oxide

1. Go to [umod](https://umod.org/games/rust) and download oxide.
2. Extract the `RustDedicated_Data` folder into the server folder (replace files).
3. Start the server. New folders should appear.
4. Install mods into the `oxide/plugins` folder.
> **_NOTE:_** Remeber to comment the line for updating the server in `start.bat` once installed or updated.


# Common mods

- [Better loot](https://umod.org/plugins/better-loot)
- [Blueprint manager](https://umod.org/plugins/blueprint-manager)
- [Workbench in building](https://umod.org/plugins/building-workbench)
- [Death notes](https://umod.org/plugins/death-notes)
- [Gather multiplier](https://umod.org/plugins/gather-manager)
- [Rust kits](https://umod.org/plugins/rust-kits)
  - [Image library](https://umod.org/plugins/image-library)
- [Instant craft](https://umod.org/plugins/instant-craft)
- [No notices](https://umod.org/plugins/no-give-notices)
- [Quick smelt](https://umod.org/plugins/quick-smelt)
- [Respawner](https://umod.org/plugins/random-respawner)
- [Skip night](https://umod.org/plugins/skip-night-vote)
- [Spawn minis](https://umod.org/plugins/spawn-heli)
- [Stack size](https://umod.org/plugins/stack-size-controller)

# Permissions

## Owner and moderators

You first need to get the user steamID. The easiest way to get it, is to log in to the server and then run the `users` command at the console. Then enter the command as follows:

```bash
ownerid 12345678901234567 AdminName
```

You can do the same for moderators using the `moderatorid` command.

## Mods permissions

Depending on the mods installed you should give some permissions to players and/or moderators.

Permissions are given with the following command:

```bash
oxide.grant <user or group> <name or steam id> <permission>
```

To revoke a permission use `oxide.revoke`


## Example list

```bash
o.grant group default
```

```bash
o.grant group default 
```

```bash
o.grant group default randomrespawner.use
```

```bash
o.grant group default quicksmelt.use
```

```bash
o.grant group default instantcraft.use
```

```bash
o.grant group default blueprintmanager.WorkbenchLvL1
```

```bash
o.grant group default buildingworkbench.use
```

```bash
o.grant group default spawnheli.minicopter.spawn
```

```bash
o.grant group default spawnheli.minicopter.fetch
```

```bash
o.grant group default spawnheli.minicopter.despawn
```

```bash
gather.rate dispenser * 10
```

```bash
dispenser.scale tree 10
```

```bash
dispenser.scale ore 10
```

```bash
dispenser.scale corpse 10
```

```bash
o.grant group default spawnheli.minicopter.nocooldown
```

# Other commands

- `o.version`  Checks oxide version. Useful to see if its installed correctly.
- `o.reload *`  Reloads all installed plugins.

### Install server - alternative

Run `steamcmd.exe` and execute the following commands one by one: 

```bash
force_install_dir "c:\rustserver\"
login anonymous
app_update 258550
quit
```