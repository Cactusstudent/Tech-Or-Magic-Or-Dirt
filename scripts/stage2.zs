//低级机械框架
val t = <tag:items:forge:treated_wood>;
val p = <tag:items:forge:plates/iron>;
craftingTable.removeRecipe(<item:industrialforegoing:machine_frame_pity>);
craftingTable.addShaped("machine_frame_pity", <item:industrialforegoing:machine_frame_pity>, [
    [t, p, t],
    [p, <tag:items:forge:storage_blocks/redstone>, p],
    [t, p, t]
]);
//动能发电机
craftingTable.removeRecipe(<item:immersiveengineering:dynamo>);
craftingTable.addShaped("dynamo", <item:immersiveengineering:dynamo>, [
    [<item:immersiveengineering:coil_lv>, p, <item:immersiveengineering:coil_lv>],
    [p, <item:industrialforegoing:machine_frame_pity>, p],
    [<item:immersiveengineering:coil_lv>, p, <item:immersiveengineering:coil_lv>]
]);
//铜线圈
val c = <tag:items:forge:plates/copper>;
val w = <tag:items:forge:wires/copper>;
craftingTable.removeRecipe(<item:immersiveengineering:coil_lv>);
craftingTable.addShaped("coil_lv", <item:immersiveengineering:coil_lv>, [
    [c, w, c],
    [w, <tag:items:forge:ingots/iron>, w],
    [c, w, c]
]);
//基础反应堆
val u = <item:powah:uraninite>;
val b = <item:powah:capacitor_basic>;
craftingTable.removeRecipe(<item:powah:reactor_starter>);
craftingTable.addShaped("capacitor_basic", <item:powah:reactor_starter>, [
    [u, b, u],
    [b, <tag:items:industrialforegoing:machine_frame/simple>, b],
    [u, b, u]
]);
//删除其余Powah反应堆配方
craftingTable.removeRecipe(<item:powah:reactor_basic>);
craftingTable.removeRecipe(<item:powah:reactor_hardened>);
craftingTable.removeRecipe(<item:powah:reactor_blazing>);
craftingTable.removeRecipe(<item:powah:reactor_niotic>);
craftingTable.removeRecipe(<item:powah:reactor_spirited>);
craftingTable.removeRecipe(<item:powah:reactor_nitro>);
//FluxPower全模组合成更改
import crafttweaker.api.recipe.Replacer;
Replacer.forMods("fluxnetworks")
    .replace(<item:fluxnetworks:flux_core>, <item:powah:ender_gate_starter>)
    .execute();
craftingTable.removeRecipe(<item:fluxnetworks:flux_block>);
//化学溶解室
craftingTable.removeRecipe(<item:industrialforegoing:dissolution_chamber>);
craftingTable.addShaped("dissolution_chamber", <item:industrialforegoing:dissolution_chamber>, [
    [<tag:items:forge:plastic>, <item:ironchest:iron_chest>, <tag:items:forge:plastic>],
    [<item:minecraft:bucket>, <item:industrialforegoing:machine_frame_pity>, <item:minecraft:bucket>],
    [<item:mekanism:ingot_copper>, <tag:items:forge:gears/lead>, <item:mekanism:ingot_copper>],
]);
//节点物品2
craftingTable.addShaped("stage3_unlock", <item:kubejs:stage3_unlock>, [
    [<tag:items:forge:plastic>, <tag:items:forge:gears/lead>, <tag:items:forge:plastic>],
    [<item:powah:energy_cable_starter>, <item:industrialforegoing:machine_frame_pity>, <item:powah:energy_cable_starter>],
    [<item:powah:steel_energized>, <tag:items:forge:gears/lead>, <item:powah:steel_energized>]
]);