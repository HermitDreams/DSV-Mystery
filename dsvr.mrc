/cvport {
  var %dsvr.por.pickups
  var %dsvr.por.portals
  var %dsvr.por.maps
  var %dsvr.por.start
  var %dsvr.por.enemy.loc
  var %dsvr.por.boss.loc
  var %dsvr.por.enemy.loot
  var %dsvr.por.enemy.rarity
  var %dsvr.por.enemy.power
  var %dsvr.por.enemy.speed
  var %dsvr.por.enemy.tol
  var %dsvr.por.potions
  var %dsvr.por.wep.type
  var %dsvr.por.skill.type
  var %dsvr.por.equips
  var %dsvr.por.skill.stats
  var %dsvr.por.atkelem
  var %dsvr.por.shops
  var %dsvr.por.glitched
  var %dsvr.por.scaled

  var %dsvr.por.scav
  var %dsvr.por.desc
  var %dsvr.por.unlock
  var %dsvr.por.peep
  var %dsvr.por.dex
  var %dsvr.por.popup
  var %dsvr.por.quick
  var %dsvr.por.xbutton
  var %dsvr.por.easyresist
  var %dsvr.por.emblem
  var %dsvr.por.quest
  var %dsvr.por.gambler
  var %dsvr.por.spells
  var %dsvr.por.markers

  var %dsvr.por.range.price.item $rand(100,500)
  var %dsvr.por.range.wep.atk $rand(0,3000)
  var %dsvr.por.range.wep.delay $rand(4000,26000)
  var %dsvr.por.range.arm.def $rand(0,10000)
  var %dsvr.por.range.arm.bonus $rand(0,3200)
  var %dsvr.por.range.potion $rand(10,2000)
  var %dsvr.por.range.heart $rand(100,7500)
  var %dsvr.por.range.affinity $rand(1,2000)
  var %dsvr.por.range.price.skill $rand(1000,5000)
  var %dsvr.por.range.skill.atk $rand(5000,11000)
  var %dsvr.por.range.crush.atk $rand(15000,38000)
  var %dsvr.por.range.skill.delay $rand(4000,26000)
  var %dsvr.por.range.mastery 1000
  var %dsvr.por.range.windup $rand(800,3200)
  var %dsvr.por.range.skill.cost $rand(1000,25000)
  var %dsvr.por.range.dual.cost 5000
  var %dsvr.por.range.union.cost $rand(5000,10000)
  var %dsvr.por.range.skill.active $rand(1000,2000)
  var %dsvr.por.range.glyph.cooldown $rand(1000,7000)
  var %dsvr.por.range.loot.item $rand(1000,13000)
  var %dsvr.por.range.loot.skill $rand(1000,8000)
  var %dsvr.por.range.scav.item $rand(10,5500)
  var %dsvr.por.range.scav.candle $rand(10,800)
  var %dsvr.por.range.scav.skill $rand(10,2500)
  var %dsvr.por.range.scav.glyph $rand(10,2500)
  var %dsvr.por.range.scav.max $rand(10,1800)
  var %dsvr.por.range.scav.cash $rand(10,200)
  var %dsvr.por.range.enemy.room $rand(10000,20000)
  var %dsvr.por.range.enemy.atk $rand(10000,13000)
  var %dsvr.por.range.enemy.id $rand(0,30000)
  var %dsvr.por.range.enemy.stat $rand(5000,10000)
  var %dsvr.por.range.enemy.weak $rand(0,2000)
  var %dsvr.por.range.enemy.resist $rand(0,2000)
  var %dsvr.por.range.boss.stat $rand(7500,10000)
  var %dsvr.por.range.enemy.speed $rand(3300,9000)
  var %dsvr.por.range.start.room $rand(1500,2200)
  var %dsvr.por.range.start.item $rand(0,20000)
  var %dsvr.por.range.start.skill $rand(0,20000)

  ; LIST OF ALL OPTIONS

  ; - Progression -
  ; randomize_pickups: "Item/Skill Locations". Weight heavily (min 90%)
  if ($rand(1,20) < 19) { var -n %dsvr.por.pickups "randomize_pickups," }
  else { var -n %dsvr.por.pickups $+  }
  ; randomize_portraits: "Portraits". Weight high. (min 75%)
  if ($rand(1,20) < 16) { var -n %dsvr.por.portals "randomize_portraits," }
  else { var -n %dsvr.por.portals $+  }

  ; - Rooms -
  ; randomize_maps: "Maps". Weight 15%
  if ($rand(1,20) < 4) { var -n %dsvr.por.maps "randomize_maps," }
  else { var -n %dsvr.por.maps $+  }
  ; randomize_starting_room: "Starting Room". Weight 25%
  if ($rand(1,20) < 16) { var -n %dsvr.por.start "randomize_starting_room," }
  else { var -n %dsvr.por.start $+  }

  ; - Enemies -
  ; randomize_enemies: "Enemy Locations". Weight 40%
  if ($rand(1,20) < 9) { var -n %dsvr.por.enemy.loc "randomize_enemies," }
  else { var -n %dsvr.por.enemy.loc $+  }
  ; randomize_bosses: "Boss Locations". Weight 75%
  if ($rand(1,20) < 16) { var -n %dsvr.por.boss.loc "randomize_bosses," }
  else { var -n %dsvr.por.boss.loc $+  }
  ; randomize_enemy_drops: "Enemy Drops". Weight 90%
  if ($rand(1,20) < 19) { var -n %dsvr.por.enemy.loot "randomize_enemy_drops," }
  else { var -n %dsvr.por.enemy.loot $+  }
  ; randomize_enemy_drop_chances: "Enemy Drop Chances". Weight 80%
  if ($rand(1,20) < 17) { var -n %dsvr.por.enemy.rarity "randomize_enemy_drop_chances," }
  else { var -n %dsvr.por.enemy.rarity $+  }
  ; randomize_enemy_stats: "Enemy Stats". Weight 25%
  if ($rand(1,20) < 6) { var -n %dsvr.por.enemy.power "randomize_enemy_stats," }
  else { var -n %dsvr.por.enemy.power $+  }
  ; randomize_enemy_anim_speed: "Enemy Animation Speed". Weight 5%
  if ($rand(1,20) < 2) { var -n %dsvr.por.enemy.speed "randomize_enemy_anim_speed," }
  else { var -n %dsvr.por.enemy.speed $+  }
  ; randomize_enemy_tolerances: "Enemy Tolerances". Weight 75%
  if ($rand(1,20) < 16) { var -n %dsvr.por.enemy.tol "randomize_enemy_tolerances," }
  else { var -n %dsvr.por.enemy.tol $+  }

  ; - Items -
  ; randomize_consumable_behavior: "Consumable Behavior". Weight 30%
  if ($rand(1,20) < 7) { var -n %dsvr.por.potions "randomize_consumable_behavior," }
  else { var -n %dsvr.por.potions $+  }
  ; randomize_weapon_behavior: "Weapon Behavior". Weight 30%
  if ($rand(1,20) < 7) { var -n %dsvr.por.wep.type "randomize_weapon_behavior," }
  else { var -n %dsvr.por.wep.type $+  }
  ; randomize_skill_behavior: "Skill Behavior". Weight 20%
  if ($rand(1,20) < 5) { var -n %dsvr.por.skill.type "randomize_skill_behavior," }
  else { var -n %dsvr.por.skill.type $+  }
  ; randomize_equipment_stats: "Equipment Stats". Weight 50%
  if ($rand(1,20) < 11) { var -n %dsvr.por.equips "randomize_equipment_stats," }
  else { var -n %dsvr.por.equips $+  }
  ; randomize_skill_stats: "Skill Stats". Weight 50%
  if ($rand(1,20) < 11) { var -n %dsvr.por.skill.stats "randomize_skill_stats," }
  else { var -n %dsvr.por.skill.stats $+  }
  ; randomize_weapon_and_skill_elements: "Weapon and Skill Elements". Weight 75%
  if ($rand(1,20) < 16) { var -n %dsvr.por.atkelem "randomize_weapon_and_skill_elements," }
  else { var -n %dsvr.por.atkelem $+  }

  ; - Non-Required Sources -
  ; randomize_shop: "Shop Items". Weight 80%
  if ($rand(1,20) < 17) { var -n %dsvr.por.shops "randomize_shop," }
  else { var -n %dsvr.por.shops $+  }

  ; - Difficulty -
  ; enable_glitch_reqs: "Allow requiring glitches to win". Weight 20%
  if ($rand(1,20) < 5) { var -n %dsvr.por.glitched "enable_glitch_reqs," }
  else { var -n %dsvr.por.glitched $+  }
  ; rebalance_enemies_in_room_rando: "Rebalance enemies by order you reach them". Weight 80%
  if ($rand(1,20) < 17) { var -n %dsvr.por.scaled "rebalance_enemies_in_room_rando," }
  else { var -n %dsvr.por.scaled $+  }

  ; - Game Tweaks -
  ; scavenger_mode: "Scavenger Mode". Weight 5%
  if ($rand(1,20) < 2) { var -n %dsvr.por.scav "scavenger_mode," }
  else { var -n %dsvr.por.scav $+  }
  ; revise_item_descriptions: "Revise item descriptions". Weight 80%
  if ($rand(1,20) < 17) { var -n %dsvr.por.desc "revise_item_descriptions," }
  else { var -n %dsvr.por.desc $+  }
  ; unlock_all_modes: "Unlock all modes". Weight 50%
  if ($rand(1,20) < 11) { var -n %dsvr.por.unlock "unlock_all_modes," }
  else { var -n %dsvr.por.unlock $+  }
  ; reveal_breakable_walls: "Reveal breakable walls". Weight 95%
  if ($rand(1,20) < 20) { var -n %dsvr.por.peep "reveal_breakable_walls," }
  else { var -n %dsvr.por.peep $+  }
  ; reveal_bestiary: "Reveal bestiary". Weight 80%
  if ($rand(1,20) < 17) { var -n %dsvr.por.dex "reveal_bestiary," }
  else { var -n %dsvr.por.dex $+  }
  ; remove_area_names: "Remove area names". Weight 50%
  if ($rand(1,20) < 11) { var -n %dsvr.por.popup "remove_area_names," }
  else { var -n %dsvr.por.popup $+  }
  ; por_short_mode: "Short Mode". Weight 10%
  if ($rand(1,20) < 3) { var -n %dsvr.por.quick "por_short_mode," }
  else { var -n %dsvr.por.quick $+  }
  ; start_with_change_cube: "Start with Change Cube". Weight 25%
  if ($rand(1,20) < 6) { var -n %dsvr.por.xbutton "start_with_change_cube," }
  else { var -n %dsvr.por.xbutton $+  }
  ; por_nerf_enemy_resistances: "Nerf enemy resistances". Weight 25%
  if ($rand(1,20) < 6) { var -n %dsvr.por.easyresist "por_nerf_enemy_resistances," }
  else { var -n %dsvr.por.easyresist $+  }
  ; skip_emblem_drawing: "Skip emblem drawing". Weight 90%
  if ($rand(1,20) < 19) { var -n %dsvr.por.emblem "skip_emblem_drawing," }
  else { var -n %dsvr.por.emblem $+  }
  ; fix_infinite_quest_rewards: "Fix infinite quest rewards bug". Weight 95%
  if ($rand(1,20) < 20) { var -n %dsvr.por.quest "fix_infinite_quest_rewards," }
  else { var -n %dsvr.por.quest $+  }
  ; always_show_drop_percentages: "Always have Gambler Glasses effect". Weight 50%
  if ($rand(1,20) < 11) { var -n %dsvr.por.gambler "always_show_drop_percentages," }
  else { var -n %dsvr.por.gambler $+  }
  ; allow_mastering_charlottes_skills: "Allow Charlotte to master skills". Weight 40%
  if ($rand(1,20) < 9) { var -n %dsvr.por.spells "allow_mastering_charlottes_skills," }
  else { var -n %dsvr.por.spells $+  }
  ; show_map_markers_on_top_screen: "Show markers on top screen map". Weight 75%
  if ($rand(1,20) < 16) { var -n %dsvr.por.markers "show_map_markers_on_top_screen," }
  else { var -n %dsvr.por.markers $+  }

  ; - Sliders -
  ; item_price_range: "Item Price". Range: 100 to 15000. Default: 500
  while ($rand(1,10) != 10) && (%dsvr.por.range.price.item < 15000) {
    inc %dsvr.por.range.price.item $rand(1,400)
    if (%dsvr.por.range.price.item >= 15000) { var %dsvr.por.range.price.item 15000 }
  }
  ; echo 8 DEBUG: Set "Item Price" to %dsvr.por.range.price.item

  ; weapon_attack_range: "Weapon ATK". Range: 0.00 to 150.00. Default: 30.00
  while ($rand(1,2) != 2) && (%dsvr.por.range.wep.atk < 15000) {
    inc %dsvr.por.range.wep.atk $rand(1,3000)
    if (%dsvr.por.range.wep.atk >= 15000) { var %dsvr.por.range.wep.atk 15000 }
  }
  var %dsvr.por.range.wep.atk $calc(%dsvr.por.range.wep.atk /100)
  ; echo 8 -s DEBUG: "Weapon ATK" set to %dsvr.por.range.wep.atk

  ; weapon_iframes_range: "Weapon IFrames". 4.000 to 55.000. Default: 26.000
  while ($rand(1,2) != 2) && (%dsvr.por.range.wep.delay < 55000) {
    inc %dsvr.por.range.wep.delay $rand(1,22000)
    if (%dsvr.por.range.wep.delay >= 55000) { var %dsvr.por.range.wep.delay 55000 }
  }
  var %dsvr.por.range.wep.delay $calc(%dsvr.por.range.wep.delay /1000)
  ; echo 8 DEBUG: Set "Weapon IFrames" to %dsvr.por.range.wep.delay

  ; armor_defense_range: "Armor DEF". Range: 0.000 to 55.000. Default: 10.000
  while ($rand(1,3) != 3) && (%dsvr.por.range.arm.def < 55000) {
    inc %dsvr.por.range.arm.def $rand(1,10000)
    if (%dsvr.por.range.arm.def >= 55000) { var %dsvr.por.range.arm.def 55000 }
  }
  var %dsvr.por.range.arm.def $calc(%dsvr.por.range.arm.def /1000)
  ; echo 8 DEBUG: Set "Armor DEF" to %dsvr.por.range.arm.def

  ; item_extra_stats_range: "Other stats". Range: -25.00 to 50.00. Default: 7.00
  while ($rand(1,8) != 8) && (%dsvr.por.range.arm.bonus < 7500) {
    inc %dsvr.por.range.arm.bonus $rand(1,300)
    if (%dsvr.por.range.arm.bonus >= 7500) { var %dsvr.por.range.arm.bonus 7500 }
  }
  var %dsvr.por.range.arm.bonus $calc(%dsvr.por.range.arm.bonus /100-25)
  ; echo 8 DEBUG: Set "Other stats" to %dsvr.por.range.arm.bonus

  ; restorative_amount_range: "Restorative Amount". Range: 1.0 to 1000.0. Default: 200.0
  while ($rand(1,2) != 2) && (%dsvr.por.range.potion < 10000) {
    inc %dsvr.por.range.potion $rand(1,1990)
    if (%dsvr.por.range.potion >= 10000) { var %dsvr.por.range.potion 10000 }
  }
  var %dsvr.por.range.potion $calc(%dsvr.por.range.potion /10)
  ; echo 8 DEBUG: Set "Restorative Amount" to %dsvr.por.range.potion

  ; heart_restorative_amount_range: "Heart Repair Amount". Range: 1.00 to 350.00. Default: 75.00
  while ($rand(1,4) != 4) && (%dsvr.por.range.heart < 35000) {
    inc %dsvr.por.range.heart $rand(1,7400)
    if (%dsvr.por.range.heart >= 35000) { var %dsvr.por.range.heart 35000 }
  }
  var %dsvr.por.range.heart $calc(%dsvr.por.range.heart /100)
  ; echo 8 DEBUG: Set "Heart Repair Amount" to %dsvr.por.range.heart

  ; ap_increase_amount_range: "Attribute Point Boost Amount". Range: 1 to 65535. Default: 2000
  while ($rand(1,8) != 8) && (%dsvr.por.range.affinity < 65535) {
    inc %dsvr.por.range.affinity $rand(0,1999)
    if (%dsvr.por.range.affinity >= 65535) { var %dsvr.por.range.affinity 65535 }
  }
  ; echo 8 DEBUG: Set "Attribute Point Boost Amount" to %dsvr.por.range.affinity

  ; skill_price_range: "Subweapon/Spell Price". Range: 1000 to 30000. Default: 5000
  while ($rand(1,3) != 3) && (%dsvr.por.range.price.skill < 30000) {
    inc %dsvr.por.range.price.skill $rand(0,4000)
    if (%dsvr.por.range.price.skill >= 30000) { var %dsvr.por.range.price.skill 30000 }
  }
  ; echo 8 DEBUG: Set "Subweapon/Spell Price" to %dsvr.por.range.price.skill

  ; skill_dmg_range: "Skill Damage Multiplier". Range: 5.000 to 30.000. Default: 11.000
  while ($rand(1,3) != 3) && (%dsvr.por.range.skill.atk < 30000) {
    inc %dsvr.por.range.skill.atk $rand(0,6000)
    if (%dsvr.por.range.skill.atk >= 30000) { var %dsvr.por.range.skill.atk 30000 }
  }
  var %dsvr.por.range.skill.atk $calc(%dsvr.por.range.skill.atk /1000)
  ; echo 8 DEBUG: Set "Skill Damage Multiplier" to %dsvr.por.range.skill.atk

  ; crush_or_union_dmg_range: "Dual Crush/Glyph Union Damage Mult". Range: 15.000 to 55.000. Default: 38.000
  while ($rand(1,3) != 3) && (%dsvr.por.range.crush.atk < 55000) {
    inc %dsvr.por.range.crush.atk $rand(1,2300)
    if (%dsvr.por.range.crush.atk >= 55000) { var %dsvr.por.range.crush.atk 55000 }
  }
  var %dsvr.por.range.crush.atk $calc(%dsvr.por.range.crush.atk /1000)
  ; echo 8 DEBUG: Set "Dual Crush/Glyph Union Damage Mult" to %dsvr.por.range.crush.atk

  ; skill_iframes_range: "Skill IFrames". Range: 4.000 to 55.000. Default: 26.000
  while ($rand(1,4) != 4) && (%dsvr.por.range.skill.delay < 55000) {
    inc %dsvr.por.range.skill.delay $rand(1,2200)
    if (%dsvr.por.range.skill.delay >= 55000) { var %dsvr.por.range.skill.delay 55000 }
  }
  var %dsvr.por.range.skill.delay $calc(%dsvr.por.range.skill.delay /1000)
  ; echo 8 DEBUG: Set "Skill IFrames" to %dsvr.por.range.skill.delay

  ; subweapon_sp_to_master_range: "Subweapon SP To Master". Range: 100.0 to 2000.0. Default: 100.0
  while ($rand(1,6) != 6) && (%dsvr.por.range.mastery < 20000) {
    inc %dsvr.por.range.mastery $rand(1,2000)
    if (%dsvr.por.range.mastery >= 20000) { var %dsvr.por.range.mastery 20000 }
  }
  var %dsvr.por.range.mastery $calc(%dsvr.por.range.mastery /10)
  ; echo 8 DEBUG: Set "Subweapon SP To Master" to %dsvr.por.range.mastery

  ; spell_charge_time_range: "Spell Charge Time". Range: 8.00 to 120.00. Default: 32.00
  while ($rand(1,4) != 4) && (%dsvr.por.range.windup < 12000) {
    inc %dsvr.por.range.windup $rand(1,2400)
    if (%dsvr.por.range.windup >= 12000) { var %dsvr.por.range.windup 12000 }
  }
  var %dsvr.por.range.windup $calc(%dsvr.por.range.windup /100)
  ; echo 8 DEBUG: Set "Spell Charge Time" to %dsvr.por.range.windup

  ; skill_mana_cost_range: "Skill Mana Cost". Range: 1.000 to 60.000. Default: 25.000
  while ($rand(1,3) != 3) && (%dsvr.por.range.skill.cost < 60000) {
    inc %dsvr.por.range.skill.cost $rand(1,2400)
    if (%dsvr.por.range.skill.cost >= 60000) { var %dsvr.por.range.skill.cost 60000 }
  }
  var %dsvr.por.range.skill.cost $calc(%dsvr.por.range.skill.cost /1000)
  ; echo 8 DEBUG: Set "Skill Mana Cost" to %dsvr.por.range.skill.cost

  ; crush_mana_cost_range: "Dual Crush Mana Cost". Range: 50.00 to 200.00. Default: 50.00
  while ($rand(1,6) != 6) && (%dsvr.por.range.dual.cost < 20000) {
    inc %dsvr.por.range.dual.cost $rand(1,2000)
    if (%dsvr.por.range.dual.cost >= 20000) { var %dsvr.por.range.dual.cost 20000 }
  }
  var %dsvr.por.range.dual.cost $calc(%dsvr.por.range.dual.cost /100)
  ; echo 8 DEBUG: Set "Dual Crush Mana Cost" to %dsvr.por.range.dual.cost

  ; union_heart_cost_range: "Glyph Union Heart Cost". Range: 5.000 to 50.000. Default: 10.000
  while ($rand(1,8) != 8) && (%dsvr.por.range.union.cost < 50000) {
    inc %dsvr.por.range.union.cost $rand(1,5000)
    if (%dsvr.por.range.union.cost >= 50000) { var %dsvr.por.range.union.cost 50000 }
  }
  var %dsvr.por.range.union.cost $calc(%dsvr.por.range.union.cost /1000)
  ; echo 8 DEBUG: Set "Glyph Union Heart Cost" to %dsvr.por.range.union.cost

  ; skill_max_at_once_range: "Skill Max-on-screen". Range: 1.000 to 8.000. Default: 2.000
  while ($rand(1,3) != 3) && (%dsvr.por.range.skill.active < 8000) {
    inc %dsvr.por.range.skill.active $rand(1,1000)
    if (%dsvr.por.range.skill.active >= 8000) { var %dsvr.por.range.skill.active 8000 }
  }
  var %dsvr.por.range.skill.active $calc(%dsvr.por.range.skill.active /1000)
  ; echo 8 DEBUG: Set "Skill Max-on-screen" to %dsvr.por.range.skill.active

  ; glyph_attack_delay_range: "Glyph Attack Delay". Range: 1.000 to 20.000. Default: 7.000
  while ($rand(1,3) != 3) && (%dsvr.por.range.glyph.cooldown < 20000) {
    inc %dsvr.por.range.glyph.cooldown $rand(1,6000)
    if (%dsvr.por.range.glyph.cooldown >= 20000) { var %dsvr.por.range.glyph.cooldown 20000 }
  }
  var %dsvr.por.range.glyph.cooldown $calc(%dsvr.por.range.glyph.cooldown /1000)
  ; echo 8 DEBUG: Set "Glyph Attack Delay" to %dsvr.por.range.glyph.cooldown

  ; item_drop_chance_range: "Item Drop Chance". Range: 1.000 to 25.000. Default: 13.000
  while ($rand(1,4) = 4) && (%dsvr.por.range.loot.item < 25000) {
    inc %dsvr.por.range.loot.item $rand(1,12000)
    if (%dsvr.por.range.loot.item >= 25000) { var %dsvr.por.range.loot.item 25000 }
  }
  var %dsvr.por.range.loot.item $calc(%dsvr.por.range.loot.item /1000)
  ; echo 8 DEBUG: Set "Item Drop Chance" to %dsvr.por.range.loot.item

  ; skill_drop_chance_range: "Soul/Glyph Drop Chance". Range: 1.000 to 15.000. Default: 8.000
  while ($rand(1,2) != 2) && (%dsvr.por.range.loot.skill < 15000) {
    inc %dsvr.por.range.loot.skill $rand(1,700)
    if (%dsvr.por.range.loot.skill >= 15000) { var %dsvr.por.range.loot.skill 15000 }
  }
  var %dsvr.por.range.loot.skill $calc(%dsvr.por.range.loot.skill /1000)
  ; echo 8 DEBUG: Set "Soul/Glyph Drop Chance" to %dsvr.por.range.loot.skill

  ; item_placement_weight: "Item Placement Weight". Range: 0.10 to 100.00. Default: 55.00
  while ($rand(1,4) != 4) && (%dsvr.por.range.scav.item < 10000) {
    inc %dsvr.por.range.scav.item $rand(1,549)
    if (%dsvr.por.range.scav.item >= 10000) { var %dsvr.por.range.scav.item 10000 }
  }
  var %dsvr.por.range.scav.item $calc(%dsvr.por.range.scav.item /100)
  ; echo 8 DEBUG: Set "Item Placement Weight" to %dsvr.por.range.scav.item

  ; soul_candle_placement_weight: "Soul Candle Placement Weight (DoS)". Range: 0.10 to 100.00. Default: 8.00
  while ($rand(1,8) != 8) && (%dsvr.por.range.scav.candle < 10000) {
    inc %dsvr.por.range.scav.candle $rand(1,790)
    if (%dsvr.por.range.scav.candle >= 10000) { var %dsvr.por.range.scav.candle 10000 }
  }
  var %dsvr.por.range.scav.candle $calc(%dsvr.por.range.scav.candle /100)
  ; echo 8 DEBUG: Set "Soul Candle Placement Weight" to %dsvr.por.range.scav.candle

  ; por_skill_placement_weight: "Skill Placement Weight (PoR)". Range: 0.10 to 100.00. Default: 25.00
  while ($rand(1,2) != 2) && (%dsvr.por.range.scav.skill < 10000) {
    inc %dsvr.por.range.scav.skill $rand(1,2490)
    if (%dsvr.por.range.scav.skill >= 10000) { var %dsvr.por.range.scav.skill 10000 }
  }
  var %dsvr.por.range.scav.skill $calc(%dsvr.por.range.scav.skill /100)
  ; echo 8 DEBUG: Set "Skill Placement Weight (PoR)" to %dsvr.por.range.scav.skill

  ; glyph_placement_weight: "Glyph Placement Weight (OoE)". Range: 0.10 to 100.00. Default: 25.00
  while ($rand(1,3) != 3) && (%dsvr.por.range.scav.glyph < 10000) {
    inc %dsvr.por.range.scav.glyph $rand(1,2490)
    if (%dsvr.por.range.scav.glyph >= 10000) { var %dsvr.por.range.scav.glyph 10000 }
  }
  var %dsvr.por.range.scav.glyph $calc(%dsvr.por.range.scav.glyph /100)
  ; echo 8 DEBUG: Set "Glyph Placement Weight (OoE)" to %dsvr.por.range.scav.glyph

  ; max_up_placement_weight: "Max Up Placement Weight". Range: 0.10 to 100.00. Default: 18.00
  while ($rand(1,4) != 4) && (%dsvr.por.range.scav.max < 10000) {
    inc %dsvr.por.range.scav.max $rand(1,1790)
    if (%dsvr.por.range.scav.max >= 10000) { var %dsvr.por.range.scav.max 10000 }
  }
  var %dsvr.por.range.scav.max $calc(%dsvr.por.range.scav.max /100)
  ; echo 8 DEBUG: Set "Max Up Placement Weight" to %dsvr.por.range.scav.max

  ; money_placement_weight: "Money Placement Weight". Range: 0.10 to 100.00. Default: 2.00
  while ($rand(1,10) != 10) && (%dsvr.por.range.scav.cash < 10000) {
    inc %dsvr.por.range.scav.cash $rand(1,190)
    if (%dsvr.por.range.scav.cash >= 10000) { var %dsvr.por.range.scav.cash 10000 }
  }
  var %dsvr.por.range.scav.cash $calc(%dsvr.por.range.scav.cash /100)
  ; echo 8 DEBUG: Set "Money Placement Weight" to %dsvr.por.range.scav.cash

  ; max_room_difficulty_mult: "Max Room Total Attack Multiplier". Range: 1.0000 to 5.0000. Default: 2.0000
  while ($rand(1,3) != 3) && (%dsvr.por.range.enemy.room < 50000) {
    inc %dsvr.por.range.enemy.room $rand(1,7500)
    if (%dsvr.por.range.enemy.room >= 50000) { var %dsvr.por.range.enemy.room 50000 }
  }
  var %dsvr.por.range.enemy.room $calc(%dsvr.por.range.enemy.room /10000)
  ; echo 8 DEBUG: Set "Max Room Total Attack Multiplier" to %dsvr.por.range.enemy.room

  ; max_enemy_difficulty_mult: "Max Enemy Attack Difference Multiplier". Range: 1.0000 to 5.0000. Default: 1.3000
  while ($rand(1,8) != 8) && (%dsvr.por.range.enemy.atk < 50000) {
    inc %dsvr.por.range.enemy.atk $rand(1,3000)
    if (%dsvr.por.range.enemy.atk >= 50000) { var %dsvr.por.range.enemy.atk 50000 }
  }
  var %dsvr.por.range.enemy.atk $calc(%dsvr.por.range.enemy.atk /10000)
  ; echo 8 DEBUG: Set "Max Enemy Attack Difference Multiplier" to %dsvr.por.range.enemy.atk

  ; enemy_id_preservation_exponent: "Enemy ID Number Difference Weighting". Range: 0.0000 to 5.0000. Default: 3.0000
  while ($rand(1,3) != 3) && (%dsvr.por.range.enemy.id < 50000) {
    inc %dsvr.por.range.enemy.id $rand(1,3000)
    if (%dsvr.por.range.enemy.id >= 50000) { var %dsvr.por.range.enemy.id 50000 }
  }
  var %dsvr.por.range.enemy.id $calc(%dsvr.por.range.enemy.id /10000)
  ; echo 8 DEBUG: Set "Enemy ID Number Difference Weighting" to %dsvr.por.range.enemy.id

  ; enemy_stat_mult_range: "Common Enemy Stat Multiplier". Range: 0.5000 to 2.5000. Default: 1.0000
  while ($rand(1,3) != 3) && (%dsvr.por.range.enemy.stat < 25000) {
    inc %dsvr.por.range.enemy.stat $rand(1,5000)
    if (%dsvr.por.range.enemy.stat >= 25000) { var %dsvr.por.range.enemy.stat 25000 }
  }
  var %dsvr.por.range.enemy.stat $calc(%dsvr.por.range.enemy.stat /10000)
  ; echo 8 DEBUG: Set "Common Enemy Stat Multiplier" to %dsvr.por.range.enemy.stat

  ; enemy_num_weaknesses_range: "Common Enemy # of Weaknesses". Range: 0.000 to 8.000. Default: 2.000
  while ($rand(1,2) != 2) && (%dsvr.por.range.enemy.weak < 8000) {
    inc %dsvr.por.range.enemy.weak $rand(1,2000)
    if (%dsvr.por.range.enemy.weak >= 8000) { var %dsvr.por.range.enemy.weak 8000 }
  }
  var %dsvr.por.range.enemy.weak $calc(%dsvr.por.range.enemy.weak /1000)
  ; echo 8 DEBUG: Set "Common Enemy # of Weaknesses" to %dsvr.por.range.enemy.weak

  ; enemy_num_resistances_range: "Common Enemy # of Resistances". Range: 0.000 to 8.000. Default: 2.000
  while ($rand(1,2) != 2) && (%dsvr.por.range.enemy.resist < 8000) {
    inc %dsvr.por.range.enemy.resist $rand(1,2000)
    if (%dsvr.por.range.enemy.resist >= 8000) { var %dsvr.por.range.enemy.resist 8000 }
  }
  var %dsvr.por.range.enemy.resist $calc(%dsvr.por.range.enemy.resist /1000)
  ; echo 8 DEBUG: Set "Common Enemy # of Resistances" to %dsvr.por.range.enemy.resist

  ; boss_stat_mult_range: "Boss Stat Multiplier". Range: 0.7500 to 1.2500. Default: 1.0000
  while ($rand(1,3) = 3) && (%dsvr.por.range.boss.stat < 12500) {
    inc %dsvr.por.range.boss.stat $rand(1,2500)
    if (%dsvr.por.range.boss.stat >= 12500) { var %dsvr.por.range.boss.stat 12500 }
  }
  var %dsvr.por.range.boss.stat $calc(%dsvr.por.range.boss.stat /10000)
  ; echo 8 DEBUG: Set "Boss Stat Multiplier" to %dsvr.por.range.boss.stat

  ; enemy_anim_speed_mult_range: "Enemy Anim Speed Multiplier". Range: 0.3300 to 3.0000. Default: 0.9000
  while ($rand(1,3) != 3) && (%dsvr.por.range.enemy.speed < 30000) {
    inc %dsvr.por.range.enemy.speed $rand(1,5700)
    if (%dsvr.por.range.enemy.speed >= 30000) { var %dsvr.por.range.enemy.speed 30000 }
  }
  var %dsvr.por.range.enemy.speed $calc(%dsvr.por.range.enemy.speed /10000)
  ; echo 8 DEBUG: Set "Enemy Anim Speed Multiplier" to %dsvr.por.range.enemy.speed

  ; starting_room_max_difficulty: "Max Average Attack of Starting Area". Range: 15.00 to 75.00. Default: 22.00
  while ($rand(1,4) != 4) && (%dsvr.por.range.start.room < 7500) {
    inc %dsvr.por.range.start.room $rand(1,700)
    if (%dsvr.por.range.start.room >= 7500) { var %dsvr.por.range.start.room 7500 }
  }
  var %dsvr.por.range.start.room $calc(%dsvr.por.range.start.room /100)
  ; echo 8 DEBUG: Set "Max Average Attack of Starting Area" to %dsvr.por.range.start.room

  ; num_bonus_starting_items: "Number of Bonus Items to Add to Start With". Range: 0.0000 to 5.0000. Default: 2.0000
  while ($rand(1,5) = 5) && (%dsvr.por.range.start.item < 50000) {
    inc %dsvr.por.range.start.item $rand(1,20000)
    if (%dsvr.por.range.start.item >= 50000) { var %dsvr.por.range.start.item 50000 }
  }
  var %dsvr.por.range.start.item $calc(%dsvr.por.range.start.item /10000)
  ; echo 8 DEBUG: Set "Number of Bonus Items to Add to Start With" to %dsvr.por.range.start.item

  ; num_bonus_starting_skills: "Number of Bonus Skills to Add to Start With". Range: 0.0000 to 5.0000. Default: 2.0000
  while ($rand(1,5) = 5) && (%dsvr.por.range.start.skill < 50000) {
    inc %dsvr.por.range.start.skill $rand(1,20000)
    if (%dsvr.por.range.start.skill >= 50000) { var %dsvr.por.range.start.skill 50000 }
  }
  var %dsvr.por.range.start.skill $calc(%dsvr.por.range.start.skill /10000)
  ; echo 8 DEBUG: Set "Number of Bonus Skills to Add to Start With" to %dsvr.por.range.start.skill

  var %dsvr.por.flagstring $remove($strip(%dsvr.por.pickups %dsvr.por.portals %dsvr.por.maps %dsvr.por.start %dsvr.por.enemy.loc %dsvr.por.boss.loc %dsvr.por.enemy.loot %dsvr.por.enemy.rarity %dsvr.por.enemy.power %dsvr.por.enemy.speed %dsvr.por.enemy.tol %dsvr.por.potions %dsvr.por.wep.type %dsvr.por.skill.type %dsvr.por.equips %dsvr.por.skill.stats %dsvr.por.atkelem %dsvr.por.shops %dsvr.por.glitched %dsvr.por.scaled %dsvr.por.scav %dsvr.por.desc %dsvr.por.unlock %dsvr.por.peep %dsvr.por.dex %dsvr.por.popup %dsvr.por.quick %dsvr.por.xbutton %dsvr.por.easyresist %dsvr.por.emblem %dsvr.por.quest %dsvr.por.gambler %dsvr.por.spells %dsvr.por.markers $lf),")
  ; echo 8 -s DEBUG: Flagstring is %dsvr.por.flagstring

  bread template.dsvrpreset 0 684 &dsvr.por.file
  write -c portrait.dsvrpreset
  bwrite -ca portrait.dsvrpreset 0 -1 &dsvr.por.file
  ; write -cn portrait.dsvrpreset DSVRandom Options Preset, Game: Portrait of Ruin, Randomizer version: 1.4.6
  write -l2 portrait.dsvrpreset Selected options: %dsvr.por.flagstring
  write -l3 portrait.dsvrpreset Difficulty level: Custom, settings: $+ $lf
  write -al4 portrait.dsvrpreset item_price_range: %dsvr.por.range.price.item $+ $lf
  write -al5 portrait.dsvrpreset weapon_attack_range: %dsvr.por.range.wep.atk $+ $lf
  write -al6 portrait.dsvrpreset weapon_iframes_range: %dsvr.por.range.wep.delay $+ $lf
  write -al7 portrait.dsvrpreset armor_defense_range: %dsvr.por.range.arm.def $+ $lf
  write -al8 portrait.dsvrpreset item_extra_stats_range: %dsvr.por.range.arm.bonus $+ $lf
  write -al9 portrait.dsvrpreset restorative_amount_range: %dsvr.por.range.potion $+ $lf
  write -al10 portrait.dsvrpreset heart_restorative_amount_range: %dsvr.por.range.heart $+ $lf
  write -al11 portrait.dsvrpreset ap_increase_amount_range: %dsvr.por.range.affinity $+ $lf
  write -al12 portrait.dsvrpreset skill_price_range: %dsvr.por.range.price.skill $+ $lf
  write -al13 portrait.dsvrpreset skill_dmg_range: %dsvr.por.range.skill.atk $+ $lf
  write -al14 portrait.dsvrpreset crush_or_union_dmg_range: %dsvr.por.range.crush.atk $+ $lf
  write -al15 portrait.dsvrpreset skill_iframes_range: %dsvr.por.range.skill.delay $+ $lf
  write -al16 portrait.dsvrpreset subweapon_sp_to_master_range: %dsvr.por.range.mastery $+ $lf
  write -al17 portrait.dsvrpreset spell_charge_time_range: %dsvr.por.range.windup $+ $lf
  write -al18 portrait.dsvrpreset skill_mana_cost_range: %dsvr.por.range.skill.cost $+ $lf
  write -al19 portrait.dsvrpreset crush_mana_cost_range: %dsvr.por.range.dual.cost $+ $lf
  write -al20 portrait.dsvrpreset union_heart_cost_range: %dsvr.por.range.union.cost $+ $lf
  write -al21 portrait.dsvrpreset skill_max_at_once_range: %dsvr.por.range.skill.active $+ $lf
  write -al22 portrait.dsvrpreset glyph_attack_delay_range: %dsvr.por.range.glyph.cooldown $+ $lf
  write -al23 portrait.dsvrpreset item_drop_chance_range: %dsvr.por.range.loot.item $+ $lf
  write -al24 portrait.dsvrpreset skill_drop_chance_range: %dsvr.por.range.loot.skill $+ $lf
  write -al25 portrait.dsvrpreset item_placement_weight: %dsvr.por.range.scav.item $+ $lf
  write -al26 portrait.dsvrpreset soul_candle_placement_weight: %dsvr.por.range.scav.candle $+ $lf
  write -al27 portrait.dsvrpreset por_skill_placement_weight: %dsvr.por.range.scav.skill $+ $lf
  write -al28 portrait.dsvrpreset glyph_placement_weight: %dsvr.por.range.scav.glyph $+ $lf
  write -al29 portrait.dsvrpreset max_up_placement_weight: %dsvr.por.range.scav.max $+ $lf
  write -al30 portrait.dsvrpreset money_placement_weight: %dsvr.por.range.scav.cash $+ $lf
  write -al31 portrait.dsvrpreset max_room_difficulty_mult: %dsvr.por.range.enemy.room $+ $lf
  write -al32 portrait.dsvrpreset max_enemy_difficulty_mult: %dsvr.por.range.enemy.atk $+ $lf
  write -al33 portrait.dsvrpreset enemy_id_preservation_exponent: %dsvr.por.range.enemy.id $+ $lf
  write -al34 portrait.dsvrpreset enemy_stat_mult_range: %dsvr.por.range.enemy.stat $+ $lf
  write -al35 portrait.dsvrpreset enemy_num_weaknesses_range: %dsvr.por.range.enemy.weak $+ $lf
  write -al36 portrait.dsvrpreset enemy_num_resistances_range: %dsvr.por.range.enemy.resist $+ $lf
  write -al37 portrait.dsvrpreset boss_stat_mult_range: %dsvr.por.range.boss.stat $+ $lf
  write -al38 portrait.dsvrpreset enemy_anim_speed_mult_range: %dsvr.por.range.enemy.speed $+ $lf
  write -al39 portrait.dsvrpreset starting_room_max_difficulty: %dsvr.por.range.start.room $+ $lf
  write -al40 portrait.dsvrpreset num_bonus_starting_items: %dsvr.por.range.start.item $+ $lf
  write -al41 portrait.dsvrpreset num_bonus_starting_skills: %dsvr.por.range.start.skill $+ $lf
}
