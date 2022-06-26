onEvent('item.registry', event => {
    event.create('quartz_dust').displayName('碎屑石英颗粒').maxStackSize(256)
    event.create('mixed_stone').displayName('有杂质的石头')
    event.create('stone_alloy').displayName('石头合金')
  })

onEvent('item.tooltip', tooltip => {
  tooltip.add(['create:andesite_alloy'], '§4§l安山合金几乎被石头合金代替，若想寻找相关合成配方，请移步JEI')
  tooltip.add(['kubejs:stone_alloy'], '§7新一代的安山合金，造价更便宜§m（实际上也没便宜到哪里去）')
  tooltip.add(['kubejs:quartz_dust'], '§7碎屑石英颗粒是击杀僵尸及其变种后掉落的，看起来有不小的用处')
  tooltip.add(['kubejs:rotten_flesh_block'], '§7腐肉做成的方块。这很酷，不是吗？即使硬度不高')
  tooltip.add(['kubejs:garden_soil'], '§7不能种植物？但是能做不少东西')
})