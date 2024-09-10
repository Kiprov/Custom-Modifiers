# Custom Doors Modifiers Documentation

## Needed Executor Functions
### `require` **- Needed to require and actually make changes to modulescripts.**
### `queue_on_teleport` **- Needed To Use Modifiers In-Game.**
### `hookmetamethod` **- Needed To Create Elevators.**
### `getsenv` **- Needed To Reload Modifiers.**
### `getconnections` **- Needed To Make Caption Messages.**

## Loadstring / Library
```lua
local CustomModifiers = loadstring(game:HttpGet(''))()
```

## Checks

### `CustomModifiers:ModifierExists(Modifier)`
#### Checks if a Modifier exists or not.
```lua
if CustomModifiers:ModifierExists("Example") then
	print("Exists!")
else
	print("Doesn't Exist!")
end
```
- **`Modifier`**: Returns true if modifier exists.

### `CustomModifiers:CategoryExists(Category)`
#### Checks if a Category exists or not.
```lua
if CustomModifiers:CategoryExists("Example Category") then
	print("Exists!")
else
	print("Doesn't Exist!")
end
```
- **`Category`**: Returns true if category exists.

### `CustomModifiers:FloorExists(Floor)`
#### Checks if a Floor exists or not.
```lua
if CustomModifiers:FloorExists("Example Floor") then
	print("Exists!")
else
	print("Doesn't Exist!")
end
```
- **`Floor`**: Returns true if floor exists.

### Get Values
#### Gets how many Modifiers exist.
```lua
print(CustomModifiers:GetModifierCount())
```
#### Gets how many Categories exist.
```lua
print(CustomModifiers:GetCategoryCount())
```
#### Gets how many Floors exist.
```lua
print(CustomModifiers:GetFloorCount())
```
#### Gets the currently selected floor.
```lua
print(CustomModifiers:GetCurrentFloor())
```

## Functions

### `CustomModifiers:ToggleConnotations(Force)`
#### Toggle if Connotations should be on or not.
```lua
CustomModifiers:ToggleConnotations(true)
```
- **`Force`**: (Optional) If `true`, toggles on helpful messages.

### `CustomModifiers:Connotation(Text)`
#### Creates a Connotation message, `CustomModifiers:ToggleConnotations()` has to be on.
```lua
CustomModifiers:Connotation("Example Connotation")
```
- **`Text`**: The connotation text that should be outputted.

### `CustomModifiers:Caption(Text)`
#### Creates a Caption message.
```lua
CustomModifiers:Caption("Example Caption")
```
- **`Text`**: The connotation text that should be outputted.

### `CustomModifiers:EnableFloor(Floor, Status)`
#### Enables / Disabled any floor from having any modifiers.
```lua
CustomModifiers:EnableFloor("Mines", true)
```
- **`Text`**: The connotation text that should be outputted.

### `CustomModifiers:UpdateFloorStuff()`
#### Resets all of the Modifiers and Categories and sets it to the ones set for that specific floor.
```lua
CustomModifiers:UpdateFloorStuff()
```

### `CustomModifiers:ReloadModifiers(FloorsAhead)`
#### Reloads all the stuff for the selected floor, with `FloorsAhead` you can choose how many floors behind or ahead it should update to.
```lua
CustomModifiers:ReloadModifiers()
```
- **`FloorsAhead`**: (Optional) `1` to go one floor ahead, `-1` to go one floor behind.

### `CustomModifiers:DeleteModifier(individualModifier, allModifiers)`
#### Deletes Every modifier or Picked modifier.
```lua
CustomModifiers:DeleteModifier("Example", true)
```
- **`individualModifier`**: Specific modifier to delete.
- **`allModifiers`**: (Optional) If `true`, deletes all modifiers.

### `CustomModifiers:DeleteCategory(individualCategory, allCategories)`
#### Deletes Every Category or Picked Category.
```lua
CustomModifiers:DeleteCategory("Example Category", true)
```
- **`individualCategory`**: Specific category to delete.
- **`allCategories`**: (Optional) If `true`, deletes all categories.

### `CustomModifiers:DeleteFloor(individualFloor)`
#### Deletes Every floor or Picked Floor.
```lua
CustomModifiers:DeleteFloor("Example Floor")
```
- **`individualFloor`**: Specific floor to delete.

