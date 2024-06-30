return {

    labass = function(cutscene, event)
        cutscene:showNametag("Lab Assistant")
        cutscene:text("* This is the way to the gaming room.", nil, event)
        cutscene:text("* I oversee the gaming.", nil, event)
        cutscene:text("* Would you like to return to the Cyber City?", nil, event)
        cutscene:hideNametag()
        if cutscene:choicer({"Yes", "No"}) == 1 then
            Game.world:mapTransition("cybercity/alley2", "gamerexit", "up")
        else
            cutscene:showNametag("Lab Assistant")
            cutscene:text("* Understandable,[wait:5] have a nice day.", nil, event)
            cutscene:hideNametag()
        end
    end,

    station = function(cutscene, event)
        if Game:getFlag("berdly_inparty") then
            cutscene:text("* The gaming stations don't seem to be working.")
        else
            cutscene:text("* It looks like there's two gaming stations here.")
            if cutscene:getCharacter("susie") and not cutscene:getCharacter("brenda") then
                cutscene:showNametag("Susie")
                cutscene:text("* Huh,[wait:5] looks like some sort of two-player game?", "surprise", "susie")
                cutscene:text("* Heh.[wait:5] I'd say I'm pretty good at video games,[wait:5] so...", "smile", "susie")
                cutscene:text("* Who wants to play with me?", "sincere_smile", "susie")
                if cutscene:getCharacter("dess") then
                    cutscene:showNametag("Dess")
                    cutscene:text("* ooo ooo me pick me I wanna play", "heckyeah", "dess")
                    cutscene:showNametag("Susie")
                    cutscene:text("* ...", "neutral_side", "susie")
                    cutscene:text("* Anyone other than her?", "annoyed", "susie")
                end
                cutscene:hideNametag()
                cutscene:wait(2)
                cutscene:text("* ...", "shock_nervous", "susie")
                cutscene:text("* ... Nobody?", "shy_b", "susie")
                cutscene:text("* Damn,[wait:5] alright then.", "shy_down", "susie")
                cutscene:hideNametag()
                cutscene:text("* Looks like you need someone else in your party.")
            elseif not cutscene:getCharacter("susie") and cutscene:getCharacter("brenda") then
                cutscene:showNametag("Brenda")
                cutscene:text("* Oh shoot,[wait:5] I think I've seen one of these things before.", "shock", "brenda")
                cutscene:text("* So basically,[wait:5] I think this is a two-player game.", "happy", "brenda")
                cutscene:text("* Any of you guys wanna play it with me?", "happy_side", "brenda")
                if cutscene:getCharacter("dess") then
                    cutscene:showNametag("Dess")
                    cutscene:text("* ooo ooo me pick me I wanna play", "heckyeah", "dess")
                    cutscene:showNametag("Brenda")
                    cutscene:text("* ... Not including you,[wait:5] Dess.", "dissapointed", "brenda")
                    cutscene:showNametag("Dess")
                    cutscene:text("* This is literally George Orwell's 1984", "angry", "dess")
                end
                cutscene:hideNametag()
                cutscene:wait(2)
                cutscene:showNametag("Brenda")
                cutscene:text("* ... Wow okay,[wait:5] so none of you guys?", "suspicious", "brenda")
                cutscene:text("* Can't believe I'm the only person into video games here.", "frown", "brenda")
                cutscene:hideNametag()
                cutscene:text("* Looks like you need someone else in your party.")
            elseif cutscene:getCharacter("susie") and cutscene:getCharacter("brenda") then
                local x,y = event:getRelativePos()
                cutscene:detachCamera()
                cutscene:detachFollowers()
                cutscene:walkTo(Game.world.player, x + 40, y + 150, 0.75, "up")
                for i, v in ipairs(Game.world.followers) do
                    local transformed_x = (i+1 - 1) % 2
                    local transformed_y = math.floor((i+1 - 1) / 2)

                    -- Transform the grid into coordinates
                    local offset_x = transformed_x * 120
                    local offset_y = transformed_y * 40
                    cutscene:walkTo(v, offset_x + x + 40, offset_y + y + 150, 0.75, "up")
                end
                cutscene:panTo(x, y + 50)
                cutscene:wait(1)
                cutscene:showNametag("Brenda")
                cutscene:text("* Oh shoot,[wait:5] I think I've seen one of these things before.", "shock", "brenda")
                cutscene:showNametag("Susie")
                cutscene:text("* You have?", "surprise_smile", "susie")
                cutscene:showNametag("Brenda")
                cutscene:text("* Yeah,[wait:5] I'm pretty sure this is some two-player game.", "happy", "brenda")
                cutscene:showNametag("Susie")
                cutscene:text("* Really?", "surprise_smile", "susie")
                cutscene:text("* Hey,[wait:5] wanna see who's better at this game?", "smile", "susie")
                cutscene:showNametag("Brenda")
                cutscene:text("* Yeah,[wait:5] sure!", "grin", "brenda")
                cutscene:hideNametag()
                cutscene:walkTo("susie", x + 50, y + 80, 0.75, "up")
                cutscene:walkTo("brenda", x + 110, y + 80, 0.75, "up")
                cutscene:wait(1)
                cutscene:showNametag("Susie")
                cutscene:text("* So,[wait:5] you ready?", "smile", "susie")
                cutscene:showNametag("Brenda")
                cutscene:text("* Yup!", "happy_b", "brenda")
                cutscene:text("* Alright,[wait:5] let's get started!", "happy", "brenda")
                Game:getPartyMember("brenda"):addOpinion("susie", 15)
                Game:getPartyMember("susie"):addOpinion("brenda", 15)
                cutscene:hideNametag()
                for k,chara in ipairs(Game.party) do
					Game:setFlag(chara.id .. "_party", false)
                    if chara.id == "noel" then
                        Game:setFlag("noel_at", "room1")
                    end
				end
				Game.party = {}
				Game:addPartyMember("susie")
				Game:addPartyMember("brenda")
				Game:setFlag("susie_party", true)
				Game:setFlag("brenda_party", true)
                Game.world:mapTransition("gamertimemain", "spawn", "down")
            else
                cutscene:text("* Unfortunatly,[wait:5] none of your party seems interested in playing it.")
                if cutscene:getCharacter("dess") then
                    cutscene:showNametag("Dess")
                    cutscene:text("* Hey,[wait:5] what about me?", "eyebrow", "dess")
                    cutscene:hideNametag()
                    cutscene:text("* Unfortunatly,[wait:5] none of your *important party members* seem interested in playing it.")
                    cutscene:showNametag("Dess")
                    cutscene:text("* Ey,[wait:5] fuck you Luigi", "angry", "dess")
                    if cutscene:getCharacter("noel") then
                        cutscene:text("* I hate this mod.", "...", "noel")
                    end
                end
                cutscene:hideNametag()
            end
        end
        
    end,

    start = function(cutscene, event)
        cutscene:detachCamera()
        cutscene:detachFollowers()
        local x,y = event:getRelativePos()
        local susie = cutscene:getCharacter("susie")
        local brenda = cutscene:getCharacter("brenda")
        cutscene:walkTo(susie, x, y + 100, 1, "down")
        cutscene:wait(1)
        susie:setFacing("left")
        cutscene:wait(1/2)
        susie:setFacing("right")
        cutscene:wait(1/2)
        susie:setFacing("down")
        cutscene:wait(1)
        cutscene:showNametag("Susie")
        cutscene:text("* Hey,[wait:5] uh,[wait:5] Brenda?", "sus_nervous", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Yeah?", "neutral_side", "brenda")
        cutscene:hideNametag()
        susie:setFacing("up")
        cutscene:wait(1)
        susie:setSprite("turn_around")
        Assets.playSound("whip_hard")
        cutscene:wait(1)
        cutscene:showNametag("Susie")
        cutscene:text("* Where the HELL are we?!", "teeth_b", "susie")
        susie:resetSprite()
        susie:setFacing("right")
        cutscene:showNametag("Brenda")
        cutscene:text("* I have no idea,[wait:5] but...", "neutral", "brenda")
        cutscene:text("* Given the default Deltarune tileset...", "neutral_side", "brenda")
        cutscene:text("* Bad layering of certain stuff...", "frown_side", "brenda")
        cutscene:text("* ... And YiiK music...", "dissapointed", "brenda")
        cutscene:text("* I think we're in someone's first Kristal mod.", "neutral", "brenda")
        cutscene:showNametag("Susie")
        cutscene:text("* ...", "sus_nervous", "susie")
        cutscene:text("* I have no idea what anything you just said meant.", "neutral", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Eh,[wait:5] don't think too hard about it.", "neutral_side", "brenda")
        cutscene:showNametag("Susie")
        cutscene:text("* ... Whatever.", "neutral_side", "susie")
        cutscene:walkTo(susie, x, y + 140, 0.2, "down")
        cutscene:text("* Hey,[wait:5] I think I see someone up ahead.", "surprise", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Well,[wait:5] lead the way then.", "happy", "brenda")
        cutscene:hideNametag()
        cutscene:attachFollowers()
        cutscene:alignFollowers()
        cutscene:attachCamera()
        cutscene:wait(1)
        local susie_party = Game:getPartyMember("susie")
        susie_party.has_act = true
        Game:setFlag("susie_canact", true)
        cutscene:text("* Susie can now use ACTs!")
    end,

    berdly = function(cutscene, event)
        cutscene:detachFollowers()
        local x = event.x + event.width/2
        local y = event.y + event.height/2
        local berdly = cutscene:getCharacter("berdly")
	    local susie = cutscene:getCharacter("susie")
        local brenda = cutscene:getCharacter("brenda")
        cutscene:walkTo(susie, x - 30, y + 120, 1, "up")
        cutscene:walkTo(brenda, x + 30, y + 120, 1, "up")
        Game.world.music:fade(0, 1)
        cutscene:showNametag("Berdly")
        cutscene:text("* Open up you stupid door!", "angry_b", "berdly")
        cutscene:hideNametag()
        cutscene:walkTo(berdly, x, y + 40, 0.75, "up")
        cutscene:wait(1)
        cutscene:wait(cutscene:walkTo(berdly, x, y + 60, 0.5, "up", true))
        cutscene:wait(cutscene:walkTo(berdly, x, y + 20, 0.2))
        Assets.playSound("impact")
        berdly:shake(4)
	    cutscene:wait(0.5)
	    cutscene:wait(cutscene:walkTo(berdly, x, y + 60, 0.5, "up", true))
        cutscene:wait(cutscene:walkTo(berdly, x, y + 20, 0.2))
        Assets.playSound("impact")
        berdly:shake(4)
	    cutscene:wait(0.5)
	    cutscene:wait(cutscene:walkTo(berdly, x, y + 60, 0.5, "up", true))
        cutscene:wait(cutscene:walkTo(berdly, x, y + 20, 0.2))
        Assets.playSound("impact")
        berdly:shake(4)
	    cutscene:wait(2)
        cutscene:showNametag("Susie")
        cutscene:text("* Berdly?[wait:10] Is that you?", "surprise", "susie")
        cutscene:hideNametag()
        cutscene:look("berdly", "down")
	    cutscene:wait(0.5)
        Game.world.music:play("deltarune/berdly_theme", 1, 1)
        cutscene:showNametag("Berdly")
        cutscene:text("* Susan?[wait:10] Oh thank the Gamer Gods that you're here.", "worried_smile", "berdly")
        cutscene:showNametag("Susie")
        cutscene:text("* Wait,[wait:5] if you're here then...", "suspicious", "susie")
        cutscene:text("* ARE WE NOT ACTUALLY IN A VIDEO GAME RIGHT NOW?!", "teeth", "susie")
        cutscene:text("* Well I mean I guess we still are but...", "shy", "susie")
        cutscene:text("* Something tells me we should probably try not to die.", "nervous", "susie")
        cutscene:showNametag("Berdly")
        cutscene:text("* So if you die in the game,[wait:5] you die in real life?", "surprised", "berdly")
        cutscene:text("* This is just like one of my favorite animes!", "LMAO", "berdly")
        cutscene:showNametag("Brenda")
        cutscene:text("* ... Of course you're a Sword Art Online fan.", "dissapointed", "brenda")
        cutscene:showNametag("Berdly")
        cutscene:text("* Oh,[wait:5] who are you?", "neutral", "berdly")
        cutscene:showNametag("Brenda")
        cutscene:text("* Hm?", "neutral", "brenda")
        cutscene:text("[noskip]* Oh I'm Brenda,[wait:5] I'm a fr-[wait:5]", "happy_b", "brenda", {auto = true})
        cutscene:text("* Wait,[wait:5] can I even call you a friend,[wait:5] Susie?", "neutral_side", "brenda")
        cutscene:showNametag("Susie")
        cutscene:text("* I mean,[wait:5] I don't see why you shouldn't.", "sincere_smile", "susie")
        Game:getPartyMember("brenda"):addOpinion("susie", 25)
        Game:getPartyMember("susie"):addOpinion("brenda", 25)
        cutscene:showNametag("Brenda")
        cutscene:text("* Alright.", "happy_b", "brenda")
        cutscene:text("* Anyways I'm a friend of Susie.", "happy", "brenda")
        cutscene:showNametag("Berdly")
        cutscene:text("* Ah.[wait:10] Well any friend of Susan is a friend of me.", "happy", "berdly")
        Game:getPartyMember("brenda"):addOpinion("berdly", 10)
        Game:getPartyMember("berdly"):addOpinion("brenda", 15)
        cutscene:showNametag("Susie")
        cutscene:text("* Anyways,[wait:5] why were you trying to break down that door?", "neutral", "susie")
        cutscene:showNametag("Berdly")
        cutscene:text("* Well,[wait:5] uh,[wait:5] the thing is...", "scared", "berdly")
        cutscene:text("* Some guy stole some rare items off of me!", "angry_sweat", "berdly")
        cutscene:showNametag("Brenda")
        cutscene:text("* ...", "dissapointed", "brenda")
        cutscene:text("* You got scammed,[wait:5] didn't you?", "suspicious", "brenda")
        cutscene:showNametag("Berdly")
        cutscene:text("* What?![wait:10] No I just uh...", "scared", "berdly")
        cutscene:text("* Okay so what if I DID get scammed?!", "sad_angry_b", "berdly")
        cutscene:text("* That Spamton guy said he was gonna give me some awesome stuff!", "angry", "berdly")
        cutscene:showNametag("Susie")
        cutscene:text("* Wait,[wait:5] Spamton?!", "shock", "susie")
        cutscene:text("* What's HE doing here???", "surprise_frown", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Uh I think JARU said he was gonna do something with the uh...", "neutral_side", "brenda")
        cutscene:text("* The original Spamton,[wait:5] so this is probably just a copy of him.", "neutral", "brenda")
        cutscene:showNametag("Berdly")
        cutscene:text("* ...", "scared", "berdly")
        cutscene:text("* What?", "worried_smile", "berdly")
        cutscene:showNametag("Susie")
        cutscene:text("* Don't bother asking.", "sus_nervous", "susie")
        cutscene:showNametag("Berdly")
        cutscene:text("* Anyways,[wait:5] we need a bomb if we want to get this door open.", "neutral", "berdly")
        if Game.inventory:hasItem("bomb") then
            cutscene:showNametag("Brenda")
            cutscene:text("* Oh we already got that.", "happy", "brenda")
            cutscene:showNametag("Berdly")
            cutscene:text("* Really?", "scared", "berdly")
            cutscene:showNametag("Susie")
            cutscene:text("* Yeah we went on a whole mini adventure without you.", "neutral_side", "susie")
            cutscene:showNametag("Berdly")
            cutscene:text("* Oh...", "worried_smile", "berdly")
            cutscene:showNametag("Susie")
            cutscene:text("* Sorry dude.", "shy", "susie")
        else
            cutscene:showNametag("Susie")
            cutscene:text("* Well what are we waiting for?", "smile", "susie")
            cutscene:text("* Let's go find that bomb!", "sincere_smile", "susie")
        end
        cutscene:hideNametag()
        Game.world.music:fade(0, 0.1)
        Assets.playSound("moss_fanfare", 1, 1)
        cutscene:text("* Berdly joined the party!")
	    Game:addPartyMember("berdly")
	    Game.world:spawnFollower("berdly", {x = berdly.x, y = berdly.y})
	    berdly:remove()
	    cutscene:alignFollowers()
        cutscene:attachFollowers()
	    cutscene:interpolateFollowers()
        Game:setFlag("berdly_inparty", true)
        Game:setFlag("berdly_party", true)
        Mod:unlockPartyMember("berdly")
        if not Game:getFlag("drcastsplitup_known") then
            cutscene:showNametag("Susie")
            cutscene:text("* We should uh...", "neutral_side", "susie")
            cutscene:text("* Probably go find the others after this.", "neutral", "susie")
            cutscene:hideNametag()
            Kristal.callEvent("createQuest", "Where's Kris", "krismissing", "Susie mentioned Kris not being with her when she entered the Dark World. Go search for clues on their wherabouts.")
            Kristal.callEvent("createQuest", "Lost Girl", "noellemissing", "Susie mentioned Noelle not being with her when she entered the Dark World. Go search for clues on her wherabouts.")
            Kristal.callEvent("createQuest", "Missing Berd", "berdlymissing", "Berdly, along side Susie and Brenda, are locked inside a video game in the Cybercity! Perhaps Spamton has the way out? Use a bomb to blow up the door to the house he's in!")
            Game:setFlag("drcastsplitup_known", true)
        else
            Kristal.callEvent("setDesc", "berdlymissing", "Berdly, along side Susie and Brenda, are locked inside a video game in the Cybercity! Perhaps Spamton has the way out? Use a bomb to blow up the door to the house he's in!")
        end
        Game.world.music:play("yiik", 1, 1)
    end,

    door = function(cutscene, event)
        if Game.inventory:hasItem("bomb") then
            cutscene:text("* Use the bomb?")
            if cutscene:choicer({"Yes", "No"}) == 1 then
                cutscene:fadeOut(1)
                Game.world.music:fade(0, 1)
		        cutscene:wait(1)
		        Assets.playSound("bomb")
                Game.inventory:removeItem("bomb")
		        cutscene:wait(1)
		        cutscene:fadeIn(1)
		        cutscene:wait(1)
                cutscene:showNametag("Susie")
                cutscene:text("* Well,[wait:5] the door's open now.", "small_smile", "susie")
                cutscene:text("* Let's show Spamton how to REALLY steal items!", "smile", "susie")
                cutscene:showNametag("Brenda")
                cutscene:text("* Let's kick some puppet ass!", "smug", "brenda")
                cutscene:showNametag("Spamton")
                cutscene:text("[voice:spamton2]* WHAT!!![wait:10]\n* YOU NEWBIES WANT TO TAKE MY [[Legally sourced]] RARE ITEMS?")
		        cutscene:text("[voice:spamton2]* WELL,[wait:5] [You're gonna have to try a little HARDER than that]!")
		        cutscene:text("[voice:spamton2]* I'VE BEEN STOCKING UP ON [[collector's items]]!")
		        cutscene:text("[voice:spamton2]* THERE'S NO WAY YOU COULD BEAT ME IN [Omega Male] FORM!!")
                cutscene:showNametag("Berdly")
                cutscene:text("* Well,[wait:5] I think he's gonna fight us with his scammed loot.", "neutral", "berdly")
                cutscene:text("* Time to show him who the TRUE gamers are!", "angry", "berdly")
                cutscene:showNametag("Spamton")
                cutscene:text("[voice:spamton2]* I'LL TELL YOU WHAT,[wait:5] YOU [[Big Shots]]...")
                cutscene:text("[voice:spamton2]* IT'S ON LIKE [[Legally Distinct Ape]]!!")
                cutscene:hideNametag()
                cutscene:startEncounter("omegaspamtonbossfight", true)
                Game:setFlag("omegaspamton_defeated", true)
                cutscene:text("* This part is VERY WIP (as you can tell from Spamton not having any unique attacks)")
                cutscene:text("* Uhh I'll finish up the rest of this segment another time")
                cutscene:text("* -BrendaK7200")
                Game.world:mapTransition("gamertimeentrance", "exit", "down")
                local susie_party = Game:getPartyMember("susie")
                susie_party.has_act = false
                Game:setFlag("susie_canact", false)
                Kristal.callEvent("setDesc", "berdlymissing", "Berdly has been saved! Unfortunatly the gaming stations used to access him seem to not be working anymore, so returning to that place seems to be impossible, at least for now.")
                Kristal.callEvent("completeQuest", "berdlymissing")
            end
        else
            cutscene:showNametag("Susie")
            cutscene:text("* Why the hell is this stupid door so hard to open?!", "teeth", "susie")
            cutscene:hideNametag()
            cutscene:text("* You need a bomb to open this door.")
        end
    end,

    collision = function(cutscene, event)
        cutscene:showNametag("Susie")
        cutscene:text("* Why the hell can't we go through here?", "angry", "susie")
        cutscene:text("* THERE'S CLEARLY A GAP HERE!!!", "teeth_b", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Dude,[wait:5] this collision is ass!", "grin", "brenda")
        cutscene:hideNametag()
    end,

    wtf = function(cutscene, event)
        cutscene:showNametag("Susie")
        cutscene:text("* ...", "suspicious", "susie")
        cutscene:text("* I REALLY don't wanna go in that maze...", "annoyed", "susie")
        if cutscene:getCharacter("berdly") then
            cutscene:showNametag("Berdly")
            cutscene:text("* Ah,[wait:5] but Susan...", "questioning", "berdly")
            cutscene:text("* What if there's some EPIC GAMER LOOT in there?", "chef_kiss", "berdly", {x = -4}) -- for Deltarune accuracy, Berdly's "chef_kiss" portrait should be offsetted like this.
            cutscene:showNametag("Susie")
            cutscene:text("* ...", "suspicious", "susie")
        end
        cutscene:hideNametag()
    end,

    wasteoftime = function(cutscene, event)
        cutscene:showNametag("Susie")
        cutscene:text("* Well,[wait:5] this has been a complete waste of time.", "annoyed", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* There's gotta be a way to that chest...", "neutral_side", "brenda")
        cutscene:hideNametag()
    end,

    oob = function(cutscene, event)
        if cutscene:getCharacter("berdly") then
            cutscene:showNametag("Berdly")
            cutscene:text("* Ah,[wait:5] clipping out of bounds.", "look_up", "berdly")
            cutscene:text("* The skeleton key for gamers.", "laugh", "berdly")
        end
        cutscene:showNametag("Brenda")
        cutscene:text("* Hah,[wait:5] knew there was a way to that chest!", "happy_b", "brenda")
        cutscene:showNametag("Susie")
        cutscene:text("* You do realize we have to walk all the way back,[wait:5] right?", "suspicious", "susie")
        if cutscene:getCharacter("berdly") then
            cutscene:showNametag("Berdly")
            cutscene:text("* ... Oh...", "worried_smile", "berdly")
        end
        cutscene:showNametag("Brenda")
        cutscene:text("* God damnit...", "miffed", "brenda")
        cutscene:hideNametag()
    end,

    getbombs = function(cutscene, event)
        if cutscene:getCharacter("berdly") then
            cutscene:showNametag("Berdly")
            cutscene:text("* Ah,[wait:5] there should be bombs in this here structure.", "happy", "berdly")
            cutscene:showNametag("Susie")
            cutscene:text("* How do you know?", "suspicious", "susie")
            cutscene:showNametag("Berdly")
            cutscene:text("* Well Susan,[wait:4] it's simple.", "smirk", "berdly")
            cutscene:text("* Process of elimination.", "smile", "berdly")
            cutscene:text("* This is the only place we haven't explored yet.", "smirk", "berdly")
            cutscene:showNametag("Brenda")
            cutscene:text("* That...", "neutral_side", "brenda")
            cutscene:text("* Actually makes sense????", "shock", "brenda")
            cutscene:showNametag("Susie")
            cutscene:text("* Yeah,[wait:5] honestly I'm impressed.", "neutral_side", "susie")
            cutscene:showNametag("Berdly")
            cutscene:text("* Oh stop,[wait:5] you're going to make me blush,[wait:5] Susan", "godly", "berdly")
            cutscene:hideNametag()
        else
            cutscene:showNametag("Brenda")
            cutscene:text("* Oh hey,[wait:5] there might be bombs in there.", "happy_side", "brenda")
            cutscene:showNametag("Susie")
            cutscene:text("* Well then,[wait:5] let's check it out.", "small_smile", "susie")
            cutscene:hideNametag()
        end
    end

}
