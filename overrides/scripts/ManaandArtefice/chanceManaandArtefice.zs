import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

//function to remove and hide item
function removeAndHideItemManaandArtefice(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
}

//array for items to delete
val itemsToRemove_ManaandArtefice = [
    <item:mana-and-artifice:manaweaver_wand>,
    <item:mana-and-artifice:vinteum_coated_iron>,
    <item:mana-and-artifice:purified_vinteum_coated_iron>,
    <item:mana-and-artifice:stone_rune_blank>,
    <item:mana-and-artifice:guide_book>,
    <item:mana-and-artifice:occulus>,
    <item:mana-and-artifice:inscription_table>

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
                                                                                                  [<item:botania:livingwood_twig>, <item:minecraft:air>, <item:minecraft:air>]]);

addNewCraftingRecipeManaandArtefice("vinteum_coated_iron", <item:mana-and-artifice:vinteum_coated_iron>, [[<tag:items:forge:ingots/manasteel>, <item:mana-and-artifice:vinteum_dust>, <item:minecraft:air>],
                                                                                                          [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                          [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

addNewCraftingRecipeManaandArtefice("purified_vinteum_coated_iron", <item:mana-and-artifice:purified_vinteum_coated_iron>, [[<tag:items:forge:ingots/manasteel>, <item:mana-and-artifice:purified_vinteum_dust>, <item:minecraft:air>],
                                                                                                                            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
                                                                                                                            [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]);

addNewCraftingRecipeManaandArtefice("stone_rune_blank", <item:mana-and-artifice:stone_rune_blank>, [[<item:minecraft:air>, <item:mana-and-artifice:stone_rune_blank>, <item:minecraft:air>],
                                                                                                    [<item:mana-and-artifice:stone_rune_blank>, <item:mana-and-artifice:stone_rune_blank>, <item:mana-and-artifice:stone_rune_blank>],
                                                                                                   [<item:minecraft:air>, <item:mana-and-artifice:stone_rune_blank>, <item:minecraft:air>]]);                                                                                                                            

addNewCraftingRecipeManaandArtefice("Codex_Arcana", <item:mana-and-artifice:guide_book>, [[<item:minecraft:book>, <item:botania:terrasteel_ingot>, <item:minecraft:air>],
                                                                                          [<item:bloodmagic:demonslate>, <item:astralsorcery:resonating_gem>, <item:minecraft:air>],
                                                                                          [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]]); 

addNewCraftingRecipeManaandArtefice("occulus", <item:mana-and-artifice:occulus>, [[<item:minecraft:air>, <tag:items:forge:glass>, <item:minecraft:air>],
                                                                                  [<tag:items:forge:ingots/manasteel>, <item:mana-and-artifice:vinteum_dust>, <tag:items:forge:ingots/manasteel>],
                                                                                  [<tag:items:botania:livingwood>, <tag:items:botania:livingwood>, <tag:items:botania:livingwood>]]);

addNewCraftingRecipeManaandArtefice("inscription_table", <item:mana-and-artifice:inscription_table>, [[<item:botania:livingwood_planks_slab>, <item:minecraft:ink_sac>, <item:botania:livingwood_planks_slab>],
                                                                                                      [<item:botania:livingwood_planks_slab>, <item:minecraft:paper>, <item:botania:livingwood_planks_slab>],
                                                                                                      [<item:botania:livingwood_planks>, <item:minecraft:air>, <item:botania:livingwood_planks>]]);                                                                                                                                                                                     