### `CustomModifiers:RestoreModifier(individualModifier, allModifiers)`
#### Restores any deleted Modifier.
```lua
CustomModifiers:RestoreModifier("Example", true)
```
- **`individualModifier`**: Specific modifier to restore.
- **`allModifiers`**: (Optional) If `true`, restores all modifiers.

### `CustomModifiers:RestoreCategory(individualCategory, allCategories)`
#### Restores any deleted Category.
```lua
CustomModifiers:RestoreCategory("Example Category", true)
```
- **`individualCategory`**: Specific category to restore.
- **`allCategories`**: (Optional) If `true`, restores all categories.

### `CustomModifiers:RestoreFloor(individualFloor)`
#### Restores any deleted Floor.
```lua
CustomModifiers:RestoreFloor("Example Floor")
```
- **`individualFloor`**: Specific floor to restore.

## Create Modifier

### `CustomModifiers:CreateModifier(params)`
#### Creates an Modifier.
```lua
CustomModifiers:CreateModifier({
	Title = "Example",
	Desc = "This is an example custom modifier!",
	Color = Color3.fromRGB(255, 222, 189),
	Category = "Example Category",
	Sort = -2,
	Merge = nil,
	Bonus = 9999,
	Solo = true,
	Penalties = {
		NoRift = true, 
		NoProgress = true
	},
	Unlock = "Join",
	Activation = [[
		print("Custom Code Logic In Here!")
	]]
})
```
- **`Title`**: Name of the modifier.
- **`Desc`**: Description of the modifier.
- **`Color`**: Modifier color.
- **`Category`**: Associated category.
- **`Sort`**: Sorting order (lower means higher priority).
- **`Merge`**: Merged group setting (Optional).
- **`Bonus`**: Knob value.
- **`Solo`**: If true, none other modifier can be selected.
- **`Penalties`**: Table of penalties. ↓↓↓
	- **`NoRift`**: If true, prevents Rift.
	- **`NoProgress`**: If true, no progress allowed.
- **`Unlock`**: Achievement required to unlock.
- **`Activation`**: Custom code to execute when the modifier is activated.

## Create Category

### `CustomModifiers:CreateCategory(params)`
#### Creates an Category.
```lua
CustomModifiers:CreateCategory({
	Title = "Example Category",
	Sort = -1,
	Floor = "Example Floor",
	Color = Color3.fromRGB(255, 222, 189)
})
```
- **`Title`**: Name of the category.
- **`Sort`**: Sorting order (lower means higher priority).
- **`Floor`**: Floor to put the category on.
- **`Color`**: Category color.

## Create Floor

### `CustomModifiers:CreateFloor(params)`
#### Creates an Floor.
```lua
CustomModifiers:CreateFloor({
	Title = "Example Floor",
	Destination = "Hotel",
	Image = "rbxassetid://18992618548",
	Font = Enum.Font.Oswald,
	FontColor = Color3.fromRGB(255, 222, 189),
	Theme = Color3.fromRGB(252, 219, 187),
	Sort = 1,
	Requires = {
		NeedAll = false,
		Achievements = {
			"Join",
			"SpecialQATester"
		}
	},
	Moddable = false
})
```
- **`Title`**: Name of the floor.
- **`Destination`**: Which floor you want to be transported to (Hotel, Backdoor, Mines).
- **`Image`**: Image Asset ID for the floor image.
- **`Font`**: Font used for the floor text.
- **`FontColor`**: Font color that should be used for the title.
- **`Theme`**: Color used for the UIStroke and Arrows.
- **`Sort`**: Sorting order (higher means lower priority).
- **`Requires`**: Requirements to access the floor. ↓↓↓
	- **`NeedAll`**: If true, all achievements are required.
	- **`Achievements`**: List of achievements required.
- **`Moddable`**: If true, floor can have modifiers.

# Other

