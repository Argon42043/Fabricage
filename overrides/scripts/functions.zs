#priority 100
import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

function removeAndHideItem(item as IItemStack) as void{
    //remove construction of item
    craftingTable.removeRecipe(item);
    stoneCutter.removeRecipe(item);

    //remove usage of item
    <tag:items:minecraft:stone_crafting_materials>.remove(item);
    <tag:items:forge:cobblestone>.remove(item);
    <tag:items:minecraft:stone_tool_materials>.remove(item);
    <tag:items:quark:stone_tool_materials>.remove(item);
    <tag:items:notreepunching:cobblestone>.remove(item);

    //hide item
    mods.jei.JEI.hideItem(item);
}