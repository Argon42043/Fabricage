import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.MCItemDefinition;

var ironPlates = <tag:items:forge:plates/iron> as IIngredient;

//Fuction to remove and hide items
function removeItemSmallShips(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);
}

function addNewCraftingRecipeSmallShips(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
}

//Deleting all Ships without Sails
val itemsToRemoveMapperBase = [
    <item:smallships:sail_item>,
    <item:smallships:oak_rowboat>,
    <item:smallships:spruce_rowboat>,
    <item:smallships:birch_rowboat>,
    <item:smallships:jungle_rowboat>,
    <item:smallships:acacia_rowboat>,
    <item:smallships:dark_oak_rowboat>,
    <item:smallships:bop_cherry_rowboat>,
    <item:smallships:bop_dead_rowboat>,
    <item:smallships:bop_fir_rowboat>,
    <item:smallships:bop_hellbark_rowboat>,
    <item:smallships:bop_jacaranda_rowboat>,
    <item:smallships:bop_magic_rowboat>,
    <item:smallships:bop_mahogany_rowboat>,
    <item:smallships:bop_palm_rowboat>,
    <item:smallships:bop_redwood_rowboat>,
    <item:smallships:bop_umbran_rowboat>,
    <item:smallships:bop_willow_rowboat>
] as IItemStack[];

for item in itemsToRemoveMapperBase {
    removeItemSmallShips(item);
}

//New recipe for sails
<recipetype:create:mechanical_crafting>.addRecipe("costum_sail", <item:smallships:sail_item>, [[<item:minecraft:air>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <tag:items:minecraft:logs>, <tag:items:minecraft:wool>, <tag:items:minecraft:wool>],
                                                                                                [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:logs>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
                                                                                                [<item:mapperbase:bolt>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:mapperbase:bolt>],
                                                                                                [<item:minecraft:lead>, <item:minecraft:air>, <tag:items:minecraft:logs>, <item:minecraft:air>, <item:minecraft:lead>]]);

addNewCraftingRecipeSmallShips("oak_rowboat", <item:smallships:oak_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                              [<item:minecraft:oak_planks>, <item:minecraft:oak_boat>, <item:minecraft:oak_planks>],
                                                                              [<item:minecraft:oak_planks>, <item:minecraft:oak_planks>, <item:minecraft:oak_planks>]]);

addNewCraftingRecipeSmallShips("spruce_rowboat", <item:smallships:spruce_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                    [<item:minecraft:spruce_planks>, <item:minecraft:spruce_boat>, <item:minecraft:spruce_planks>],
                                                                                    [<item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>, <item:minecraft:spruce_planks>]]);

addNewCraftingRecipeSmallShips("birch_rowboat", <item:smallships:birch_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                  [<item:minecraft:birch_planks>, <item:minecraft:birch_boat>, <item:minecraft:birch_planks>],
                                                                                  [<item:minecraft:birch_planks>, <item:minecraft:birch_planks>, <item:minecraft:birch_planks>]]);

addNewCraftingRecipeSmallShips("jungle_rowboat", <item:smallships:jungle_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                    [<item:minecraft:jungle_planks>, <item:minecraft:jungle_boat>, <item:minecraft:jungle_planks>],
                                                                                    [<item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>, <item:minecraft:jungle_planks>]]);

addNewCraftingRecipeSmallShips("acacia_rowboat", <item:smallships:acacia_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                    [<item:minecraft:acacia_planks>, <item:minecraft:acacia_boat>, <item:minecraft:acacia_planks>],
                                                                                    [<item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>, <item:minecraft:acacia_planks>]]);
                                                                                    
addNewCraftingRecipeSmallShips("dark_oak_rowboat", <item:smallships:dark_oak_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                        [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_boat>, <item:minecraft:dark_oak_planks>],
                                                                                        [<item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>, <item:minecraft:dark_oak_planks>]]);

addNewCraftingRecipeSmallShips("bop_cherry_rowboat", <item:smallships:bop_cherry_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                            [<item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_boat>, <item:biomesoplenty:cherry_planks>],
                                                                                            [<item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_planks>, <item:biomesoplenty:cherry_planks>]]);

addNewCraftingRecipeSmallShips("bop_dead_rowboat", <item:smallships:bop_dead_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                        [<item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_boat>, <item:biomesoplenty:dead_planks>],
                                                                                        [<item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_planks>, <item:biomesoplenty:dead_planks>]]);

addNewCraftingRecipeSmallShips("bop_fir_rowboat", <item:smallships:bop_fir_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                      [<item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_boat>, <item:biomesoplenty:fir_planks>],
                                                                                      [<item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_planks>, <item:biomesoplenty:fir_planks>]]);

addNewCraftingRecipeSmallShips("bop_hellbark_rowboat", <item:smallships:bop_hellbark_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                                [<item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_boat>, <item:biomesoplenty:hellbark_planks>],
                                                                                                [<item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_planks>, <item:biomesoplenty:hellbark_planks>]]); 

addNewCraftingRecipeSmallShips("bop_jacaranda_rowboat", <item:smallships:bop_jacaranda_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                                  [<item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_boat>, <item:biomesoplenty:jacaranda_planks>],
                                                                                                  [<item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_planks>, <item:biomesoplenty:jacaranda_planks>]]);  

addNewCraftingRecipeSmallShips("bop_magic_rowboat", <item:smallships:bop_magic_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                          [<item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_boat>, <item:biomesoplenty:magic_planks>],
                                                                                          [<item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_planks>, <item:biomesoplenty:magic_planks>]]); 

addNewCraftingRecipeSmallShips("bop_mahogany_rowboat", <item:smallships:bop_mahogany_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                                [<item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_boat>, <item:biomesoplenty:mahogany_planks>],
                                                                                                [<item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_planks>, <item:biomesoplenty:mahogany_planks>]]); 

addNewCraftingRecipeSmallShips("bop_palm_rowboat", <item:smallships:bop_palm_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                            [<item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_boat>, <item:biomesoplenty:palm_planks>],
                                                                                            [<item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_planks>, <item:biomesoplenty:palm_planks>]]); 

addNewCraftingRecipeSmallShips("bop_redwood_rowboat", <item:smallships:bop_redwood_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                              [<item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_boat>, <item:biomesoplenty:redwood_planks>],
                                                                                              [<item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_planks>, <item:biomesoplenty:redwood_planks>]]); 

addNewCraftingRecipeSmallShips("custom_bop_umbran_rowboat", <item:smallships:bop_umbran_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                            [<item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_boat>, <item:biomesoplenty:umbran_planks>],
                                                                                            [<item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_planks>, <item:biomesoplenty:umbran_planks>]]); 

addNewCraftingRecipeSmallShips("custom_bop_willow_rowboat", <item:smallships:bop_willow_rowboat>, [[ironPlates, <tag:items:forge:chests/wooden>, ironPlates], 
                                                                                            [<item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_boat>, <item:biomesoplenty:willow_planks>],
                                                                                            [<item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_planks>, <item:biomesoplenty:willow_planks>]]);