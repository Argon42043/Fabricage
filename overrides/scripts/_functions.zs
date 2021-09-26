import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.MCItemDefinition;
import crafttweaker.api.game.MCGame;
import crafttweaker.api.registries.IRecipeManager;
import mods.jei.JEI;

import crafttweaker.api.tag.TagManager;


function removeItem(item as IItemStack) as void {
    //recipetypes not removable by IItemStack
    val dontRemove = [
        <recipetype:immersiveengineering:mixer>,
        <recipetype:immersiveengineering:refinery>,
        <recipetype:immersiveengineering:mineral_mix>,
        <recipetype:astralsorcery:well>,
        <recipetype:astralsorcery:block_transmutation>,
        <recipetype:astralsorcery:altar>,
        <recipetype:botania:pure_daisy>,
        <recipetype:tconstruct:material>,
        <recipetype:tconstruct:tinker_station>,
        <recipetype:tconstruct:melting>,
        <recipetype:tconstruct:entity_melting>,
        <recipetype:tconstruct:fuel>,
        <recipetype:tconstruct:alloying>
    ] as IRecipeManager[];

    //remove all production recipes for item
    for type in game.recipeTypes {
        if (!(type in dontRemove)) {
            type.removeRecipe(item);
        }
    }

    for tag in <tag:items:forge:stone>.getManager().all {
        tag.remove(item);
    }
}



function removeAndHideItem(item as IItemStack) as void {
    removeItem(item);
    //hide item
    JEI.hideItem(item);
}


function addCraftingRecipe(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void {
    craftingTable.addShaped("custom_" + recipeName, output, ingredients);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_" + recipeName, output, ingredients);
}


function changeCraftingRecipe(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void {
    craftingTable.removeRecipe(output);
    addCraftingRecipe(recipeName, output, ingredients);
}


function useOnlyOnce(item as IItemStack) as void {
    item.maxDamage = 1;
    item.addTooltip("§cBe careful, it's fragile!");
}