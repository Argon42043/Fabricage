import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

function removeAndAddItemVehicleMod(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);
    
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_"+recipeName, item, recipe);
}

var smallWoodEngine     =  <item:vehicle:wood_small_engine>                 as IItemStack;
var smallStoneEngine    =  <item:vehicle:stone_small_engine>                as IItemStack;
var smallIronEngine     =  <item:vehicle:iron_small_engine>                 as IItemStack;
var smallGoldEngine     =  <item:vehicle:gold_small_engine>                 as IItemStack;
var smallDiamondEngine  =  <item:vehicle:diamond_small_engine>              as IItemStack;

var largeWoodEngine     =  <item:vehicle:wood_large_engine>                 as IItemStack;
var largeStoneEngine    =  <item:vehicle:stone_large_engine>                as IItemStack;
var largeIronEngine     =  <item:vehicle:iron_large_engine>                 as IItemStack;
var largeGoldEngine     =  <item:vehicle:gold_large_engine>                 as IItemStack;
var largeDiamondEngine  =  <item:vehicle:diamond_large_engine>              as IItemStack;

var electricWoodEngine      =  <item:vehicle:wood_electric_engine>          as IItemStack;
var electricStoneEngine     =  <item:vehicle:stone_electric_engine>         as IItemStack;
var electricIronEngine      =  <item:vehicle:iron_electric_engine>          as IItemStack;
var electricGoldEngine      =  <item:vehicle:gold_electric_engine>          as IItemStack;
var electricDiamondEngine   =  <item:vehicle:diamond_electric_engine>       as IItemStack;

var piston           =  <item:minecraft:piston>                             as IIngredient;
var redstoneDust     =  <tag:items:forge:dusts/redstone>                    as IIngredient;
var redstoneBlock     =  <item:minecraft:redstone_block>                     as IItemStack;
//var ironIngot        =  <tag:items:forge:ingots/iron>                       as IIngredient;
var ironIngot        =  <item:minecraft:iron_ingot>                         as IIngredient;
var steelIngot       =  <tag:items:forge:ingots/steel>                      as IIngredient;
var goldIngot        =  <tag:items:forge:ingots/gold>                       as IIngredient;
var goldPlate        =  <tag:items:forge:plates/gold>                       as IIngredient;
var diamond          =  <tag:items:forge:gems/diamond>                      as IIngredient;
var manaDiamond      =  <item:botania:mana_diamond>                         as IIngredient;
//var compressedIron   =  <tag:items:forge:storage_blocks/compressed_iron>    as IIngredient;
var compressedIron   =  <item:pneumaticcraft:compressed_iron_block>         as IItemStack;
var spark            =  <item:botania:spark>                                as IIngredient;
var sparkCorporea    =  <item:botania:corporea_spark>                       as IIngredient;
var sparkMaster      =  <item:botania:corporea_spark_master>                as IIngredient;
var circuitBoard     =  <item:pneumaticcraft:printed_circuit_board>         as IIngredient;
var advancedPCB      =  <item:pneumaticcraft:advanced_pcb>                  as IIngredient; 
var planks           =  <tag:items:minecraft:planks>                        as IIngredient;
var stone            =  <tag:items:forge:stone>                             as IIngredient;

var copperCoil       =  <item:immersiveengineering:wirecoil_copper>         as IItemStack;
var steelCoil        =  <item:immersiveengineering:wirecoil_structure_steel>as IItemStack;
var redstoneCoil     =  <item:immersiveengineering:wirecoil_redstone>       as IItemStack;

var woodEngines = [
    [smallWoodEngine, ironIngot],
    [largeWoodEngine, compressedIron]
] as IItemStack[][];

var stoneEngines = [
    [smallStoneEngine, smallWoodEngine],
    [largeStoneEngine, largeWoodEngine]
] as IItemStack[][];

var ironEngines = [
    [smallIronEngine, smallStoneEngine],
    [largeIronEngine, largeStoneEngine]
] as IItemStack[][];

var goldEngines = [
    [smallGoldEngine, smallIronEngine],
    [largeGoldEngine, largeIronEngine]
] as IItemStack[][];

var diamondEngines = [
    [smallDiamondEngine, smallGoldEngine],
    [largeDiamondEngine, largeGoldEngine]
] as IItemStack[][];

for engineArray in woodEngines {
    removeAndAddItemVehicleMod(engineArray[0].translationKey, engineArray[0], 
        [[redstoneDust,   planks,           redstoneDust],
        [piston,          spark,            piston],
        [engineArray[1],  compressedIron,   engineArray[1]]]);
}

for engineArray in stoneEngines {
    removeAndAddItemVehicleMod(engineArray[0].translationKey, engineArray[0], 
        [[circuitBoard,     stone,              circuitBoard],
        [stone,             engineArray[1],     stone],
        [circuitBoard,      stone,              circuitBoard]]);
}

for engineArray in ironEngines {
    removeAndAddItemVehicleMod(engineArray[0].translationKey, engineArray[0], 
        [[circuitBoard,     ironIngot,          circuitBoard],
        [steelIngot,        engineArray[1],     steelIngot],
        [circuitBoard,      ironIngot,          circuitBoard]]);
}

for engineArray in goldEngines {
    removeAndAddItemVehicleMod(engineArray[0].translationKey, engineArray[0],
        [[sparkCorporea,    goldPlate,          sparkCorporea],
        [goldIngot,         engineArray[1],     goldIngot],
        [advancedPCB,       goldPlate,          advancedPCB]]);
}

for engineArray in diamondEngines {
    removeAndAddItemVehicleMod(engineArray[0].translationKey, engineArray[0],
        [[sparkMaster,     diamond,             sparkMaster],
        [manaDiamond,      engineArray[1],      manaDiamond],
        [advancedPCB,      diamond,             advancedPCB]]);
}

removeAndAddItemVehicleMod(electricWoodEngine.translationKey, electricWoodEngine,
        [[ironIngot,        copperCoil,     planks],
        [redstoneBlock,     redstoneDust,   ironIngot],
        [ironIngot,         copperCoil,     planks]]);

removeAndAddItemVehicleMod(electricStoneEngine.translationKey, electricStoneEngine,
        [[circuitBoard,     ironIngot,            circuitBoard],
        [steelIngot,        electricWoodEngine,   steelIngot],
        [circuitBoard,      ironIngot,            circuitBoard]]);

removeAndAddItemVehicleMod(electricIronEngine.translationKey, electricIronEngine,
        [[steelCoil,        ironIngot,               steelCoil],
        [steelIngot,        electricStoneEngine,     steelIngot],
        [circuitBoard,      ironIngot,               circuitBoard]]);

removeAndAddItemVehicleMod(electricGoldEngine.translationKey, electricGoldEngine,
        [[advancedPCB,      goldPlate,          advancedPCB],
        [goldIngot,         electricIronEngine, goldIngot],
        [advancedPCB,       goldPlate,          advancedPCB]]);

removeAndAddItemVehicleMod(electricDiamondEngine.translationKey, electricDiamondEngine,
        [[redstoneCoil,     goldPlate,          redstoneCoil],
        [goldIngot,         electricGoldEngine, goldIngot],
        [advancedPCB,       goldPlate,          advancedPCB]]);