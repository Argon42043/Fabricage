import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

function removeAndHideItemSmallShips(item as IItemStack) as void{
    craftingTable.removeRecipe(item);

}

//Deleting all Ships without Sails
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

//New Recipe for Sails
<recipetype:create:mechanical_crafting>.addRecipe("costum_sail", <item:smallships:sail_item>, [[<item:minecraft:air>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<item:mapperbase:bolt>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:mapperbase:bolt>],
                                                                                                [<item:minecraft:lead>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:lead>]]);

//Recreated Ship Recipes 
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

craftingTable.addShaped("custom_bop_cherry_rowboat", <item:smallships:bop_cherry_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_boat>, <item:biomesoplenty:cherry_planks>],
                                                                            [<item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_planks>]]);

craftingTable.addShaped("custom_bop_dead_rowboat", <item:smallships:bop_dead_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_boat>, <item:biomesoplenty:dead_planks>],
                                                                            [<item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_planks>]]);

craftingTable.addShaped("custom_bop_fir_rowboat", <item:smallships:bop_fir_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_boat>, <item:biomesoplenty:fir_planks>],
                                                                            [<item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_planks>]]);

craftingTable.addShaped("custom_bop_hellbark_rowboat", <item:smallships:bop_hellbark_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_boat>, <item:biomesoplenty:hellbark_planks>],
                                                                            [<item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_planks>]]); 
                                                                            
craftingTable.addShaped("custom_bop_jacaranda_rowboat", <item:smallships:bop_jacaranda_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_boat>, <item:biomesoplenty:jacaranda_planks>],
                                                                            [<item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_planks>]]); 

craftingTable.addShaped("custom_bop_magic_rowboat", <item:smallships:bop_magic_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_boat>, <item:biomesoplenty:magic_planks>],
                                                                            [<item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_planks>]]);  

craftingTable.addShaped("custom_bop_mahogany_rowboat", <item:smallships:bop_mahogany_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_boat>, <item:biomesoplenty:mahogany_planks>],
                                                                            [<item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_planks>]]); 

craftingTable.addShaped("custom_bop_palm_rowboat", <item:smallships:bop_palm_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_boat>, <item:biomesoplenty:palm_planks>],
                                                                            [<item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_planks>]]); 

craftingTable.addShaped("custom_bop_redwood_rowboat", <item:smallships:bop_redwood_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_boat>, <item:biomesoplenty:redwood_planks>],
                                                                            [<item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_planks>]]); 

craftingTable.addShaped("custom_bop_umbran_rowboat", <item:smallships:bop_umbran_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_boat>, <item:biomesoplenty:umbran_planks>],
                                                                            [<item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_planks>]]); 

craftingTable.addShaped("custom_bop_willow_rowboat", <item:smallships:bop_willow_rowboat>, [[<tag:items:forge:plates/iron>, <tag:items:forge:chests/wooden>, <tag:items:forge:plates/iron>], 
                                                                            [<item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_boat>, <item:biomesoplenty:willow_planks>],
                                                                            [<item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_planks>]]);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       