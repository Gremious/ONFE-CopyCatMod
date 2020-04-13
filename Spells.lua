function MirrorImage (spell)
	BoilerplateSpellIntro(spell)

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
	local channelNum = StartChannel(spell)

	if (spell.introSound) then
		spell.being.PlayOnce(spell.introSound)
	end
	
	if (spell.fireLoop == FireLoop.While) then
		spell.beingAnim.SetBool("fireWhile", true)
	end
	
	if (spell.fireAnim == true and spell.fireAnimLate == false) then
		if (spell.fireLoop == FireLoop.Normal) then
			spell.beingAnim.SetTrigger("fire")
		end
	end

	if (spell.introDelay > 0) then
		WaitForSeconds(spell, spell.introDelay)
	end
end

function BoilerplateSpellOutro(spell)
		WaitForSeconds(spell, spell.recoveryTime)
		Outro(spell)
	end