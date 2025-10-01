Outlaw Gym Shop
================

Thank you for using **Outlaw Gym Shop**! If you need support or have questions, please open a ticket on our community Discord server.

Installation (Standalone)
-------------------------
1. Copy the `Outlaw_GymShop` folder into your `resources` directory.
2. Configure the options in `config.lua` to suit your server.
3. Import the SQL found in `sql_STANDALONE-QBCORE.sql` into your database.
4. If you use `oxmysql`, uncomment the relevant line in `fxmanifest.lua`. If you prefer `mysql-async`, keep the default include.
5. Add `ensure Outlaw_GymShop` to your `server.cfg`.

Installation (QBCore)
---------------------
1. Copy the `Outlaw_GymShop` folder into your `resources` directory.
2. Open `config.lua` and set `Config.Framework = "qbcore"`.
3. Adjust configuration values to match your server.
4. Import `sql_STANDALONE-QBCORE.sql` into your database.
5. Uncomment the `@oxmysql/lib/MySQL.lua` line in `fxmanifest.lua` if required by your setup.
6. Add the supplement items (protein, creatine, preworkout, testosterone) to your shared items list.
7. Add `ensure Outlaw_GymShop` to your `server.cfg`.

Installation (ESX)
------------------
1. Copy the `Outlaw_GymShop` folder into your `resources` directory.
2. Open `config.lua` and set `Config.Framework = "esx"`.
3. Adjust configuration values to match your server.
4. Import `sql_ESX.sql` into your database.
5. Uncomment the `@mysql-async/lib/MySQL.lua` line in `fxmanifest.lua` if you use `mysql-async`.
6. Add `ensure Outlaw_GymShop` to your `server.cfg`.

Admin Commands
--------------
- `/addgymstats <id> <stat> <amount>`
- `/removegymstats <id> <stat> <amount>`
- `/statsgymclear <id>`

Exports
-------
**Server:**
- `exports["outlaw_gym"]:SavePlayer(source)`
- `exports["outlaw_gym"]:AddStats(source, stat, value)`
- `exports["outlaw_gym"]:RemoveStats(source, stat, value)`
- `exports["outlaw_gym"]:UpdateStats(source, stat, value)`
- `exports["outlaw_gym"]:GetStats(source, stat)`
- `exports["outlaw_gym"]:GetAllStats(source)`

**Client:**
- `exports["outlaw_gym"]:GetStats(stat)`
- `exports["outlaw_gym"]:GetAllStats()`
- `exports["outlaw_gym"]:IsPlayerExercise()`
- `exports["outlaw_gym"]:IsPlayerShowering()`

Anti-Cheat Props
----------------
Whitelist these props if your anti-cheat restricts spawned entities:
`prop_barbell_10kg`, `prop_barbell_100kg`, `prop_barbell_80kg`, `prop_barbell_60kg`, `prop_barbell_50kg`, `prop_barbell_40kg`, `prop_barbell_30kg`, `prop_barbell_20kg`, `prop_curl_bar_01`, `prop_barbell_01`, `prop_ld_flow_bottle`, `prop_cs_pills`, `p_syringe_01_s`.

License
-------
This resource is provided as-is. Redistribution is prohibited without written permission.
