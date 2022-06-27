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
craftingTable.removeRecipe()