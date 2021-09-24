import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

function removeAndHideItemQuark(item as IItemStack) as void{
    //hide item
    mods.jei.JEI.hideItem(item);
}

//removed Quark Backpack
removeAndHideItemQuark(<item:quark:backpack>);