//压实腐肉块
craftingTable.addShapeless("rotten_flesh_block", <item:kubejs:rotten_flesh_block> * 4, [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>]);
//植育一号
craftingTable.addShapeless("phytogro", <item:thermal:phytogro> * 4, [<item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:rotten_flesh>, <item:minecraft:bone_meal>]);
//橡木台阶
craftingTable.removeRecipe(<item:minecraft:oak_slab>);
craftingTable.addShapeless("wood_slab", <item:minecraft:oak_slab> * 4, [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>]);
//橡木木板
craftingTable.removeRecipe(<item:minecraft:oak_planks> * 4);
craftingTable.addShapeless("oak_planks", <item:minecraft:oak_planks> * 8, [<item:minecraft:oak_log>]);
//白雏菊
craftingTable.removeRecipe(<item:botania:pure_daisy>);
val w = <item:botania:white_petal>;
craftingTable.addShaped("pure_daisy", <item:botania:pure_daisy>, [
    [w, w, w],
    [w, <item:thermal:phytogro>, w],
    [w, w, w]
]);
//园艺土
val i = <item:minecraft:air>;
craftingTable.addShaped("garden_soil", <item:kubejs:garden_soil>, [
    [i, <item:minecraft:rotten_flesh>, i],
    [<item:minecraft:rotten_flesh>, <item:minecraft:bone_meal>, <item:minecraft:rotten_flesh>],
    [i, <item:minecraft:rotten_flesh>, i]
]);
//浮空花
craftingTable.removeRecipe(<item:botania:floating_pure_daisy>);
craftingTable.addShapeless("floating_pure_daisy", <item:botania:floating_pure_daisy>, [<item:botania:pure_daisy>, <item:kubejs:garden_soil>]);
//下级耕地
craftingTable.removeRecipe(<item:mysticalagriculture:inferium_farmland>);
import mods.botania.PureDaisy;
<recipetype:botania:pure_daisy>.addRecipe("inferium_farmland", <blockstate:mysticalagriculture:inferium_farmland>, <blockstate:cyclic:peat_unbaked>, 150);
//木剪刀
craftingTable.removeRecipe(<item:woodenshears:wooden_shears>);
craftingTable.addShaped("wood_cut", <item:woodenshears:wooden_shears>, [
    [i, <tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>],
    [i, i, <tag:items:forge:rods/wooden>],
    [i, i, i]
]);
//干燥泥炭田
craftingTable.removeRecipe(<item:cyclic:peat_unbaked>);
val g = <item:minecraft:grass>;
craftingTable.addShaped("peat_unbaked", <item:cyclic:peat_unbaked>, [
    [g, g, g],
    [g, <item:kubejs:garden_soil>, g],
    [g, g, g]
]);
//节点物品0
val s = <item:kubejs:garden_soil>;
val f = <item:mysticalagriculture:inferium_farmland>;
craftingTable.addShaped("stage1_unlock", <item:kubejs:stage1_unlock>, [
    [s, f, s],
    [f, <item:minecraft:oak_sapling>, f],
    [s, f, s]
]);