import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

function removeAndHideItemSmallShips(item as IItemStack) as void{
    craftingTable.removeRecipe(item);

}

removeAndHideItemSmallShips(<item:smallships:sail_item>);
removeAndHideItemSmallShips(<item:smallships:oak_rowboat>);
removeAndHideItemSmallShips(<item:smallships:spruce_rowboat>);
removeAndHideItemSmallShips(<item:smallships:birch_rowboat>);
removeAndHideItemSmallShips(<item:smallships:jungle_rowboat>);
removeAndHideItemSmallShips(<item:smallships:acacia_rowboat>);
removeAndHideItemSmallShips(<item:smallships:dark_oak_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_cherry_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_dead_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_fir_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_hellbark_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_jacaranda_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_magic_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_mahogany_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_palm_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_redwood_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_umbran_rowboat>);
removeAndHideItemSmallShips(<item:smallships:bop_willow_rowboat>);
// Segel
<recipetype:create:mechanical_crafting>.addRecipe("costum_sail", <item:smallships:sail_item>, [[<item:minecraft:air>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<item:mapperbase:bolt>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:mapperbase:bolt>],
                                                                                                [<item:minecraft:lead>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:lead>]]);
// boot 

craftingTable.addShaped("custom_oak_rowboat", <item:smallships:oak_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:oak_planks>, <item:minecraft:oak_boat>, <item:minecraft:oak_planks>],
                                                                            [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);
// Test <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_oak_rowboat", <item:smallships:oak_rowboat>, );
craftingTable.addShaped("custom_spruce_rowboat", <item:smallships:spruce_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:spruce_planks>, <item:minecraft:spruce_boat>, <item:minecraft:spruce_planks>],
                                                                            [<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]]);
craftingTable.addShaped("custom_birch_rowboat", <item:smallships:birch_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:birch_planks>, <item:minecraft:birch_boat>, <item:minecraft:birch_planks>],
                                                                            [<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]]);
craftingTable.addShaped("custom_jungle_rowboat", <item:smallships:jungle_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:jungle_planks>, <item:minecraft:jungle_boat>, <item:minecraft:jungle_planks>],
                                                                            [<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]]);
craftingTable.addShaped("custom_acacia_rowboat", <item:smallships:acacia_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:acacia_planks>, <item:minecraft:acacia_boat>, <item:minecraft:acacia_planks>],
                                                                            [<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]]);
craftingTable.addShaped("custom_dark_oak_rowboat", <item:smallships:dark_oak_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_boat>, <item:minecraft:dark_oak_planks>],
                                                                            [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]]);