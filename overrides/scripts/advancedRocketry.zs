import crafttweaker.api.item.IItemStack;
import crafttweaker.api.game.MCGame;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.tag.TagManager;
import mods.jei.JEI;

var basicLaserGun = <item:advancedrocketry:basic_laser_gun> as IItemStack;

var itemsRemove = [
    basicLaserGun
] as IItemStack[];

for item in itemsRemove {
    removeAndHideItem(basicLaserGun);
}
