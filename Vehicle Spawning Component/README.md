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
- Inside [ReplicatedStorage](ReplicatedStorage), place the RemoteEvent structure [TriggerVehicleSpawnGUI](ReplicatedStorage/TriggerVehicleSpawnGUI),
- Inside of [StarterPlayerScripts](StarterPlayer/StarterPlayerScripts/), create a new **LocalScript**, with the code that can be found in the file [TriggerVehicleSpawn.lua](StarterPlayer/StarterPlayerScripts/TriggerVehicleSpawn.lua)