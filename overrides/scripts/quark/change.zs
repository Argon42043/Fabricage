import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

function removeAndHideItem_quark(item as IItemStack) as void{
    //hide item
    mods.jei.JEI.hideItem(item);
}

//removed Quark Backpack
removeAndHideItem_quark(<item:quark:backpack>);