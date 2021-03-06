// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupMissionArrays.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

MainMissions =
[
	// Mission filename, weight
	["mission_ArmedDiversquad", 0.5],
	["mission_Coastal_Convoy", 0.5],
	["mission_Convoy", 0.5],
	["mission_HostileHeliFormation", 0.5],
	["mission_APC", 1.5],
	["mission_MBT", 1.5],
	["mission_LightArmVeh", 0.5],
	["mission_ArmedHeli", 2],
	["mission_ArmedJet", 0.5],
	["mission_CivHeli", 0.5]
];

SideMissions =
[
	["mission_HostileHelicopter", 0.5],
	["mission_MiniConvoy", 1],
	["mission_SunkenSupplies", 1],
	["mission_TownInvasion", 0.4],
	["mission_Outpost", 1],
	["mission_Truck", 1],
	["mission_GeoCache", 1],
	["mission_HostageRescue", 1]
];

MoneyMissions =
[
	["mission_MoneyShipment", 1],
	["mission_SunkenTreasure", 0.5],
	["mission_drugsRunners", 1],
	["mission_Roadblock", 1]
];

ExtraMissions =
[
	["mission_Sniper", 1],
	["mission_Smugglers", 1],
	["mission_HostileJetFormation", 0.5],
	["mission_HackLaptop", 1]
];

PatrolMissions =
[
	["mission_militaryPatrol", 1]
];

MissionSpawnMarkers = (allMapMarkers select {["Mission_", _x] call fn_startsWith}) apply {[_x, false]};
ForestMissionMarkers = (allMapMarkers select {["ForestMission_", _x] call fn_startsWith}) apply {[_x, false]};
SunkenMissionMarkers = (allMapMarkers select {["SunkenMission_", _x] call fn_startsWith}) apply {[_x, false]};

if !(ForestMissionMarkers isEqualTo []) then
{
	SideMissions append
	[
		["mission_AirWreck", 1],
		["mission_WepCache", 1]
	];
};

LandConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\landConvoysList.sqf") apply {[_x, false]};
CoastalConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\coastalConvoysList.sqf") apply {[_x, false]};
PatrolConvoyPaths = (call compile preprocessFileLineNumbers "mapConfig\convoys\patrolConvoysList.sqf") apply {[_x, false]};

MainMissions = [MainMissions, [["A3W_heliPatrolMissions", ["mission_Coastal_Convoy", "mission_HostileHeliFormation"]], ["A3W_underWaterMissions", ["mission_ArmedDiversquad"]]]] call removeDisabledMissions;
SideMissions = [SideMissions, [["A3W_heliPatrolMissions", ["mission_HostileHelicopter"]], ["A3W_underWaterMissions", ["mission_SunkenSupplies"]]]] call removeDisabledMissions;
MoneyMissions = [MoneyMissions, [["A3W_underWaterMissions", ["mission_SunkenTreasure"]]]] call removeDisabledMissions;
ExtraMissions = [ExtraMissions, [["A3W_heliPatrolMissions", ["mission_HostileJetFormation"]]]] call removeDisabledMissions;

{ _x set [2, false] } forEach MainMissions;
{ _x set [2, false] } forEach SideMissions;
{ _x set [2, false] } forEach MoneyMissions;
{ _x set [2, false] } forEach ExtraMissions;
{ _x set [2, false] } forEach PatrolMissions;
