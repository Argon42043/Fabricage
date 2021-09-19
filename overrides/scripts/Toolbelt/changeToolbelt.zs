import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

function removeAndHideItemToolBelt(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
}

removeAndHideItemToolBelt(<item:toolbelt:pouch>);

function addNewCraftingRecipeToolBelt(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("custom_"+recipeName, item, recipe);
    craftingTable.addShaped("mechanicalcrafting_"+recipeName, item, recipe);
}

addNewCraftingRecipeToolBelt("belt_pouch", <item:toolbelt:pouch>, [[<item:minecraft:string>, <tag:items:forge:ingots/copper>, <item:minecraft:string>],
                                                                    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
                                                                    [<item:minecraft:string>, <item:minecraft:leather>, <item:minecraft:string>]]);