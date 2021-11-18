import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var gearBox = <item:create:gearbox> as IItemStack;
var logicUnit = <item:appliedenergistics2:logic_processor> as IItemStack;
var compressedIronGear = <item:pneumaticcraft:compressed_iron_gear> as IItemStack;
var electricEngine = <item:vehicle:wood_electric_engine> as IItemStack;
var steelIngot = <tag:items:forge:ingots/steel> as IIngredient;

changeCraftingRecipe("machine_frame_pity", <item:industrialforegoing:machine_frame_pity>, [[compressedIronGear, electricEngine, compressedIronGear],
                                                                                            [steelIngot, logicUnit, steelIngot],
                                                                                            [gearBox, electricEngine, gearBox]]);