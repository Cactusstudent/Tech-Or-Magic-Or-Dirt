onEvent('block.registry', event => {
    event.create('garden_soil').material('earth').hardness(1.0).displayName('园艺土')
    event.create('rotten_flesh_block').material('earth').hardness(0.25).displayName('压实腐肉块')
})