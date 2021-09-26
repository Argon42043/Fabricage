import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

//item variables
var air            = <item:minecraft:air>              as IIngredient;
var planks         = <tag:items:minecraft:planks>      as IIngredient;
var logs           = <tag:items:minecraft:logs>        as IIngredient;
var fabric         = <tag:items:forge:fabric_hemp>     as IIngredient;
var bolt           = <item:mapperbase:bolt>            as IIngredient;
var lead           = <item:minecraft:lead>             as IIngredient;
var ironPlates     = <tag:items:forge:plates/iron>     as IIngredient;
var chest          = <tag:items:forge:chests/wooden>   as IIngredient;
var shovel         = <item:minecraft:wooden_shovel>    as IIngredient;
var sail           = <item:smallships:sail_item>       as IIngredient;
var stringi        = <item:minecraft:string>           as IIngredient;
var tripwire_hook  = <item:minecraft:tripwire_hook>    as IIngredient;
var iron_chest     = <item:ironchest:iron_chest>       as IIngredient;
var diamond_chest  = <item:ironchest:diamond_chest>    as IIngredient;

//data for rowing boats
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

//data for cogs
val cogs = [
    [<item:smallships:oak_cog>, <item:smallships:oak_rowboat>],
    [<item:smallships:spruce_cog>, <item:smallships:spruce_rowboat>],
    [<item:smallships:birch_cog>, <item:smallships:birch_rowboat>],
    [<item:smallships:jungle_cog>, <item:smallships:jungle_rowboat>],
    [<item:smallships:acacia_cog>, <item:smallships:acacia_rowboat>],
    [<item:smallships:dark_oak_cog>, <item:smallships:dark_oak_rowboat>],
    [<item:smallships:bop_cherry_cog>, <item:smallships:bop_cherry_rowboat>,],
    [<item:smallships:bop_dead_cog>, <item:smallships:bop_dead_rowboat>,],
    [<item:smallships:bop_fir_cog>, <item:smallships:bop_fir_rowboat>,],
    [<item:smallships:bop_hellbark_cog>, <item:smallships:bop_hellbark_rowboat>,],
    [<item:smallships:bop_jacaranda_cog>, <item:smallships:bop_jacaranda_rowboat>,],
    [<item:smallships:bop_magic_cog>, <item:smallships:bop_magic_rowboat>,],
    [<item:smallships:bop_mahogany_cog>, <item:smallships:bop_mahogany_rowboat>,],
    [<item:smallships:bop_palm_cog>, <item:smallships:bop_palm_rowboat>,],
    [<item:smallships:bop_redwood_cog>, <item:smallships:bop_redwood_rowboat>,],
    [<item:smallships:bop_umbran_cog>, <item:smallships:bop_umbran_rowboat>,],
    [<item:smallships:bop_willow_cog>, <item:smallships:bop_willow_rowboat>,],
] as IItemStack[][];

//data for galleys
val galleys = [
    [<item:smallships:oak_galley>, <item:smallships:oak_rowboat>],
    [<item:smallships:spruce_galley>, <item:smallships:spruce_rowboat>],
    [<item:smallships:birch_galley>, <item:smallships:birch_rowboat>],
    [<item:smallships:jungle_galley>, <item:smallships:jungle_rowboat>],
    [<item:smallships:acacia_galley>, <item:smallships:acacia_rowboat>],
    [<item:smallships:dark_oak_galley>, <item:smallships:dark_oak_rowboat>],
    [<item:smallships:bop_cherry_galley>, <item:smallships:bop_cherry_rowboat>,],
    [<item:smallships:bop_dead_galley>, <item:smallships:bop_dead_rowboat>,],
    [<item:smallships:bop_fir_galley>, <item:smallships:bop_fir_rowboat>,],
    [<item:smallships:bop_hellbark_galley>, <item:smallships:bop_hellbark_rowboat>,],
    [<item:smallships:bop_jacaranda_galley>, <item:smallships:bop_jacaranda_rowboat>,],
    [<item:smallships:bop_magic_galley>, <item:smallships:bop_magic_rowboat>,],
    [<item:smallships:bop_mahogany_galley>, <item:smallships:bop_mahogany_rowboat>,],
    [<item:smallships:bop_palm_galley>, <item:smallships:bop_palm_rowboat>,],
    [<item:smallships:bop_redwood_galley>, <item:smallships:bop_redwood_rowboat>,],
    [<item:smallships:bop_umbran_galley>, <item:smallships:bop_umbran_rowboat>,],
    [<item:smallships:bop_willow_galley>, <item:smallships:bop_willow_rowboat>,],
] as IItemStack[][];

