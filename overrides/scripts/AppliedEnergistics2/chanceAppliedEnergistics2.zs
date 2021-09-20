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
    <item:appliedenergistics2:drive>
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