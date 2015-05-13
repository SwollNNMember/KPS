--[[
@module Deathknight Unholy Rotation
GENERATED FROM SIMCRAFT PROFILE: Death_Knight_Unholy_T17N.simc
]]
local spells = kps.spells.deathknight
local env = kps.env.deathknight

kps.rotations.register("DEATHKNIGHT","UNHOLY",
{
    {spells.deathsAdvance, 'player.isMoving'},
    {{"nested"}, 'player.hasTalent(7, 3)', {
        {spells.antimagicShell, '( target.hasMyDebuff(spells.breathOfSindragosa) and player.runicPower < 25 ) or spells.breathOfSindragosa.cooldown > 40'},
        {{"nested"}, 'True', {
            {spells.plagueLeech, '( ( spells.outbreak.cooldown < 1 ) or diseaseMinRemains() < 1 ) and ( ( player.bloodRunes < 1 and player.frostRunes < 1 ) or ( player.bloodRunes < 1 and player.unholyRunes < 1 ) or ( player.frostRunes < 1 and player.unholyRunes < 1 ) )'},
            {spells.soulReaper, '( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45'},
            {spells.bloodTap, '( ( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45 ) and spells.soulReaper.cooldown = 0'},
            {spells.breathOfSindragosa, 'player.runicPower > 75'},
            {{"nested"}, 'target.hasMyDebuff(spells.breathOfSindragosa)', {
                {spells.plagueStrike, 'not diseaseTicking()'},
                {spells.bloodBoil, '( activeEnemies() >= 2 and not ( target.hasMyDebuff(spells.bloodPlague) or target.hasMyDebuff(spells.frostFever) ) ) or activeEnemies() >= 4 and ( player.runicPower < 88 and player.runicPower > 30 )'},
                {spells.scourgeStrike, 'activeEnemies() <= 3 and ( player.runicPower < 88 and player.runicPower > 30 )'},
                {spells.festeringStrike, 'player.runicPower < 77'},
                {spells.bloodBoil, 'activeEnemies() >= 4'},
                {spells.scourgeStrike, 'activeEnemies() <= 3'},
                {spells.bloodTap, 'player.buffStacks(spells.bloodCharge) >= 5'},
                {spells.plagueLeech},
                {spells.empowerRuneWeapon, 'player.runicPower < 60'},
                {spells.deathCoil, 'player.buffStacks(spells.suddenDoom)'},
            },
            {spells.summonGargoyle},
            {spells.unholyBlight, 'not ( target.hasMyDebuff(spells.bloodPlague) or target.hasMyDebuff(spells.frostFever) )'},
            {spells.outbreak, 'not ( target.hasMyDebuff(spells.bloodPlague) or target.hasMyDebuff(spells.frostFever) )'},
            {spells.plagueStrike, 'not ( target.hasMyDebuff(spells.bloodPlague) or target.hasMyDebuff(spells.frostFever) )'},
            {spells.bloodBoil, 'not ( target.hasMyDebuff(spells.bloodPlague) or target.hasMyDebuff(spells.frostFever) )'},
            {spells.deathAndDecay, 'activeEnemies() > 1 and player.unholyRunes > 1'},
            {spells.festeringStrike, 'player.bloodRunes > 1 and player.frostRunes > 1'},
            {spells.scourgeStrike, '( ( player.unholyRunes > 1 or player.deathRunes > 1 ) and activeEnemies() <= 3 ) or ( player.unholyRunes > 1 and activeEnemies() >= 4 )'},
            {spells.deathAndDecay, 'activeEnemies() > 1'},
            {spells.bloodBoil, 'activeEnemies() >= 4 and ( player.bloodRunes = 2 or ( player.frostRunes = 2 and player.deathRunes = 2 ) )'},
            {spells.darkTransformation},
            {spells.bloodTap, 'player.buffStacks(spells.bloodCharge) > 10'},
            {spells.bloodBoil, 'activeEnemies() >= 4'},
            {spells.deathCoil, '( player.buffStacks(spells.suddenDoom) or player.runicPower > 80 ) and ( player.buffStacks(spells.bloodCharge) <= 10 )'},
            {spells.scourgeStrike, 'spells.breathOfSindragosa.cooldown > 6 or player.runicPower < 75'},
            {spells.festeringStrike, 'spells.breathOfSindragosa.cooldown > 6 or player.runicPower < 75'},
            {spells.deathCoil, 'spells.breathOfSindragosa.cooldown > 20'},
            {spells.plagueLeech},
        },
    },
    {spells.antimagicShell},
    {{"nested"}, '( not player.hasTalent(7, 1) and activeEnemies() >= 2 ) or activeEnemies() >= 4', {
        {spells.unholyBlight},
        {{"nested"}, 'not target.hasMyDebuff(spells.bloodPlague) or not target.hasMyDebuff(spells.frostFever) or ( not target.hasMyDebuff(spells.necroticPlague) and player.hasTalent(7, 1) )', {
            {spells.bloodBoil, 'diseaseTicking()'},
            {spells.outbreak, 'diseaseTicking()'},
            {spells.plagueStrike, 'diseaseTicking()'},
        },
        {spells.defile},
        {spells.bloodBoil, 'player.bloodRunes = 2 or ( player.frostRunes = 2 and player.deathRunes = 2 )'},
        {spells.summonGargoyle},
        {spells.darkTransformation},
        {spells.bloodTap, 'player.level <= 90 and player.buffStacks(spells.shadowInfusion) = 5'},
        {spells.defile},
        {spells.deathAndDecay, 'player.unholyRunes = 1'},
        {spells.soulReaper, 'target.hp - 3 * ( target.hp % target.timeToDie ) <= 45'},
        {spells.scourgeStrike, 'player.unholyRunes = 2'},
        {spells.bloodTap, 'player.buffStacks(spells.bloodCharge) > 10'},
        {spells.deathCoil, 'player.runicPower > 90 or player.buffStacks(spells.suddenDoom) or ( target.hasMyDebuff(spells.darkTransformation) and player.unholyRunes <= 1 )'},
        {spells.bloodBoil},
        {spells.icyTouch},
        {spells.scourgeStrike, 'player.unholyRunes = 1'},
        {spells.deathCoil},
        {spells.bloodTap},
        {spells.plagueLeech},
        {spells.empowerRuneWeapon},
    },
    {{"nested"}, '( not player.hasTalent(7, 1) and activeEnemies() < 2 ) or activeEnemies() < 4', {
        {spells.plagueLeech, '( spells.outbreak.cooldown < 1 ) and ( ( player.bloodRunes < 1 and player.frostRunes < 1 ) or ( player.bloodRunes < 1 and player.unholyRunes < 1 ) or ( player.frostRunes < 1 and player.unholyRunes < 1 ) )'},
        {spells.plagueLeech, '( ( player.bloodRunes < 1 and player.frostRunes < 1 ) or ( player.bloodRunes < 1 and player.unholyRunes < 1 ) or ( player.frostRunes < 1 and player.unholyRunes < 1 ) ) and diseaseMinRemains() < 3'},
        {spells.plagueLeech, 'diseaseMinRemains() < 1'},
        {spells.outbreak, 'diseaseTicking()'},
        {spells.unholyBlight, 'not player.hasTalent(7, 1) and diseaseMinRemains() < 3'},
        {spells.unholyBlight, 'player.hasTalent(7, 1) and target.myDebuffDuration(spells.necroticPlague) < 1'},
        {spells.deathCoil, 'player.runicPower > 90'},
        {spells.soulReaper, '( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45'},
        {spells.bloodTap, '( ( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45 ) and spells.soulReaper.cooldown = 0'},
        {spells.deathAndDecay, '( not player.hasTalent(1, 3) or not player.hasTalent(7, 1) ) and player.unholyRunes = 2'},
        {spells.defile, 'player.unholyRunes = 2'},
        {spells.plagueStrike, 'diseaseTicking() and player.unholyRunes = 2'},
        {spells.scourgeStrike, 'player.unholyRunes = 2'},
        {spells.deathCoil, 'player.runicPower > 80'},
        {spells.festeringStrike, 'player.hasTalent(7, 1) and player.hasTalent(1, 3) and target.myDebuffDuration(spells.necroticPlague) < spells.unholyBlight.cooldown % 2'},
        {spells.festeringStrike, 'player.bloodRunes = 2 and player.frostRunes = 2 and ( ( ( player.frostOrDeathRunes - player.deathRunes ) > 0 ) or ( ( player.bloodOrDeathRunes - player.deathRunes ) > 0 ) )'},
        {spells.festeringStrike, '( player.bloodRunes = 2 or player.frostRunes = 2 ) and ( ( ( player.frostOrDeathRunes - player.deathRunes ) > 0 ) and ( ( player.bloodOrDeathRunes - player.deathRunes ) > 0 ) )'},
        {spells.defile, 'player.bloodRunes = 2 or player.frostRunes = 2'},
        {spells.plagueStrike, 'diseaseTicking() and ( player.bloodRunes = 2 or player.frostRunes = 2 )'},
        {spells.scourgeStrike, 'player.bloodRunes = 2 or player.frostRunes = 2'},
        {spells.festeringStrike, '( ( player.bloodOrDeathRunes - player.deathRunes ) > 1 )'},
        {spells.bloodBoil, '( ( player.bloodOrDeathRunes - player.deathRunes ) > 1 )'},
        {spells.festeringStrike, '( ( player.frostOrDeathRunes - player.deathRunes ) > 1 )'},
        {spells.bloodTap, '( ( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45 ) and spells.soulReaper.cooldown = 0'},
        {spells.summonGargoyle},
        {spells.deathAndDecay, '( not player.hasTalent(1, 3) or not player.hasTalent(7, 1) )'},
        {spells.defile},
        {spells.bloodTap, 'player.hasTalent(7, 2) and spells.defile.cooldown = 0'},
        {spells.plagueStrike, 'diseaseTicking()'},
        {spells.darkTransformation},
        {spells.bloodTap, 'player.buffStacks(spells.bloodCharge) > 10 and ( player.buffStacks(spells.suddenDoom) or ( target.hasMyDebuff(spells.darkTransformation) and player.unholyRunes <= 1 ) )'},
        {spells.deathCoil, 'player.buffStacks(spells.suddenDoom) or ( target.hasMyDebuff(spells.darkTransformation) and player.unholyRunes <= 1 )'},
        {spells.scourgeStrike, 'not ( ( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45 ) or ( player.unholyOrDeathRunes >= 2 )'},
        {spells.bloodTap},
        {spells.festeringStrike, 'not ( ( target.hp - 3 * ( target.hp % target.timeToDie ) ) <= 45 ) or ( ( ( player.frostOrDeathRunes - player.deathRunes ) > 0 ) and ( ( player.bloodOrDeathRunes - player.deathRunes ) > 0 ) )'},
        {spells.deathCoil},
        {spells.plagueLeech},
        {spells.scourgeStrike, 'spells.empowerRuneWeapon.cooldown = 0'},
        {spells.festeringStrike, 'spells.empowerRuneWeapon.cooldown = 0'},
        {spells.bloodBoil, 'spells.empowerRuneWeapon.cooldown = 0'},
        {spells.icyTouch, 'spells.empowerRuneWeapon.cooldown = 0'},
        {spells.empowerRuneWeapon, 'player.bloodRunes < 1 and player.unholyRunes < 1 and player.frostRunes < 1'},
    },
}
,"Death_Knight_Unholy_T17N.simc")