onEvent('entity.loot_tables', event => {
    event.addEntity('minecraft:zombie', table => {
        table.addPool(pool => {
            pool.rolls = 3
            pool.addItem('kubejs:quartz_dust', 1)
            pool.addItem('minecraft:rotten_flesh', 4)
            pool.addItem('minecraft:potato', 3)
        })
    })
    event.addEntity('minecraft:zombified_piglin', table => {
        table.addPool(pool => {
            pool.rolls = 3
            pool.addItem('kubejs:quartz_dust', 1)
            pool.addItem('minecraft:rotten_flesh', 4)
            pool.addItem(Item.of('minecraft:diamond_pickaxe', '{Damage:1216,AS_Amulet_Holder:[I;0,12302,-1671904856,106751152]}'), 0.01)
            pool.addItem(Item.of('minecraft:diamond_pickaxe', '{Damage:1536,AS_Amulet_Holder:[I;0,12302,-1671904856,106751152]}'), 0.01)
        })
    })
    event.addEntity('minecraft:zombie_villager', table => {
        table.addPool(pool => {
            pool.rolls = 3
            pool.addItem('kubejs:quartz_dust', 1)
            pool.addItem('minecraft:rotten_flesh', 4)
            pool.addItem('minecraft:carrot', 2)
            pool.addItem('minecraft:potato', 3)
        })
    })
})