//data for drakkars
val drakkars = [
    [<item:smallships:oak_drakkar>, <item:smallships:oak_rowboat>],
    [<item:smallships:spruce_drakkar>, <item:smallships:spruce_rowboat>],
    [<item:smallships:birch_drakkar>, <item:smallships:birch_rowboat>],
    [<item:smallships:jungle_drakkar>, <item:smallships:jungle_rowboat>],
    [<item:smallships:acacia_drakkar>, <item:smallships:acacia_rowboat>],
    [<item:smallships:dark_oak_drakkar>, <item:smallships:dark_oak_rowboat>],
    [<item:smallships:bop_cherry_drakkar>, <item:smallships:bop_cherry_rowboat>,],
    [<item:smallships:bop_dead_drakkar>, <item:smallships:bop_dead_rowboat>,],
    [<item:smallships:bop_fir_drakkar>, <item:smallships:bop_fir_rowboat>,],
    [<item:smallships:bop_hellbark_drakkar>, <item:smallships:bop_hellbark_rowboat>,],
    [<item:smallships:bop_jacaranda_drakkar>, <item:smallships:bop_jacaranda_rowboat>,],
    [<item:smallships:bop_magic_drakkar>, <item:smallships:bop_magic_rowboat>,],
    [<item:smallships:bop_mahogany_drakkar>, <item:smallships:bop_mahogany_rowboat>,],
    [<item:smallships:bop_palm_drakkar>, <item:smallships:bop_palm_rowboat>,],
    [<item:smallships:bop_redwood_drakkar>, <item:smallships:bop_redwood_rowboat>,],
    [<item:smallships:bop_umbran_drakkar>, <item:smallships:bop_umbran_rowboat>,],
    [<item:smallships:bop_willow_drakkar>, <item:smallships:bop_willow_rowboat>,],
] as IItemStack[][];

//data for briggs
val briggs = [
    [<item:smallships:oak_brigg>, <item:smallships:oak_rowboat>],
    [<item:smallships:spruce_brigg>, <item:smallships:spruce_rowboat>],
    [<item:smallships:birch_brigg>, <item:smallships:birch_rowboat>],
    [<item:smallships:jungle_brigg>, <item:smallships:jungle_rowboat>],
    [<item:smallships:acacia_brigg>, <item:smallships:acacia_rowboat>],
    [<item:smallships:dark_oak_brigg>, <item:smallships:dark_oak_rowboat>],
    [<item:smallships:bop_cherry_brigg>, <item:smallships:bop_cherry_rowboat>,],
    [<item:smallships:bop_dead_brigg>, <item:smallships:bop_dead_rowboat>,],
    [<item:smallships:bop_fir_brigg>, <item:smallships:bop_fir_rowboat>,],
    [<item:smallships:bop_hellbark_brigg>, <item:smallships:bop_hellbark_rowboat>,],
    [<item:smallships:bop_jacaranda_brigg>, <item:smallships:bop_jacaranda_rowboat>,],
    [<item:smallships:bop_magic_brigg>, <item:smallships:bop_magic_rowboat>,],
    [<item:smallships:bop_mahogany_brigg>, <item:smallships:bop_mahogany_rowboat>,],
    [<item:smallships:bop_palm_brigg>, <item:smallships:bop_palm_rowboat>,],
    [<item:smallships:bop_redwood_brigg>, <item:smallships:bop_redwood_rowboat>,],
    [<item:smallships:bop_umbran_brigg>, <item:smallships:bop_umbran_rowboat>,],
    [<item:smallships:bop_willow_brigg>, <item:smallships:bop_willow_rowboat>,],
] as IItemStack[][];

//data for dhows
val dhows = [
    [<item:smallships:oak_dhow>, <item:smallships:oak_rowboat>],
    [<item:smallships:spruce_dhow>, <item:smallships:spruce_rowboat>],
    [<item:smallships:birch_dhow>, <item:smallships:birch_rowboat>],
    [<item:smallships:jungle_dhow>, <item:smallships:jungle_rowboat>],
    [<item:smallships:acacia_dhow>, <item:smallships:acacia_rowboat>],
    [<item:smallships:dark_oak_dhow>, <item:smallships:dark_oak_rowboat>],
    [<item:smallships:bop_cherry_dhow>, <item:smallships:bop_cherry_rowboat>,],
    [<item:smallships:bop_dead_dhow>, <item:smallships:bop_dead_rowboat>,],
    [<item:smallships:bop_fir_dhow>, <item:smallships:bop_fir_rowboat>,],
    [<item:smallships:bop_hellbark_dhow>, <item:smallships:bop_hellbark_rowboat>,],
    [<item:smallships:bop_jacaranda_dhow>, <item:smallships:bop_jacaranda_rowboat>,],
    [<item:smallships:bop_magic_dhow>, <item:smallships:bop_magic_rowboat>,],
    [<item:smallships:bop_mahogany_dhow>, <item:smallships:bop_mahogany_rowboat>,],
    [<item:smallships:bop_palm_dhow>, <item:smallships:bop_palm_rowboat>,],
    [<item:smallships:bop_redwood_dhow>, <item:smallships:bop_redwood_rowboat>,],
    [<item:smallships:bop_umbran_dhow>, <item:smallships:bop_umbran_rowboat>,],
    [<item:smallships:bop_willow_dhow>, <item:smallships:bop_willow_rowboat>,],
] as IItemStack[][];

