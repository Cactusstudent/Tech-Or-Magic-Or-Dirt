onEvent('block.registry', event => {
    event.create('garden_soil').material('earth').hardness(1.0).displayName('园艺土')
    event.create('rotten_flesh_block').material('earth').hardness(0.25).displayName('压实腐肉块')
    event.create('cobble_press_2').material('rock').hardness(10.0).displayName('§8圆圆石石§r')
    event.create('cobble_press_3').material('rock').hardness(90.0).displayName('§8圆圆圆石石石§r')
    event.create('cobble_press_4').material('rock').hardness(810.0).displayName('§8圆圆圆圆石石石石§r')
    event.create('blastbrick_wip').material('rock').hardness(1.0).displayName('粗制高炉砖')
})