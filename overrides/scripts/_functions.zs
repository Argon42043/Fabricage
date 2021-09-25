import crafttweaker.api.item.IItemStack;
import crafttweaker.api.game.MCGame;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.tag.TagManager;
import mods.jei.JEI;

function removeAndHide(item as IItemStack) as void {
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

    //remove all tags from item
    for tag in item.definition.getTags() {
        tag.remove(item);
    }
    
    //hide item
    JEI.hideItem(item);
}