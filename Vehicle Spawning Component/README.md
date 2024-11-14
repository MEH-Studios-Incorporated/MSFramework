# Vehicle Spawning Component
This module allows you to create different spawning platforms for vehicles using **MS-Chassis** or **A-Chassis** components.
> Disclaimer: **MS-Chassis** is a modified version of **A-Chassis**, originally developed by Inspare.

## Instructions:
In order for this module to work, you need to follow the following steps:
- Ensure that the vehicles are using the supported chassis types,
- Place all the vehicles in the [Vehicles](ReplicatedStorage/Vehicles) folder, while respecting the following folder scheme:
    > Manufacturer -> Package -> Vehicle

    > As an example, we have included the Delivery Vehicle from MS:RF.
- Place the GUI Interface in the [Assets](ReplicatedStorage/Assets) folder of [ReplicatedStorage](ReplicatedStorage),
- Inside [ReplicatedStorage](ReplicatedStorage), place the RemoteEvent structure [TriggerVehicleSpawnGUI](ReplicatedStorage/Assets/TriggerVehicleSpawnGUI),
- Inside of [StarterPlayerScripts](StarterPlayer/StarterPlayerScripts/), create a new **LocalScript**, with the code that can be found in the file [TriggerVehicleSpawn.lua](StarterPlayer/StarterPlayerScripts/TriggerVehicleSpawn.lua)
- Inside of [ServerScriptService](ServerScriptService), create 2 ServerScripts, namely [PackageManager.lua](ServerScriptService/PackageManager.lua) and [VehicleSpawnServer.lua](ServerScriptService/VehicleSpawnServer.lua),
- Inside of [Workspace](Workspace), create a folder named **Vehicles**,
- Inside of [Workspace](Workspace), create one or multiple spawning platform from the template [VehicleSpawner1.rbxm](Workspace/VehicleSpawner1.rbxm).
> Note: The Vehicle Spawners should follow the following naming scheme: "VehicleSpawner" + i, where i is the index of the spawner.

## License and Usage
All of the **MEH Studios MSFramework** componets are licensed, released under the **MEH Studios Incorporated** Copyright Act of 2020. Any redistribution of this software is prohibited and will be sanctioned by law.
Fair use is allowed, as long as the usage of this module is mentioned in a Credits section or similar.

## Afterword
This configuration ensures that the component works as intended. Any change to the path of the files and/or renaming the files will most definitely break this module.
All of the code and models in this module are directly extracted from **MEH Studios Research Facility**, if there are some dependencies that were not included in this module, please create a new issue on GitHub.