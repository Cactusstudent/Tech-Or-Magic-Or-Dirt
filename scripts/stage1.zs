//石头
val q = <item:kubejs:quartz_dust>;
val b = <item:minecraft:bone_meal>;
val o = <item:kubejs:mixed_stone>;
craftingTable.addShapeless("miexed_stone", <item:kubejs:mixed_stone>, [q, q, b ,b]);
craftingTable.addShapeless("stone", <item:minecraft:stone> * 2 , [o, o, o, o]);
//替换create的安山合金为KubeJS自定义的石头合金
import crafttweaker.api.recipe.Replacer;
Replacer.forMods("create")//更改所有Create配方
    .replace(<item:create:andesite_alloy>, <item:kubejs:stone_alloy>)
    .suppressWarnings()
    .execute();
//石头合金
val s = <item:kubejs:stone_alloy>;
val p = <tag:items:minecraft:planks>;
val a = <item:minecraft:air>;
craftingTable.addShapedMirrored("stone_alloy", <item:kubejs:stone_alloy>, [
    [s, p, a],
    [p, s, a],
    [a, a, a]
]);
//粉碎轮
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:crushing_wheel>);
craftingTable.addShaped("crushing_wheel", <item:create:crushing_wheel> * 2, [
    [s, p, s],
    [p, <tag:items:forge:stone>, p],
    [s, p, s]
]);
//获得水
val l = <item:minecraft:oak_leaves>;
craftingTable.addShaped("water_bucket", <item:ceramics:clay_bucket>.withTag({fluid: "minecraft:water" as string}), [
    [l, l, l],
    [l, <item:ceramics:clay_bucket>, l],
    [l, l, l]
]);
//魔力池
val r = <item:botania:livingrock>;
craftingTable.removeRecipe(<item:botania:mana_pool>);
craftingTable.removeRecipe(<item:botania:diluted_pool>);
craftingTable.addShaped("diluted_pool", <item:botania:diluted_pool>, [
    [a, a, a],
    [r, a, r],
    [r, r, r]
]);
val d = <item:botania:diluted_pool>;
craftingTable.addShaped("mana_pool", <item:botania:mana_pool>, [
    [d, d, d],
    [d, r, d],
    [d, d, d]
]);
//砂纸配方删除
craftingTable.removeRecipe(<item:create:sand_paper>);
craftingTable.removeRecipe(<item:create:red_sand_paper>);
mods.jei.JEI.hideItem(<item:create:sand_paper>);
mods.jei.JEI.hideItem(<item:create:red_sand_paper>);
//磨制玫瑰石英
<recipetype:botania:mana_infusion>.addRecipe("rose_quartz", <item:create:polished_rose_quartz>, <item:create:rose_quartz>, 100);
//冶炼炉控制器
<recipetype:tconstruct:casting_basin>.removeRecipe(<item:tconstruct:smeltery_controller>);
//凝矿兰合成
val n = <item:minecraft:stone>;
<recipetype:create:mechanical_crafting>.addRecipe("orechid", <item:botania:orechid>, [[l, l, l, l], [l, <tag:items:rftoolsutility:living/living>, <item:botania:diluted_pool>, l], [l, <item:botania:rune_earth>, <item:botania:rune_water>, l], [l, l, l, l,]]);
//符文合成
import mods.botania.RuneAltar;
<recipetype:botania:runic_altar>.removeRecipe(<item:botania:rune_earth>);
<recipetype:botania:runic_altar>.removeRecipe(<item:botania:rune_water>);
<recipetype:botania:runic_altar>.addRecipe("rune_water", <item:botania:rune_water>, 10000, <item:minecraft:nautilus_shell>, <item:minecraft:fishing_rod>, <tag:items:botania:livingrock>);
<recipetype:botania:runic_altar>.addRecipe("rune_earth", <item:botania:rune_earth>, 10000, <item:mysticalagriculture:inferium_block>, <tag:items:forge:stone>, <tag:items:forge:storage_blocks/charcoal>);
//魔力灌注
import mods.botania.ManaInfusion;
<recipetype:botania:mana_infusion>.addRecipe("floating_pure_daisy_manainfusion", <item:botania:floating_pure_daisy>, <item:botania:pure_daisy>, 750);
<recipetype:botania:mana_infusion>.addRecipe("smeltery_controller", <item:tconstruct:smeltery_controller>, <item:tconstruct:seared_heater>, 10000);
//花瓣炼制
import mods.botania.PetalApothecary;
<recipetype:botania:petal_apothecary>.removeRecipe(<item:botania:orechid>);
//凝矿兰产矿
import mods.botania.Orechid;
Orechid.main.clear();
Orechid.main.registerOreWeight(<block:minecraft:coal_ore>, 250);
Orechid.main.registerOreWeight(<block:minecraft:iron_ore>, 50);
Orechid.main.registerOreWeight(<block:mysticalagriculture:inferium_ore>, 150);
Orechid.main.registerOreWeight(<block:mysticalagriculture:prosperity_ore>, 150);
Orechid.main.registerOreWeight(<block:mekanism:tin_ore>, 25);
Orechid.main.registerOreWeight(<block:mekanism:copper_ore>, 25);
Orechid.main.registerOreWeight(<block:minecraft:redstone_ore>, 1);
Orechid.main.registerOreWeight(<block:mekanism:lead_ore>, 13);
//节点物品1
craftingTable.addShaped("stage2_unlock", <item:kubejs:stage2_unlock>, [
    [<item:mysticalagriculture:prosperity_shard>, <item:mysticalagriculture:inferium_essence>, <item:minecraft:iron_ore>],
    [<item:mekanism:copper_ore>, <item:minecraft:air>, <item:minecraft:coal>],
    [<item:mekanism:lead_ore>, <item:minecraft:redstone>, <item:mekanism:tin_ore>]
]);