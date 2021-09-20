import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

function removeAndHideAppliedEnergistics2(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);
}

val itemsToRemove_applied_energistics_2 = [
    <item:appliedenergistics2:inscriber>,
    <item:appliedenergistics2:charger>,
    <item:appliedenergistics2:drive>,
    <item:appliedenergistics2:chest>,
    <item:appliedenergistics2:vibration_chamber>,
    <item:appliedenergistics2:1k_fluid_cell_component>,
    <item:appliedenergistics2:4k_fluid_cell_component>,
    <item:appliedenergistics2:16k_fluid_cell_component>,
    <item:appliedenergistics2:64k_fluid_cell_component>,
    <item:appliedenergistics2:4k_cell_component>,
    <item:appliedenergistics2:16k_cell_component>,
    <item:appliedenergistics2:64k_cell_component>
] as IItemStack[];

for item in itemsToRemove_applied_energistics_2{
    removeAndHideAppliedEnergistics2(item);
}

function addNewCraftingRecipeAppliedEnergistics2(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
}

addNewCraftingRecipeAppliedEnergistics2("inscriber", <item:appliedenergistics2:inscriber>, [[<tag:items:forge:ingots/iron>, <item:minecraft:sticky_piston>, <tag:items:forge:ingots/iron>],
                                                                                            [<tag:items:appliedenergistics2:crystals/fluix>, <item:minecraft:air>, <item:createaddition:electric_motor>], 
                                                                                            [<tag:items:forge:ingots/iron>, <item:minecraft:sticky_piston>, <tag:items:forge:ingots/iron>]]);

addNewCraftingRecipeAppliedEnergistics2("charger", <item:appliedenergistics2:charger>, [[<tag:items:forge:ingots/iron>, <tag:items:appliedenergistics2:crystals/fluix>, <tag:items:forge:ingots/iron>],
                                                                                        [<item:createaddition:accumulator>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                        [<tag:items:forge:ingots/iron>, <tag:items:appliedenergistics2:crystals/fluix>, <tag:items:forge:ingots/iron>]]);

addNewCraftingRecipeAppliedEnergistics2("drive", <item:appliedenergistics2:drive>, [[<tag:items:forge:ingots/iron>, <item:appliedenergistics2:engineering_processor>, <tag:items:forge:ingots/iron>],
                                                                                    [<item:appliedenergistics2:fluix_glass_cable>, <item:ironchest:diamond_chest>, <item:appliedenergistics2:fluix_glass_cable>],
                                                                                    [<tag:items:forge:ingots/iron>, <item:appliedenergistics2:engineering_processor>, <tag:items:forge:ingots/iron>]]);

addNewCraftingRecipeAppliedEnergistics2("vibration_chamber", <item:appliedenergistics2:vibration_chamber>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], 
                                                                                                            [<tag:items:forge:ingots/iron>, <item:create:furnace_engine>, <tag:items:forge:ingots/iron>],
                                                                                                            [<tag:items:forge:ingots/iron>, <item:appliedenergistics2:energy_acceptor>, <tag:items:forge:ingots/iron>]]);

addNewCraftingRecipeAppliedEnergistics2("1k_fluid_cell_component", <item:appliedenergistics2:1k_fluid_cell_component>, [[<item:immersiveengineering:wire_copper>, <tag:items:appliedenergistics2:crystals/certus>, <item:immersiveengineering:wire_copper>],
                                                                                                                        [<tag:items:appliedenergistics2:crystals/certus>, <item:appliedenergistics2:logic_processor>, <tag:items:appliedenergistics2:crystals/certus>],
                                                                                                                        [<item:immersiveengineering:wire_copper>, <tag:items:appliedenergistics2:crystals/certus>, <item:immersiveengineering:wire_copper>]]);
                                                                                                                
