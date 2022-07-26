//Thermal机器框架
val g = <tag:items:forge:glass>;
val e = <item:create:cogwheel>;
craftingTable.removeRecipe(<item:thermal:machine_frame>);
craftingTable.addShaped("machine_frame", <item:thermal:machine_frame> * 2, [
    [g, g, g],
    [e, <item:kubejs:stage3_unlock>, e],
    [g, g, g]
]);
//红石线圈配方
val a = <item:minecraft:air>;
craftingTable.removeRecipe(<item:thermal:rf_coil>);
craftingTable.addShaped("rf_coil", <item:thermal:rf_coil>, [
    [a, a, <tag:items:forge:dusts/redstone>],
    [a, <tag:items:forge:ingots/copper>, a],
    [<tag:items:forge:dusts/redstone>, a, a]
]);
//窑砖
val t = <tag:items:forge:terracotta>;
val r = <tag:items:forge:plates/iron>;
craftingTable.removeRecipe(<item:immersiveengineering:alloybrick>);
craftingTable.addShaped("alloybrick", <item:immersiveengineering:alloybrick> * 8, [
    [t, r, t],
    [r, <item:ceramics:kiln>, r],
    [t, r, t]
]);
//圆石和套娃
val c = <item:minecraft:cobblestone>;
val o = <item:kubejs:cobble_press_2>;
val b = <item:kubejs:cobble_press_3>;
craftingTable.addShaped("cobble_press_2", <item:kubejs:cobble_press_2>, [
    [c, c, c],
    [c, c, c],
    [c, c, c]
]);
craftingTable.addShaped("cobble_press_3", <item:kubejs:cobble_press_3>, [
    [o, o, o],
    [o, o, o],
    [o, o, o]
]);
craftingTable.addShaped("cobble_press_4", <item:kubejs:cobble_press_4>, [
    [b, b, b],
    [b, b, b],
    [b, b, b]
]);
//魔力灌注
import mods.botania.ManaInfusion;
<recipetype:botania:mana_infusion>.addRecipe("seared_melter", <item:tconstruct:foundry_controller>, <item:tconstruct:smeltery_controller>, 5000);
<recipetype:botania:mana_infusion>.addRecipe("obsdian", <item:minecraft:obsidian>, <item:kubejs:cobble_press_4>, 10000);
<recipetype:botania:mana_infusion>.addRecipe("lava", <item:ceramics:cracked_clay_bucket>.withTag({fluid: "minecraft:lava" as string}), <item:ceramics:cracked_clay_bucket>.withTag({fluid: "tconstruct:molten_obsidian" as string}), 10000);
//磨粉机
craftingTable.removeRecipe(<item:thermal:machine_pulverizer>);
craftingTable.addShaped("machine_pulverizer", <item:thermal:machine_pulverizer>, [
    [a, <item:kubejs:pulverizer_unlock>, a],
    [<item:minecraft:flint>, <item:thermal:machine_frame>, <item:minecraft:flint>],
    [<tag:items:forge:gears/iron>, <item:thermal:rf_coil>, <tag:items:forge:gears/iron>]
]);
//合金炉
craftingTable.removeRecipe(<item:thermal:machine_smelter>);
craftingTable.addShaped("machine_smelter", <item:thermal:machine_smelter>, [
    [a, <item:kubejs:smelter_unlock>, a],
    [<tag:items:forge:sand>, <item:thermal:machine_frame>, <tag:items:forge:sand>],
    [<tag:items:forge:gears/invar>, <item:thermal:rf_coil>, <tag:items:forge:gears/invar>]
]);
//磨粉机核心，合金炉核心
<recipetype:create:mechanical_crafting>.addRecipe("pulverizer_unlock", <item:kubejs:pulverizer_unlock>, [[<item:minecraft:air>, <item:minecraft:piston>, <item:minecraft:air>], [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>], [<item:thermal:lead_gear>, <item:kubejs:stage3_unlock>, <item:thermal:lead_gear>], [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:piston>, <item:minecraft:air>]]);
<recipetype:create:mechanical_crafting>.addRecipe("smelter_unlock", <item:kubejs:smelter_unlock>, [[<item:minecraft:air>, <tag:items:forge:coal_coke>, <item:minecraft:air>], [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>], [<item:thermal:lead_gear>, <item:kubejs:stage3_unlock>, <item:thermal:lead_gear>], [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>], [<item:minecraft:air>, <tag:items:forge:coal_coke>, <item:minecraft:air>]]);
//高炉砖
craftingTable.removeRecipe(<item:immersiveengineering:blastbrick>);
<recipetype:thermal:furnace>.addRecipe("blastbrick_wip", <item:kubejs:blastbrick_wip>, <item:immersiveengineering:cokebrick>, 2, 800);
val n = <tag:items:forge:ingots/nether_brick>;
val k = <tag:items:forge:ingots/brick>;
craftingTable.addShaped("blastbrick", <item:immersiveengineering:blastbrick>, [
    [a, n, a],
    [k, <item:kubejs:blastbrick_wip>, k],
    [a, n, a]
]);
//删除Space-BossTools高炉
craftingTable.removeRecipe(<item:boss_tools:blast_furnace>);
craftingTable.removeRecipe(<item:boss_tools_giselle_addon:electric_blast_furnace>);
//节点物品3
craftingTable.addShaped("stage4_unlock", <item:kubejs:stage4_unlock>, [
    [a, <tag:items:forge:storage_blocks/steel>, a],
    [<item:thermal:redstone_servo>, <item:thermal:machine_frame>, <item:thermal:rf_coil>],
    [a, <tag:items:forge:storage_blocks/steel>, a]
]);