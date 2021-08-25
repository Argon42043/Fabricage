import mods.jei.JEI;

//flint shard description
mods.jei.JEI.addInfo(<item:notreepunching:flint_shard>,["knock flint on a stone to get flint shards"]);

//clay tool description
mods.jei.JEI.addInfo(<item:notreepunching:clay_tool>,["use this tool on clay to shape it into some more useful things"]);

//recipe for unlit campfire
craftingTable.addShaped("custom.notreepunching.campfire", <item:minecraft:campfire>.withTag({BlockStateTag:{lit:"false"}}),[
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <tag:items:minecraft:coals>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);

//recipe for unlit soul_campfire
craftingTable.addShaped("custom.notreepunching.soul_campfire", <item:minecraft:soul_campfire>.withTag({BlockStateTag:{lit:"false"}}),[
    [<item:minecraft:air>, <tag:items:forge:rods/wooden>, <item:minecraft:air>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:soul_sand>, <tag:items:forge:rods/wooden>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);