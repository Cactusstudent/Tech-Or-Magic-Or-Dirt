//背包
craftingTable.removeRecipe(<item:sophisticatedbackpacks:backpack>);
craftingTable.addShaped("backpack_iron_to_steel", <item:sophisticatedbackpacks:backpack>, [
    [<tag:items:forge:string>, <tag:items:forge:leather>, <tag:items:forge:string>],
    [<tag:items:forge:string>, <tag:items:forge:ingots/steel>, <tag:items:forge:string>],
    [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]
]);
//通量链接升级
val a = <item:minecraft:air>;
craftingTable.removeRecipe(<item:thermal:machine_speed_augment>);
craftingTable.addShaped("machine_speed_augment",<item:thermal:machine_speed_augment>, [
    [a, <tag:items:forge:gears/lead>, a],
    [<tag:items:forge:plates/steel>, <item:thermal:rf_coil>, <tag:items:forge:plates/steel>],
    [a, <tag:items:forge:gears/lead>, a]
]);
//Thermal流体/能量储存
val u = <item:thermal:cured_rubber>;
val s = <tag:items:forge:ingots/steel>;
val v = <item:thermal:redstone_servo>;
craftingTable.removeRecipe(<item:thermal:energy_cell>);
craftingTable.removeRecipe(<item:thermal:fluid_cell>);
craftingTable.addShaped("fluid_cell", <item:thermal:fluid_cell>, [
    [u, <tag:items:thermal:glass/hardened>, u],
    [s, <item:thermal:fluid_cell_frame>, s],
    [u, v, u]
]);
craftingTable.addShaped("energy_cell", <item:thermal:energy_cell>, [
    [u, <tag:items:forge:storage_blocks/redstone>, u],
    [s, <item:thermal:energy_cell_frame>, s],
    [u, v, u]
]);
//炎矿兰
import mods.botania.PetalApothecary;
<recipetype:botania:petal_apothecary>.removeRecipe(<item:botania:orechid_ignem>);
import mods.botania.RuneAltar;
<recipetype:botania:runic_altar>.addRecipe("orechid_ignem", <item:botania:orechid_ignem>, 10000, <item:botania:mana_powder>, <item:botania:red_petal>, <item:botania:rune_summer>, <item:botania:rune_water>, <item:botania:rune_water>);
val nether = mods.botania.Orechid.nether;
nether.clear();
nether.registerOreWeight(<block:draconicevolution:nether_draconium_ore>, 2);
nether.registerOreWeight(<block:mysticalagradditions:nether_prosperity_ore>, 30);
nether.registerOreWeight(<blockstate:mysticalagradditions:nether_inferium_ore>, 30);
nether.registerOreWeight(<block:mysticalagriculture:soulium_ore>, 10);
nether.registerOreWeight(<block:tconstruct:cobalt_ore>, 2);
nether.registerOreWeight(<block:minecraft:nether_quartz_ore>, 25);
nether.registerOreWeight(<block:minecraft:nether_gold_ore>, 10);
nether.registerOreWeight(<block:minecraft:ancient_debris>, 1);
/*nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
nether.registerOreWeight();
*/
//烘干池
craftingTable.removeRecipe(<item:integrateddynamics:mechanical_drying_basin>);
craftingTable.addShaped("drying_basin", <item:integrateddynamics:mechanical_drying_basin>, [
    [a, <tag:items:forge:obsidian>, a],
    [<item:immersiveengineering:capacitor_lv>, <item:integrateddynamics:drying_basin>, <item:immersiveengineering:capacitor_lv>],
    [a, <tag:items:forge:obsidian>, a]
]);
//下界团块
craftingTable.removeRecipe(<item:mysticalagriculture:nether_agglomeratio>);
craftingTable.addShaped("nether_agglomeratio", <item:mysticalagriculture:nether_agglomeratio>, [
    [<item:minecraft:nether_bricks>, <item:mysticalagriculture:fire_agglomeratio>, a],
    [<item:mysticalagriculture:water_agglomeratio>, <tag:items:forge:netherrack>, a],
    [a, a, a]
]);