addNewCraftingRecipeAppliedEnergistics2("4k_fluid_cell_component", <item:appliedenergistics2:4k_fluid_cell_component>, [[<item:immersiveengineering:wire_copper>, <item:appliedenergistics2:calculation_processor>, <item:immersiveengineering:wire_copper>],
                                                                                                                        [<item:appliedenergistics2:1k_fluid_cell_component>, <item:pneumaticcraft:plastic>, <item:appliedenergistics2:1k_fluid_cell_component>],
                                                                                                                        [<item:immersiveengineering:wire_copper>, <item:appliedenergistics2:1k_fluid_cell_component>, <item:immersiveengineering:wire_copper>]]);

addNewCraftingRecipeAppliedEnergistics2("16k_fluid_cell_component", <item:appliedenergistics2:16k_fluid_cell_component>, [[<item:immersiveengineering:wire_copper>, <item:appliedenergistics2:calculation_processor>, <item:immersiveengineering:wire_copper>],
                                                                                                                        [<item:appliedenergistics2:4k_fluid_cell_component>, <item:pneumaticcraft:plastic>, <item:appliedenergistics2:4k_fluid_cell_component>],
                                                                                                                        [<item:immersiveengineering:wire_copper>, <item:appliedenergistics2:4k_fluid_cell_component>, <item:immersiveengineering:wire_copper>]]);

addNewCraftingRecipeAppliedEnergistics2("64k_fliud_cell_component", <item:appliedenergistics2:64k_fluid_cell_component>, [[<item:immersiveengineering:wire_copper>, <item:appliedenergistics2:calculation_processor>, <item:immersiveengineering:wire_copper>],
                                                                                                                        [<item:appliedenergistics2:16k_fluid_cell_component>, <item:pneumaticcraft:plastic>, <item:appliedenergistics2:16k_fluid_cell_component>],
                                                                                                                        [<item:immersiveengineering:wire_copper>, <item:appliedenergistics2:16k_fluid_cell_component>, <item:immersiveengineering:wire_copper>]]);

addNewCraftingRecipeAppliedEnergistics2("4k_me_storage_component", <item:appliedenergistics2:4k_cell_component>, [[<item:minecraft:redstone>, <item:appliedenergistics2:calculation_processor>, <item:minecraft:redstone>],
                                                                                                                [<item:appliedenergistics2:1k_cell_component>, <item:pneumaticcraft:plastic>, <item:appliedenergistics2:1k_cell_component>],
                                                                                                                [<item:minecraft:redstone>, <item:appliedenergistics2:1k_cell_component>, <item:minecraft:redstone>]]);

addNewCraftingRecipeAppliedEnergistics2("16k_me_storage_component", <item:appliedenergistics2:16k_cell_component>, [[<item:minecraft:glowstone_dust>, <item:appliedenergistics2:calculation_processor>, <item:minecraft:glowstone_dust>],
                                                                                                                [<item:appliedenergistics2:4k_cell_component>, <item:pneumaticcraft:plastic>, <item:appliedenergistics2:4k_cell_component>],
                                                                                                                [<item:minecraft:glowstone_dust>, <item:appliedenergistics2:4k_cell_component>, <item:minecraft:glowstone_dust>]]);

addNewCraftingRecipeAppliedEnergistics2("64k_me_storage_component", <item:appliedenergistics2:64k_cell_component>, [[<item:minecraft:glowstone_dust>, <item:appliedenergistics2:calculation_processor>, <item:minecraft:glowstone_dust>],
                                                                                                                [<item:appliedenergistics2:16k_cell_component>, <item:pneumaticcraft:plastic>, <item:appliedenergistics2:16k_cell_component>],
                                                                                                                [<item:minecraft:glowstone_dust>, <item:appliedenergistics2:16k_cell_component>, <item:minecraft:glowstone_dust>]]);

addNewCraftingRecipeAppliedEnergistics2("me_chest", <item:appliedenergistics2:chest>, [[<tag:items:forge:glass>, <item:appliedenergistics2:terminal>, <tag:items:forge:glass>],
                                                                                        [<item:appliedenergistics2:fluix_glass_cable>, <item:ironchest:silver_chest>, <item:appliedenergistics2:fluix_glass_cable>],
                                                                                        [<tag:items:forge:ingots/iron>, <tag:items:appliedenergistics2:crystals/fluix>, <tag:items:forge:ingots/iron>]]);

