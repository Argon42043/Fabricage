import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

function removeAndHideItemIronChests(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
}

val itemsToRemove_iron_chest = [
    <item:ironchest:iron_chest>,
    <item:ironchest:gold_chest>,
    <item:ironchest:copper_chest>,
    <item:ironchest:silver_chest>,
    <item:ironchest:diamond_chest>
] as IItemStack[];

for item in itemsToRemove_iron_chest {
    removeAndHideItemIronChests(item);
}

function addNewCraftingRecipeIronChests(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
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

addNewCraftingRecipeIronChests("copper_chest", <item:ironchest:copper_chest>, [[<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>],
                                                                                [<tag:items:forge:plates/copper>, <item:minecraft:chest>, <tag:items:forge:plates/copper>],
                                                                                [<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>]]);  

addNewCraftingRecipeIronChests("silver_chest_copper", <item:ironchest:silver_chest>, [[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
                                                                                [<tag:items:forge:plates/silver>, <item:ironchest:copper_chest>, <tag:items:forge:plates/silver>],
                                                                                [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]]); 

addNewCraftingRecipeIronChests("silver_chest_iron", <item:ironchest:silver_chest>, [[<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>],
                                                                                [<tag:items:forge:ingots/silver>, <item:ironchest:iron_chest>, <tag:items:forge:ingots/silver>],
                                                                                [<tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>, <tag:items:forge:ingots/silver>]]);

addNewCraftingRecipeIronChests("diamond_chest_gold", <item:ironchest:diamond_chest>, [[<item:minecraft:air>, <tag:items:forge:gems/diamond>, <item:minecraft:air>],
                                                                                  [<tag:items:forge:gems/diamond>, <item:ironchest:gold_chest>, <tag:items:forge:gems/diamond>],
                                                                                  [<item:minecraft:air>, <tag:items:forge:gems/diamond>, <item:minecraft:air>]]); 

addNewCraftingRecipeIronChests("diamond_chest_silver", <item:ironchest:diamond_chest>, [[<tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>],
                                                                                  [<item:minecraft:air>, <item:ironchest:silver_chest>, <item:minecraft:air>],
                                                                                  [<tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>, <tag:items:forge:gems/diamond>]]);                                                                                                                                                               

