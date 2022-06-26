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
