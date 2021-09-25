import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient; //is needed for the IIngredient array

//functions to remove and hide items
function removeItemIronChests(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
}

//Array with all items which will be deleted
val itemsToRemove_iron_chest = [
    <item:ironchest:iron_chest>,
    <item:ironchest:gold_chest>,
    <item:ironchest:copper_chest>,
    <item:ironchest:silver_chest>,
    <item:ironchest:diamond_chest>,
    <item:ironchest:obsidian_chest>,
    <item:ironchest:crystal_chest>
] as IItemStack[];

//loop for all items in the array removeAndHideItemIronChests
for item in itemsToRemove_iron_chest {
    removeItemIronChests(item);
}

//function to create recipe for Craftingtable and mechanical crafting
function addNewCraftingRecipeIronChests(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
}

//calls of the fuction to get new recipes
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

addNewCraftingRecipeIronChests("silver_chest_iron", <item:ironchest:silver_chest>, [[<item:minecraft:air>, <tag:items:forge:plates/silver>, <item:minecraft:air>],
                                                                                    [<tag:items:forge:plates/silver>, <item:ironchest:iron_chest>, <tag:items:forge:plates/silver>],
                                                                                    [<item:minecraft:air>, <tag:items:forge:plates/silver>, <item:minecraft:air>]]);

addNewCraftingRecipeIronChests("diamond_chest_gold", <item:ironchest:diamond_chest>, [[<item:minecraft:air>, <item:botania:mana_diamond>, <item:minecraft:air>],
                                                                                        [<tag:items:forge:gems/diamond>, <item:ironchest:gold_chest>, <tag:items:forge:gems/diamond>],
                                                                                        [<item:minecraft:air>, <item:botania:mana_diamond>, <item:minecraft:air>]]); 

addNewCraftingRecipeIronChests("diamond_chest_silver", <item:ironchest:diamond_chest>, [[<item:botania:mana_diamond>, <tag:items:forge:gems/diamond>, <item:botania:mana_diamond>],
                                                                                        [<item:minecraft:air>, <item:ironchest:silver_chest>, <item:minecraft:air>],
                                                                                        [<item:botania:mana_diamond>, <tag:items:forge:gems/diamond>, <item:botania:mana_diamond>]]);    

addNewCraftingRecipeIronChests("obsidian_chest", <item:ironchest:obsidian_chest>, [[<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>],
                                                                                    [<item:minecraft:crying_obsidian>, <item:ironchest:diamond_chest>, <item:minecraft:crying_obsidian>],
                                                                                    [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]]);

addNewCraftingRecipeIronChests("crystal_chest", <item:ironchest:crystal_chest>, [[<tag:items:forge:glass>, <tag:items:forge:gems/prismarine>, <tag:items:forge:glass>],
                                                                                [<tag:items:forge:gems/prismarine>, <item:ironchest:diamond_chest>, <tag:items:forge:gems/prismarine>],
                                                                                [<tag:items:forge:glass>, <tag:items:forge:gems/prismarine>, <tag:items:forge:glass>]]);