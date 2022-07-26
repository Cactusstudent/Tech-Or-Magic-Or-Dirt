onEvent('recipes', event => {
    event.remove({output: 'minecraft:dirt'})
    event.remove({output: 'minecraft:grass_block'})
    event.remove({output: 'minecraft:coarse_dirt'})
    event.remove({output: 'minecraft:podzol'})
    event.remove({output: 'minecraft:mycelium'})
})