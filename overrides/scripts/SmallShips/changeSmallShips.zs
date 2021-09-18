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
<recipetype:create:mechanical_crafting>.addRecipe("costum_sail", <item:smallships:sail_item>, [[<item:minecraft:air>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<item:mapperbase:bolt>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:mapperbase:bolt>],
                                                                                                [<item:minecraft:lead>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:lead>]]);
craftingTable.addShaped("custom_oak_rowboat", <item:smallships:oak_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:minecraft:oak_planks>, <item:minecraft:oak_boat>, <item:minecraft:oak_planks>],
                                                                            [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);