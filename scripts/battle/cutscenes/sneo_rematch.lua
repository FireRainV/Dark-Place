return {
    dialogue_test = function(cutscene, battler, enemy)
        local sneo = Game.battle:getEnemyBattler("sneo")
		
        local leader_nicknames = {
            kris = {"KRIS", "[Little Sponge]", "[#1ValuedCustomer]"},
            susie = {"SUSIE", "[Chalk Eater]", "[Class Bully]"},
            ralsei = {"RALSEI", "[Scringly Dingly]", "[Plogy Spongy]"},
            noelle = {"NOELLE", "[Angel]", "[Hochi Mama]"},
            berdly = {"[Burgley]", "[Fried Chicken]", "[Frozen Chicken]"},
            osw = {"STARWALKER", "", ""},
            YOU = {"YOU", "FROG", "[Amphibian Friend]"},
            robo_susie = {"SUSANNA", "[D3adInsideDino]", "[]"},
            noyno = {"NOYNO", "TIM", "[$4.99 Pepsi]"},
            ceroba = {"CEROBA", "[The Roba]", "[キツネ]"},
            clover = {"CLOVER", "[GunHat]", "[]"},
            dess = {"DESS", "[[Doe-Eyed Dumba$$]]", "[!#%@]"},
            brenda = {"BRENDA", "",  ""},
            jamm = {"JAMM", "[Black Widow]",  ""},
            bor = {"BOR", "[Ball]", "[#1 Re-Zero Fan]"}
        }

        --all dialogue is just placeholder stuff for now, until I actually get this implemented.
	    if Game.battle.turn_count == 1 then
            cutscene:battlerText(sneo, "KRIS! ISN'T THIS\n[Body] JUST [Heaven]LY", {x=sneo.x - 40, y=sneo.y - 80, left=true})
            cutscene:battlerText(sneo, "3X THE [Fire]POWER.\n2X THE [Water]POWER.\nAND BEST OF ALL,\nFLYING [Heads]!", {x=sneo.x - 40, y=sneo.y - 80, left=true})
		
            sneo.wave_override = "sneo/flyingheads"
	    elseif Game.battle.turn_count == 2 then
            cutscene:battlerText(sneo, "WE'LL TURN THOSE\n[Schomes] AND [Daves]\nINTO [Rosen Graves]", {x=sneo.x - 40, y=sneo.y - 80, left=true})
            cutscene:battlerText(sneo, "THOSE [Cathode Screens]\nINTO [Cathode Screams]", {x=sneo.x - 40, y=sneo.y - 80, left=true})
		
            sneo.wave_override = "sneo/firework_pipis"
	    elseif Game.battle.turn_count == 3 then
            cutscene:battlerText(sneo, "HOLD ON TO YOUR\n[Hotpants] EVERYBODY!!", {x=sneo.x - 40, y=sneo.y - 80, left=true})
            cutscene:battlerText(sneo, "CAUSE WE'VE GOT A\nCOUPLE [Calls] COMING IN!", {x=sneo.x - 40, y=sneo.y - 80, left=true})
		
            sneo.wave_override = "sneo/phoneshooter"
		elseif Game.battle.turn_count == 4 then
            cutscene:battlerText(sneo, "YOU [Meddling Kids]\nHAVE GOT QUITE THE\nSPLIT [PersonalityTest].", {x=sneo.x - 40, y=sneo.y - 80, left=true})
            cutscene:battlerText(sneo, "BUT CAN THEY MATCH MINE\nIN [[Self-Deflection]]!?", {x=sneo.x - 40, y=sneo.y - 80, left=true})
		
            sneo.wave_override = "sneo/pendulum"
		elseif Game.battle.turn_count == 5 then
            cutscene:battlerText(sneo, "FRIENDS ?\n"..(leader_nicknames[Game.world.player.actor.id][1] or "MY ESTEEM CUSTOMER")..", I'VE GOT\n[plenty to go around]!!!", {x=sneo.x - 40, y=sneo.y - 80, left=true})
            cutscene:battlerText(sneo, "THERE'S [Me], [[Y O U]],;\nAND WE CAN'T FORGET ABOUT\nTHE [[B0YS 1N BLUE]]!!!", {x=sneo.x - 40, y=sneo.y - 80, left=true})
		
            sneo.wave_override = "sneo/pipis_test"
		end
    end,
}