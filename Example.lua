-- Documentations At: https://github.com/iimateiYT/Custom-Modifiers/blob/main/README.md

local CustomModifiers = loadstring(game:HttpGet('https://raw.githubusercontent.com/iimateiYT/Custom-Modifiers/main/Source.lua'))()

CustomModifiers:ToggleConnotations(true)

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
	Moddable = true
})

CustomModifiers:CreateCategory({
	Title = "Example Category",
	Sort = 0,
	Floor = "Example Floor",
	Color = Color3.fromRGB(255, 222, 189)
})

CustomModifiers:CreateModifier({
	Title = "Example Modifier",
	Desc = "This is an example custom modifier!",
	Color = Color3.fromRGB(255, 222, 189),
	Category = "Example Category",
	Sort = 1,
	Merge = "Combine",
	Bonus = 9999,
	Solo = false,
	Penalties = {
		NoRift = true, 
		NoProgress = true
	},
	Unlock = "Join",
	Activation = [[
		print("Custom Code Logic In Here!")
	]]
})

CustomModifiers:CreateModifier({
	Title = "Example Modifier 2",
	Desc = "This is an example custom modifier!",
	Color = Color3.fromRGB(255, 222, 189),
	Category = "Example Category",
	Sort = 2,
	Merge = "Combine",
	Bonus = 9999,
	Solo = false,
	Penalties = {
		NoRift = true, 
		NoProgress = true
	},
	Unlock = "Join",
	Activation = [[
		print("Custom Code Logic In Here!")
	]]
})
