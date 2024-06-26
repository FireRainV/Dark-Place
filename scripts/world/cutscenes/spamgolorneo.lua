return {
    door = function(cutscene, event)
        cutscene:text("* It's a cracked wall.")
        if cutscene:getCharacter("susie") and cutscene:getCharacter("brenda") then
            cutscene:showNametag("Susie")
            cutscene:text("* ... A dead end?", "nervous_side", "susie")
            cutscene:text("* WAS THIS ALL FOR NOTHING!?!?!?!?", "teeth_b", "susie")
            cutscene:showNametag("Brenda")
            cutscene:text("* Hold on,[wait:5] Susie,[wait:5] you see how the wall is a bit cracked?", "neutral_side", "brenda")
            cutscene:showNametag("Susie")
            cutscene:text("* Uhhh,[wait:5] I think?", "suspicious", "susie")
            cutscene:showNametag("Brenda")
            cutscene:text("* What if we tried breaking through it?", "happy", "brenda")
            cutscene:text("* You'll use Rude Buster,[wait:5] and I'll use Gamma Beam.", "happy_b", "brenda")
            cutscene:showNametag("Susie")
            cutscene:text("* Heh,[wait:5] works for me.", "smile", "susie")
            cutscene:hideNametag()
            cutscene:wait(cutscene:fadeOut(1, {wait = false}))
            Assets.playSound("rudebuster_swing", 1, 1)
            Assets.playSound("rainbowbeam", 0.5, 1)
            cutscene:text("* Brenda and Susie both try breaking the wall down.")
            Game:setFlag("spamgolorneo_door", true)
            cutscene:wait(cutscene:fadeIn(1, {wait = false}))
            cutscene:showNametag("Susie")
            cutscene:text("* Hell yeah!", "smile", "susie")
            cutscene:showNametag("Brenda")
            cutscene:text("* Well,[wait:5] that's the way forward dealt with.", "happy_b", "brenda")
            if #Game.party >= 3 then
                cutscene:showNametag("Susie")
                cutscene:text("* Hey uh,[wait:5] you think the two of us should scout ahead?", "smirk", "susie")
                cutscene:text("* Just so the rest of the party can get help if we get trapped.", "nervous_side", "susie")
                cutscene:text("* We uh,[wait:5] DID just blow a hole in the wall.", "nervous", "susie")
                cutscene:showNametag("Brenda")
                cutscene:text("* Yeah,[wait:5] that sounds good.", "happy", "brenda")
                cutscene:text("* Alright guys,[wait:5] we'll be back soon.", "happy_side", "brenda")
                if cutscene:getCharacter("dess") then
                    cutscene:showNametag("Dess")
                    cutscene:text("* Ooooh are you guys going on a date together?", "condescending", "dess")
                    cutscene:showNametag("Brenda")
                    cutscene:text("* A-[wait:5]a w-what?", "blush", "brenda")
                    cutscene:showNametag("Susie")
                    cutscene:text("* IT IS NOT A DATE!", "teeth_b", "susie")
                    cutscene:text("* C'mon,[wait:5] let's just go already.", "teeth", "susie")
                end
                cutscene:hideNametag()
                cutscene:wait(cutscene:fadeIn(1, {wait = false}))
                for k,chara in ipairs(Game.party) do
                    Game:setFlag(chara.id .. "_party", false)
                end
                Game.party = {}
                Game:addPartyMember("brenda")
                Game:addPartyMember("susie")
                Game:setFlag("brenda_party", true)
                Game:setFlag("susie_party", true)
                Game.world:mapTransition("spamgolorneo_save", "north", "down")
            else
                cutscene:text("* C'mon Susie,[wait:5] let's go.", "happy_side", "brenda")
                cutscene:hideNametag()
                cutscene:wait(cutscene:fadeIn(1, {wait = false}))
                Game:removePartyMember("brenda")
                Game:addPartyMember("brenda", 1)
                Game.world:mapTransition("spamgolorneo_save", "north", "down")
            end
        elseif cutscene:getCharacter("susie") and not cutscene:getCharacter("brenda") then
            cutscene:showNametag("Susie")
            cutscene:text("* ... A dead end?", "nervous_side", "susie")
            cutscene:text("* WAS THIS ALL FOR NOTHING!?!?!?!?", "teeth_b", "susie")
            cutscene:text("* Ugh,[wait:5] there must be a way forward somehow...", "suspicious", "susie")
            cutscene:hideNametag()
        elseif cutscene:getCharacter("brenda") and not cutscene:getCharacter("susie") then
            cutscene:showNametag("Brenda")
            cutscene:text("* Aaaaaand that's a dead end.", "suspicious", "brenda")
            cutscene:text("* Well great,[wait:5] that's just lovely.", "dissapointed", "brenda")
            cutscene:text("* Actualy...", "neutral_side", "brenda")
            cutscene:text("* Maybe I could break this down with the help of someone?", "happy_side", "brenda")
            cutscene:text("* The wall does seem kinda cracked.", "happy", "brenda")
            cutscene:hideNametag()
        else
            cutscene:text("* Unfortunately,[wait:5] it doesn't seem like your party can break it.")
        end
    end,

    barrier = function(cutscene, event)
        local x = event.x + event.width/2
        local y = event.y + event.height/2
        local brenda = cutscene:getCharacter("brenda")
        local susie = cutscene:getCharacter("susie")
        cutscene:detachCamera()
        cutscene:detachFollowers()
        brenda:walkTo(x + 40, y + 90)
        susie:walkTo(x - 40, y + 90)
        cutscene:wait(1)
        cutscene:showNametag("Susie")
        cutscene:text("* Man,[wait:5] this place looks just like the basement of Queen's mansion...", "sus_nervous", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Yeah,[wait:5] hopefully there aren't any teacups of doom.", "neutral_side", "brenda")
        cutscene:showNametag("Susie")
        cutscene:text("* Teacups of what?", "surprise", "susie")
        cutscene:showNametag("Brenda")
        cutscene:text("* Ask Kris about it,[wait:5] they'll know.", "suspicious", "brenda")
        cutscene:showNametag("Susie")
        cutscene:text("* Alright...", "smirk", "susie")
        cutscene:hideNametag()
        Assets.playSound("screenshake")
        Game.world:shakeCamera(5)
        Game:setFlag("spamgolorneo_barrier", true)
        cutscene:wait(1)
        susie:setFacing("up")
        brenda:setFacing("up")
        cutscene:showNametag("Susie")
        cutscene:text("* ...", "surprise", "susie")
        cutscene:text("* Well uh,[wait:5] that's not good.", "surprise_frown", "susie")
        cutscene:text("* Looks like we need to find a way out of here.", "suspicious", "susie")
        cutscene:text("* Why the hell did we even listen to that Spamgolor guy?", "teeth_b", "susie")
        cutscene:text("* Ugh,[wait:5] whatever,[wait:5] I'm going on ahead!", "teeth", "susie")
        brenda:setFacing("down")
        Game:removePartyMember("susie")
        cutscene:hideNametag()
        susie:walkTo(x - 40, y + 200, 0.5)
        cutscene:wait(0.5)
        susie:walkTo(x + 600, y + 200, 2)
        cutscene:showNametag("Brenda")
        cutscene:text("* Wait,[wait:5] Susie!", "frown", "brenda")
        cutscene:text("* ...", "frown_side", "brenda")
        cutscene:text("* Guess I better catch up to her.", "frown", "brenda")
        cutscene:hideNametag()
        cutscene:wait(cutscene:attachCamera(1))
    end,

    susdoor = function(cutscene, event)
        cutscene:text("* Looks like Susie is behind this door.")
        cutscene:text("* You should go look for that NEO body.")
    end,

    body = function(cutscene, event)
        cutscene:text("* It's the body that Spamgolor tasked you with finding.")
        cutscene:showNametag("Brenda")
        cutscene:text("* Well,[wait:5] I sure as hell can't cary THAT.", "suspicious", "brenda")
        cutscene:text("* Maybe I should go get Susie?", "neutral_side", "brenda")
        cutscene:hideNametag()
        Game:setFlag("spamgolorneo_activate", true)
    end,

    intro = function(cutscene, event)
        local x = event.x + event.width/2
        local y = event.y + event.height/2
        local brenda = cutscene:getCharacter("brenda")
        local spamgolor = cutscene:getCharacter("spamgolorneo")
        Game.world.music:fade(0, 1)
        cutscene:detachCamera()
        brenda:walkTo(x - 20, y, 2)
        cutscene:wait(1)
        Assets.playSound("criticalswing")
        spamgolor:slideTo(x - 20, y, 1, "in-cubic")
        cutscene:wait(1)
        Assets.playSound("impact")
        spamgolor:shake(5)
        brenda:setSprite("battle/defeat")
        brenda.flip_x = true
        brenda:slideTo(x + 150, y, 1, "out-cubic")
        cutscene:wait(1.5)
        cutscene:showNametag("Brenda")
        cutscene:text("* W-what the...?", "shaded_b", "brenda")
        cutscene:hideNametag()
        brenda:setFacing("left")
        brenda:setSprite("walk")
        brenda:setAnimation("walk")
        brenda.flip_x = false
        brenda:shake(5)
        Assets.playSound("wing")
        cutscene:wait(1)
        Game.world.music:fade(1, 0)
        Game.world.music:play("spamgolor_neo_intro", 1, 1)
        cutscene:showNametag("Spamgolor NEO")
        cutscene:text("* WELL DONE,[wait:5] BRENDA.[wait:10]\n* [[You have truly earned your reputation as a hero.]]", "", "spamgolor")
        cutscene:text("* YOU AND THAT [[Pink Lizard]] WERE BOTH SO EASY TO FOOL.", "", "spamgolor")
        cutscene:text("* AND NOW,[wait:5] THANKS TO YOUR [[Property Damage]] I HAVE [[Becomed]] NEO.", "", "spamgolor")
        cutscene:text("* AND NOW,[wait:5] I CAN FINALLY SPEAK MY MIND.", "", "spamgolor")
        spamgolor:setAnimation("shaking")
        cutscene:text("* I KNOW EVERYTHING ABOUT YOU,[wait:5] BRENDA", "", "spamgolor")
        spamgolor:setAnimation("idle")
        cutscene:showNametag("Brenda")
        cutscene:text("* W-what...?", "shaded", "brenda")
        cutscene:showNametag("Spamgolor NEO")
        cutscene:text("* YOU'RE THE REASON I'M [[At rock bottom]]!![wait:10] IT'S ALL YOUR FAULT!", "", "spamgolor")
        cutscene:showNametag("Brenda")
        cutscene:text("* I-I don't...", "sad", "brenda")
        cutscene:text("* I-I'm sorry I...", "sad_b", "brenda")
        cutscene:showNametag("Spamgolor NEO")
        cutscene:text("* IT'S TOO LATE FOR [[Apology videos]] NOW!", "", "spamgolor")
        if Game:getPartyMember("brenda").love >= 5 then
            cutscene:text("* YOU'VE RUINED NOT ONLY MY [[Business]],[wait:5] BUT SO MANY OTHERS AS WELL.", "", "spamgolor")
            cutscene:text("* YOU THINK YOU'RE SOME KIND OF [[Big Shot]] WHO CAN DO WHATEVER THEY WANT?", "", "spamgolor")
            cutscene:showNametag("Brenda")
            cutscene:text("* I-I...", "shaded_sad", "brenda")
            cutscene:showNametag("Spamgolor NEO")
        end
        cutscene:text("* BUT ENOUGH [[Dialogue]],[wait:5] DON'T YOU SEE THESE [[Silly strings]] ON ME?!", "", "spamgolor")
        cutscene:text("* I'M STILL NOT FREE YET!!", "", "spamgolor")
        cutscene:text("* I NEED... SOMETHING ELSE NOW...", "", "spamgolor")
        cutscene:text("* THAT'S RIGHT,[wait:5] BRENDA.", "", "spamgolor")
        Game.world.music:pause()
        spamgolor:setAnimation("aim")
        cutscene:text("[noskip]* I NEED YOUR [[S O U L]]", "", "spamgolor")
        cutscene:hideNametag()
        Game.world.music:play("spamgolor_neo_intro", 1, 1.5)
        spamgolor:slideTo(x + 70, y, 3)
        brenda:walkTo(x + 240, y, 3, "left", "left")
        cutscene:wait(3)
    end
}