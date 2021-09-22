import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

//item variables
var air         = <item:minecraft:air>              as IIngredient;
var planks      = <tag:items:minecraft:planks>      as IIngredient;
var logs        = <tag:items:minecraft:logs>        as IIngredient;
var fabric      = <tag:items:forge:fabric_hemp>     as IIngredient;
var bolt        = <item:mapperbase:bolt>            as IIngredient;
var lead        = <item:minecraft:lead>             as IIngredient;
var ironPlates  = <tag:items:forge:plates/iron>     as IIngredient;
var chest       = <tag:items:forge:chests/wooden>   as IIngredient;
var shovel      = <item:minecraft:wooden_shovel>    as IIngredient;

//data for rowboats
val rowboats = [
    [<item:smallships:oak_rowboat>, <item:minecraft:oak_planks>],
    [<item:smallships:spruce_rowboat>, <item:minecraft:spruce_planks>],
    [<item:smallships:birch_rowboat>, <item:minecraft:birch_planks>],
    [<item:smallships:jungle_rowboat>, <item:minecraft:jungle_planks>],
    [<item:smallships:acacia_rowboat>, <item:minecraft:acacia_planks>],
    [<item:smallships:dark_oak_rowboat>, <item:minecraft:dark_oak_planks>],
    [<item:smallships:bop_cherry_rowboat>, <item:biomesoplenty:cherry_planks>,],
    [<item:smallships:bop_dead_rowboat>, <item:biomesoplenty:dead_planks>,],
    [<item:smallships:bop_fir_rowboat>, <item:biomesoplenty:fir_planks>,],
    [<item:smallships:bop_hellbark_rowboat>, <item:biomesoplenty:hellbark_planks>,],
    [<item:smallships:bop_jacaranda_rowboat>, <item:biomesoplenty:jacaranda_planks>,],
    [<item:smallships:bop_magic_rowboat>, <item:biomesoplenty:magic_planks>,],
    [<item:smallships:bop_mahogany_rowboat>, <item:biomesoplenty:mahogany_planks>,],
    [<item:smallships:bop_palm_rowboat>, <item:biomesoplenty:palm_planks>,],
    [<item:smallships:bop_redwood_rowboat>, <item:biomesoplenty:redwood_planks>,],
    [<item:smallships:bop_umbran_rowboat>, <item:biomesoplenty:umbran_planks>,],
    [<item:smallships:bop_willow_rowboat>, <item:biomesoplenty:willow_planks>,],
] as IItemStack[][];

//changes recipe and adds it to boats tag
function changeCraftingRecipeSmallShips(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.removeRecipe(item);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    <tag:items:minecraft:boats>.add(item);
}


//recipe for sails
<recipetype:create:mechanical_crafting>.addRecipe("costum_sail", <item:smallships:sail_item>, [
    [air,       air,        logs,   air,      air],
    [planks,    planks,     logs,   planks,   planks],
    [fabric,    fabric,     logs,   fabric,   fabric],
    [fabric,    fabric,     logs,   fabric,   fabric],
    [planks,    planks,     logs,   planks,   planks],
    [bolt,      air,        logs,   air,        bolt],
    [lead,      air,        logs,   air,        lead]
]);

//recipe for rowboats
for rowboat in rowboats{
    changeCraftingRecipeSmallShips(rowboat[0].translationKey, rowboat[0],[
        [ironPlates,    chest,      ironPlates], 
        [rowboat[1],    shovel,     rowboat[1]],
        [rowboat[1],    rowboat[1], rowboat[1]]
    ]);
}