## Default Doors Colors
```lua
{
	Default = Color3.fromRGB(255, 222, 189), 
	Player = Color3.fromRGB(255, 222, 189), 
	Helpful1 = Color3.fromRGB(249, 255, 184), 
	Helpful2 = Color3.fromRGB(192, 255, 169), 
	Helpful3 = Color3.fromRGB(171, 255, 213), 
	Helpful4 = Color3.fromRGB(170, 230, 255), 
	Danger0 = Color3.fromRGB(255, 187, 147), 
	Danger1 = Color3.fromRGB(255, 160, 147), 
	Danger2 = Color3.fromRGB(255, 146, 148), 
	Danger3 = Color3.fromRGB(255, 115, 134), 
	Danger4 = Color3.fromRGB(255, 86, 111), 
	Danger5 = Color3.fromRGB(255, 75, 78), 
	Danger6 = Color3.fromRGB(255, 39, 43), 
	Hide = Color3.fromRGB(255, 160, 143), 
	Seek = Color3.fromRGB(255, 108, 108), 
	Figure = Color3.fromRGB(235, 132, 114), 
	Dupe = Color3.fromRGB(255, 160, 184), 
	Rush = Color3.fromRGB(191, 187, 212), 
	Ambush = Color3.fromRGB(171, 241, 194), 
	Eyes = Color3.fromRGB(199, 188, 255), 
	Screech = Color3.fromRGB(189, 196, 211), 
	Timothy = Color3.fromRGB(157, 179, 148), 
	Snare = Color3.fromRGB(165, 179, 113), 
	Halt = Color3.fromRGB(80, 255, 217), 
	Curious = Color3.fromRGB(255, 220, 79), 
	White = Color3.fromRGB(255, 255, 255), 
	Pink = Color3.fromRGB(255, 134, 217)
}
```

## Default Doors Categories
```lua
{
	"Highlight",
	"Random",
	"Normal",
	"Player",
	"Entity"
}
```

## Default Doors Achievements
```lua
{
	"Join",
	"JoinAgain",
	"JoinLSplash",
	"SpecialQATester",
	"TowerHeroesGoblino",
	"TowerHeroesHard",
	"TowerHeroesHotel",
	"TowerHeroesVoid",
	"PlayFriend",
	"PlayerBetrayal",
	"Revive",
	"UseCrucifix",
	"DeathAmt1",
	"DeathAmt10",
	"DeathAmt100",
	"SurviveRush",
	"SurviveSeek",
	"SurviveScreech",
	"SurviveDupe",
	"SurviveEyes",
	"SurviveHide",
	"SurviveAmbush",
	"SurviveHalt",
	"CrucifixRush",
	"CrucifixAmbush",
	"CrucifixSeek",
	"CrucifixFigure",
	"CrucifixEyes",
	"CrucifixScreech",
	"CrucifixHalt",
	"CrucifixDupe",
	"SurviveFigureLibrary",
	"JeffShop",
	"JeffTipFull",
	"UseHerbGreen",
	"BreakerSpeedrun",
	"SurviveWithoutHiding",
	"EncounterSpider",
	"EncounterVoid",
	"EncounterMobble",
	"EncounterGlitch",
	"UseRift",
	"EscapeHotel",
	"EscapeHotelMod1",
	"EscapeHotelMod2",
	"EnterRooms",
	"EscapeRooms",
	"EscapeRooms1000",
	"EnterBackdoor",
	"EscapeBackdoor",
	"EscapeBackdoorHunt"
}
```

## Default Doors Modifiers
```lua
{
	"Voicelines",
	"SuperHardMode",
	"RetroMode",
	"Chaos1",
	"Chaos2",
	"Chaos3",
	"LightsNeverFlicker",
	"LightsLess",
	"LightsLeast",
	"LightsOut",
	"LightsMore",
	"GoldSpawnMore",
	"GoldSpawnLess",
	"GoldSpawnNone",
	"ItemSpawnMore",
	"ItemSpawnLess",
	"ItemSpawnNone",
	"ItemDurabilityLess",
	"NoGuidingLight",
	"NoKeySound",
	"Slippery",
	"Fog",
	"LockMore",
	"LockMost",
	"LeastHidingSpots",
	"Jammin",
	"PlayerHealthLess",
	"PlayerHealthLeast",
	"PlayerDamageMore",
	"PlayerDamageMost",
	"PlayerFast",
	"PlayerFaster",
	"PlayerFastest",
	"PlayerCrouchSlow",
	"PlayerSlow",
	"PlayerSlowHealth",
	"EntitiesLess",
	"EntitiesMore",
	"EntitiesMost",
	"EntitiesMoster",
	"RushMore",
	"RushFaster",
	"RushQuiet",
	"DupeMore",
	"DupeMost",
	"ScreechLight",
	"ScreechFast",
	"ScreechFaster",
	"TimothyLess",
	"TimothyMore",
	"EyesMore",
	"EyesMost",
	"EyesTwice",
	"EyesFour",
	"FigureFaster",
	"SeekFaster",
	"AmbushMore",
	"AmbushAlways",
	"AmbushFaster"
}
```
