import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IIngredientWithAmount;
import crafttweaker.api.BlastFurnaceManager;

var ferrite = <item:mapperbase:ferrite> as IItemStack;
var rawSteel = <item:mapperbase:raw_steel> as IItemStack;

function removeAndHideItemMapperBase(completlyHide as bool, item as IItemStack) as void{
    blastFurnace.removeRecipe(item);
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);

    if (completlyHide == true){
        mods.jei.JEI.hideItem(item);
    }
}

val itemsToRemoveMapperBase = [
    ferrite,
    rawSteel
] as IItemStack[];

val itemsToCompletlyHide = [
    ferrite
] as IItemStack[];

var dicision as bool;

for item in itemsToRemoveMapperBase{
    if (item in itemsToCompletlyHide){
        dicision = true;
    } else {
        dicision = false;
    }
    removeAndHideItemMapperBase(dicision, item);
}

<recipetype:create:mixing>.addRecipe("mixing_raw_steel", "heated", rawSteel, [<tag:items:forge:dusts/iron>, <item:minecraft:coal>]);
