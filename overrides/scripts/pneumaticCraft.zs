import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.MCTag;
import mods.jei.JEI;

import crafttweaker.api.tag.TagManagerFluid;

var redstoneDust            = <tag:items:forge:dusts/redstone>                  as IIngredient;

var plasticSheet            = <tag:items:pneumaticcraft:plastic_sheets>         as IIngredient;
var printedCircuitBoard     = <item:pneumaticcraft:printed_circuit_board>       as IIngredient;
var reinforcedBrickTile     = <item:pneumaticcraft:reinforced_brick_tile>       as IIngredient;

var logicProcessor          = <item:appliedenergistics2:logic_processor>        as IIngredient;
var calculationProcessor    = <item:appliedenergistics2:calculation_processor>  as IIngredient;

var advancedPCB             = <item:pneumaticcraft:advanced_pcb>                as IIngredient;
var logisticsCore           = <item:pneumaticcraft:logistics_core>              as IIngredient;

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

//kerosene production
for fluid in ["pneumaticcraft:thermo_plant/kerosene","pneumaticcraft:thermo_plant/lubricant_from_biodiesel"]{
    <recipetype:pneumaticcraft:thermo_plant>.removeByName(fluid);
}
<recipetype:pneumaticcraft:thermo_plant>.addRecipe("kerosene", <fluid:immersivepetroleum:diesel> * 100, <item:minecraft:air>, <fluid:pneumaticcraft:kerosene> * 80, <item:minecraft:air>, 2.0, 573);