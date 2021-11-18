import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.MCTag;
import mods.jei.JEI;

var redstoneDust = <tag:items:forge:dusts/redstone> as IIngredient;
//var RedstoneDust = <item:minecraft:redstone> as IItemStack;

var plasticSheet = <tag:items:pneumaticcraft:plastic_sheets> as IIngredient;
var printedCircuitBoard = <item:pneumaticcraft:printed_circuit_board> as IIngredient;
var reinforcedBrickTile = <item:pneumaticcraft:reinforced_brick_tile> as IIngredient;

var logicProcessor = <item:appliedenergistics2:logic_processor> as IIngredient;
var calculationProcessor = <item:appliedenergistics2:calculation_processor> as IIngredient;

var advancedPCB = <item:pneumaticcraft:advanced_pcb> as IIngredient;
var logisticsCore = <item:pneumaticcraft:logistics_core> as IIngredient;

changeCraftingRecipe("advanced_pcb", advancedPCB, [
    [redstoneDust, logicProcessor,      redstoneDust],
    [plasticSheet, printedCircuitBoard, plasticSheet],
    [redstoneDust, plasticSheet,        redstoneDust]
    ]);

changeCraftingRecipe("logistics_core", logisticsCore, [
    [reinforcedBrickTile,   calculationProcessor,   reinforcedBrickTile],
    [logicProcessor,        redstoneDust,           logicProcessor],
    [reinforcedBrickTile,   reinforcedBrickTile,    reinforcedBrickTile]
]);

//remove Refinery
<recipetype:pneumaticcraft:refinery>.removeAll();
removeAndHideItem(<item:pneumaticcraft:refinery>);
removeAndHideItem(<item:pneumaticcraft:refinery_output>);

//remove amadrone 
for recipe in furnace.getAllRecipes() {
    println("> " + recipe.id);
}

//----------------TODO--------------------------
<recipetype:pneumaticcraft:thermo_plant>.getRecipeByName("pneumaticcraft:thermo_plant/plastic_from_biodiesel");