//data for war_galleys
val war_galleys = [
    [<item:smallships:oak_war_galley>, <item:smallships:oak_galley>],
    [<item:smallships:spruce_war_galley>, <item:smallships:spruce_galley>],
    [<item:smallships:birch_war_galley>, <item:smallships:birch_galley>],
    [<item:smallships:jungle_war_galley>, <item:smallships:jungle_galley>],
    [<item:smallships:acacia_war_galley>, <item:smallships:acacia_galley>],
    [<item:smallships:dark_oak_war_galley>, <item:smallships:dark_oak_galley>],
    [<item:smallships:bop_cherry_war_galley>, <item:smallships:bop_cherry_galley>,],
    [<item:smallships:bop_dead_war_galley>, <item:smallships:bop_dead_galley>,],
    [<item:smallships:bop_fir_war_galley>, <item:smallships:bop_fir_galley>,],
    [<item:smallships:bop_hellbark_war_galley>, <item:smallships:bop_hellbark_galley>,],
    [<item:smallships:bop_jacaranda_war_galley>, <item:smallships:bop_jacaranda_galley>,],
    [<item:smallships:bop_magic_war_galley>, <item:smallships:bop_magic_galley>,],
    [<item:smallships:bop_mahogany_war_galley>, <item:smallships:bop_mahogany_galley>,],
    [<item:smallships:bop_palm_war_galley>, <item:smallships:bop_palm_galley>,],
    [<item:smallships:bop_redwood_war_galley>, <item:smallships:bop_redwood_galley>,],
    [<item:smallships:bop_umbran_war_galley>, <item:smallships:bop_umbran_galley>,],
    [<item:smallships:bop_willow_war_galley>, <item:smallships:bop_willow_galley>,],
] as IItemStack[][];

//changes recipe and adds it to boats tag
function changeCraftingRecipeSmallShips(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.removeRecipe(item);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    <tag:items:minecraft:boats>.add(item);
}


//change recipe for sails
craftingTable.removeRecipe(<item:smallships:sail_item>);
<recipetype:create:mechanical_crafting>.addRecipe("costum_sail", <item:smallships:sail_item>, [
    [air,       air,        logs,   air,      air],
    [planks,    planks,     logs,   planks,   planks],
    [fabric,    fabric,     logs,   fabric,   fabric],
    [fabric,    fabric,     logs,   fabric,   fabric],
    [planks,    planks,     logs,   planks,   planks],
    [bolt,      air,        logs,   air,      bolt],
    [lead,      air,        logs,   air,      lead]
]);

//change recipe for rowboats
for rowboat in rowboats{
    changeCraftingRecipeSmallShips(rowboat[0].translationKey, rowboat[0],[
        [ironPlates,    chest,      ironPlates], 
        [rowboat[1],    shovel,     rowboat[1]],
        [rowboat[1],    rowboat[1], rowboat[1]]
    ]);
}

for cog in cogs{
    changeCraftingRecipeSmallShips(cog[0].translationKey, cog[0],[
        [stringi,       stringi,    stringi], 
        [iron_chest,    sail,       iron_chest],
        [cog[1],        cog[1],     cog[1]]
    ]);
}

for galley in galleys{
    changeCraftingRecipeSmallShips(galley[0].translationKey, galley[0],[
        [lead,          sail,       lead], 
        [tripwire_hook, iron_chest, tripwire_hook],
        [galley[1],     galley[1],  galley[1]]
    ]);
}

for drakkar in drakkars{
    changeCraftingRecipeSmallShips(drakkar[0].translationKey, drakkar[0],[
        [stringi,       sail,       stringi], 
        [lead,          iron_chest, lead],
        [drakkar[1],    drakkar[1], drakkar[1]]
    ]);
}

for brigg in briggs{
    changeCraftingRecipeSmallShips(brigg[0].translationKey, brigg[0],[
        [lead,      iron_chest, lead], 
        [sail,      iron_chest, sail],
        [brigg[1],  brigg[1],   brigg[1]]
    ]);
}

for dhow in dhows{
    changeCraftingRecipeSmallShips(dhow[0].translationKey, dhow[0],[
        [lead,      stringi,    lead], 
        [sail,      iron_chest, sail],
        [dhow[1],   dhow[1],    dhow[1]]
    ]);
}

for war_galley in war_galleys{
    changeCraftingRecipeSmallShips(war_galley[0].translationKey, war_galley[0],[
        [stringi,       sail,           stringi], 
        [lead,          diamond_chest,  lead],
        [tripwire_hook, war_galley[1],  tripwire_hook]
    ]);
}