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
        <recipetype:tconstruct:alloying>,
        <recipetype:mekanism:crushing>,
        <recipetype:mekanism:enriching>,
        <recipetype:mekanism:smelting>,
        <recipetype:mekanism:chemical_infusing>,
        <recipetype:mekanism:combining>,
        <recipetype:mekanism:separating>,
        <recipetype:mekanism:washing>,
        <recipetype:mekanism:evaporating>,
        <recipetype:mekanism:activating>,
        <recipetype:mekanism:centrifuging>,
        <recipetype:mekanism:crystallizing>,
        <recipetype:mekanism:dissolution>,
        <recipetype:mekanism:compressing>,
        <recipetype:mekanism:purifying>,
        <recipetype:mekanism:injecting>,
        <recipetype:mekanism:nucleosynthesizing>,
        <recipetype:mekanism:energy_conversion>,
        <recipetype:mekanism:gas_conversion>,
        <recipetype:mekanism:oxidizing>,
        <recipetype:mekanism:infusion_conversion>,
        <recipetype:mekanism:pigment_extracting>,
        <recipetype:mekanism:pigment_mixing>,
        <recipetype:mekanism:metallurgic_infusing>,
        <recipetype:mekanism:painting>,
        <recipetype:mekanism:reaction>,
        <recipetype:mekanism:rotary>,
        <recipetype:mekanism:sawing>
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

function changeCraftingToMechanicalCrafting(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void {
    craftingTable.removeRecipe(output);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafing_" + recipeName, output, ingredients);
}