import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

function removeAndHideItemIronChests(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
}

val itemsToRemove_iron_chest = [
    <item:ironchest:iron_chest>,
    <item:ironchest:gold_chest>,
    //<item:ironchest:diamond_chest>,
    //<item:ironchest:silver_chest>,
    //<item:ironchest:crystal_chest>,
    //<item:ironchest:obsidian_chest>
] as IItemStack[];

for item in itemsToRemove_iron_chest {
    removeAndHideItemIronChests(item);
}

function addNewCraftingRecipeIronChests(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("custom_"+recipeName, item, recipe);
    craftingTable.addShaped("mechanicalcrafting_"+recipeName, item, recipe);
}

addNewCraftingRecipeIronChests("iron_chest", <item:ironchest:iron_chest>, [[<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
                                                                            [<tag:items:forge:plates/iron>, <item:minecraft:chest>, <tag:items:forge:plates/iron>],
                                                                            [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]]);

addNewCraftingRecipeIronChests("iron_chest_without_glas", <item:ironchest:iron_chest>, [[<item:minecraft:air>, <tag:items:forge:plates/iron>, <item:minecraft:air>],
                                                                                        [<tag:items:forge:plates/iron>, <item:ironchest:copper_chest>, <tag:items:forge:plates/iron>],
                                                                                        [<item:minecraft:air>, <tag:items:forge:plates/iron>, <item:minecraft:air>]]);

addNewCraftingRecipeIronChests("gold_chest", <item:ironchest:gold_chest>, [[<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>], 
                                                                            [<tag:items:forge:plates/gold>, <item:ironchest:iron_chest>, <tag:items:forge:plates/gold>], 
                                                                            [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

addNewCraftingRecipeIronChests("gold_chest_without_glas", <item:ironchest:gold_chest>, [[<item:minecraft:air>, <tag:items:forge:plates/gold>, <item:minecraft:air>], 
                                                                                        [<tag:items:forge:plates/gold>, <item:ironchest:silver_chest>, <tag:items:forge:plates/gold>], 
                                                                                        [<item:minecraft:air>, <tag:items:forge:plates/gold>, <item:minecraft:air>]]);