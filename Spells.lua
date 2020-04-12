function CoolStepSlash (spell)
	BoilerplateSpellIntro(spell)
	package.cpath = "D:\\Games\\Steam\\steamapps\\common\\One Step From Eden\\OSFE_Data\\StreamingAssets\\Mods\\Default Mod\\?.dll"
	print("cpath is:")
	print(package.cpath)
	print("path is:")
	print(package.path)

	require("Lib")
	PrintFunction();
	print("AAAA")
	-- local thing = spell.ctrl.GetType("System.Reflection.Assembly").LoadFile("./CsLibrary.dll")
	

   --[[
	spell.being is the caster of the spell
	spell.hitBeing is the being thing that's been hit
	spell.hitTile is the tile that's been hit
	See OnHit in source
	]]--
	
	-- spell.being.ctrl.mainCtrl.ExitGame()
	-- Cannot do this because mainCtrl is a custom object
	-- that has no moonsharp cs->lua convertion implementation

	BoilerplateSpellOutro(spell)
end

function BoilerplateSpellIntro(spell)
		if (spell.introSound) then
			spell.being.PlayOnce(spell.introSound)
		end
		WaitForSeconds(spell, spell.castDuration)
end

function BoilerplateSpellOutro(spell)
		WaitForSeconds(spell, spell.recoveryTime)
		Outro(spell)
	end