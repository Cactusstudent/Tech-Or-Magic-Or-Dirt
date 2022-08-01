import crafttweaker.api.loot.modifiers.CommonLootModifiers;
import crafttweaker.api.loot.modifiers.ILootModifier;
<block:kubejs:nether_diamand_ore>.addLootModifier("nether_diamond_ore", (loots, currentContext) => [<item:minecraft:diamond>]);
<block:kubejs:nether_arcane_ore>.addLootModifier("nether_arcane_ore", (loots, currentContext) => [<item:ars_nouveau:mana_gem>]);
<block:kubejs:nether_rock_crystal_ore>.addLootModifier("nether_rock_crystal_ore", (loots, currentContext) => [<item:astralsorcery:rock_crystal> * 3]);
<block:kubejs:nether_fluorite_ore>.addLootModifier("nether_fluorite_ore", (loots, currentContext) => [<item:mekanism:fluorite_gem> * 3]);

<recipetype:immersiveengineering:blast_furnace>.addRecipe("ore_to_zinc_ingot", <item:kubejs:nether_zinc_ore>, 500, <item:create:zinc_ingot> * 2, <item:thermal:slag> * 4);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("ore_to_uranium_ingot", <item:kubejs:nether_uranium_ore>, 500, <item:mekanism:ingot_uranium> * 2, <item:thermal:slag> * 4);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("ore_to_nickle_ingot", <item:kubejs:nether_nickle_ore>, 500, <item:thermal:nickel_ingot> * 2, <item:thermal:slag> * 4);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("ore_to_silver_ingot", <item:kubejs:nether_silver_ore>, 500, <item:immersiveengineering:ingot_silver> * 2, <item:thermal:slag> * 4);
furnace.addRecipe("ore_to_starmetal_ingot", <item:astralsorcery:starmetal_ingot>, <item:kubejs:nether_starmetal_ore>, 1.2, 200);
