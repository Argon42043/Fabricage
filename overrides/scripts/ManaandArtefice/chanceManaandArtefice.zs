import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

//function to remove and hide item
function removeAndHideItemManaandArtefice(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);
}

//array for items to delete
val itemsToRemove_ManaandArtefice = [
    <item:mana-and-artifice:manaweaver_wand>,
    <item:mana-and-artifice:vinteum_coated_iron>,
    <item:mana-and-artifice:purified_vinteum_coated_iron>,
    <item:mana-and-artifice:stone_rune_blank>
] as IItemStack[];

//for loop for the array
for item in itemsToRemove_ManaandArtefice {
    removeAndHideItemManaandArtefice(item);
}

//function to adding recipes for Craftingtable and mechanical crafting
function addNewCraftingRecipeManaandArtefice(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
}

addNewCraftingRecipeManaandArtefice("manaweaver_wand", <item:mana-and-artifice:manaweaver_wand>, [[<item:minecraft:air>, <item:mana-and-artifice:vinteum_ingot>, <item:mana-and-artifice:vinteum_dust>],
                                                                                                  [<item:minecraft:air>, <item:botania:livingwood_twig>, <item:mana-and-artifice:vinteum_ingot>],
                                                                                                  [<item:botania:livingwood_twig>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

addNewCraftingRecipeManaandArtefice("vinteum_coated_iron", <item:mana-and-artifice:vinteum_coated_iron>, [[<tag:items:forge:ingots/manasteel>, <item:mana-and-artifice:vinteum_dust>, <item:minecraft:air>],
                                                                                                          [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                          [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

addNewCraftingRecipeManaandArtefice("purified_vinteum_coated_iron", <item:mana-and-artifice:purified_vinteum_coated_iron>, [[<tag:items:forge:ingots/manasteel>, <item:mana-and-artifice:purified_vinteum_dust>, <item:minecraft:air>],
                                                                                                                            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                                            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

addNewCraftingRecipeManaandArtefice("stone_rune_blank", <item:mana-and-artifice:stone_rune_blank>, [[<item:minecraft:air>, <item:mana-and-artifice:stone_rune_blank>, <item:minecraft:air>],
                                                                                                    [<item:mana-and-artifice:stone_rune_blank>, <item:mana-and-artifice:stone_rune_blank>, <item:mana-and-artifice:stone_rune_blank>],
                                                                                                   [<item:minecraft:air>, <item:mana-and-artifice:stone_rune_blank>, <item:minecraft:air>]]);                                                                                                                            
