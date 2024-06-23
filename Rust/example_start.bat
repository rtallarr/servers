::	"Check for updates"
::	"App versions: +appupdate 258550 -beta staging | +app_update 258550 -beta prerelease"
echo off
::start
::C:\steamcmd\steamcmd.exe +login anonymous +force_install_dir c:\rust_server\ +app_update 258550 +quit
::	"Launch server ------------------------------------------------------------------------------------"
::	"Server levels: Procedural Map | Barren | HapisIsland | SavasIsland | SavasIsland_koth"
echo off
:start
RustDedicated.exe -batchmode ^
+server.level "Procedural Map" ^
+server.maxplayers 10 ^
+server.worldsize 1650 ^
+server.seed 1562297183 ^
+server.hostname "Un nombre" ^
+server.description "una descripcion" ^
+server.identity "friends" ^
+server.port 28015 ^
+rcon.port 28016 ^
+rcon.password admin ^
+rcon.web 1 ^
+craft.instant True ^
+fps.limit 120 ^
+env.time 12 ^
goto start