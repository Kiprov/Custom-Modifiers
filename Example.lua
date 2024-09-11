-- Documentations At: https://github.com/iimateiYT/Custom-Modifiers/blob/main/README.md

local CustomModifiers = loadstring(game:HttpGet('https://raw.githubusercontent.com/iimateiYT/Custom-Modifiers/main/Source.lua'))() -- Load the Custom Modifiers module

CustomModifiers:ToggleConnotations(true) -- Helpful debug messages

CustomModifiers:CreateFloor({
	Title = "Example Floor", -- Floor name
	Destination = "Hotel", -- Destination of where the elevator should lead to (Hotel, Mines, Backdoor)
	Image = "rbxassetid://18992618548", -- Background image for the floor
	Font = Enum.Font.Oswald, -- Font text for the floor text
	FontColor = Color3.fromRGB(255, 222, 189), -- Font color for the floor text
	Theme = Color3.fromRGB(252, 219, 187), -- The stroke and arrow color at the floor picker
	Sort = 1, -- Sorting order for the floor
	Requires = {
		NeedAll = false, -- If it needs all the achievements below
		Achievements = { -- Achievements, found in the documentations
			"Join", 
			"SpecialQATester"
		}
	},
	Moddable = true -- Makes modifiers visible for the floor
})

CustomModifiers:CreateCategory({
	Title = "Example Category", -- Category name
	Sort = 0, -- Category sort
	Floor = "Example Floor", -- Category floor
	Color = Color3.fromRGB(255, 222, 189) -- Category color
})

CustomModifiers:CreateModifier({
	Title = "Example Modifier", -- Modifier name
	Desc = "This is an example custom modifier!", -- Modifier description
	Color = Color3.fromRGB(255, 222, 189), -- Modifier color
	Category = "Example Category", -- Modifier category (handles which floor the modifier should be under)
	Sort = 1, -- Modifier sort
	Merge = "Combine", -- Combines two or more modifiers together so you can only select one in the list
	Bonus = 9999, -- Modifier knob bonus
	Solo = false, -- Make it the only selectable modifier
	Penalties = {
		NoRift = true, -- No rift display
		NoProgress = true -- No progress display
	},
	Unlock = "Join", -- Achievement needed to activate the modifier
	Activation = [[ -- Custom code to execute right after the loading screen goes away
		print("Custom Code Logic In Here!")
	]]
})

CustomModifiers:CreateModifier({
	Title = "Example Modifier 2", -- Modifier name
	Desc = "This is an example custom modifier!", -- Modifier description
	Color = Color3.fromRGB(255, 222, 189), -- Modifier color
	Category = "Example Category", -- Modifier category (handles which floor the modifier should be under)
	Sort = 2, -- Modifier sort
	Merge = "Combine", -- Combines two or more modifiers together so you can only select one in the list
	Bonus = 9999, -- Modifier knob bonus
	Solo = false, -- Make it the only selectable modifier
	Penalties = {
		NoRift = false, -- No rift display
		NoProgress = false -- No progress display
	},
	Unlock = "Join", -- Achievement needed to activate the modifier
	Activation = [[ -- Custom code to execute right after the loading screen goes away
		print("Custom Code Logic In Here!")
	]]
})
