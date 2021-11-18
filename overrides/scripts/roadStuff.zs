import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var lavaBukkit = <item:minecraft:lava_bucket> as IItemStack;
var slag = <item:immersiveengineering:slag> as IItemStack;
var gravel = <item:minecraft:gravel> as IItemStack;
var bitumen = <item:immersivepetroleum:bitumen> as IItemStack;

var itemsRemove = [
    <item:immersivepetroleum:asphalt>,
    <item:immersivepetroleum:asphalt_slab>,
    <item:immersivepetroleum:asphalt_stairs>
] as IItemStack[];

var itemsHide = [
    <item:doubleslabs:vertical_slab>.withTag({item: {id: "immersivepetroleum:asphalt_slab" as string, Count: 1 as byte}})
] as IItemStack[];

var itemsChange = [
    <item:mapperbase:asphalt>,
] as IItemStack[];

for items in itemsRemove{
    removeAndHideItem(items);
}

for items in itemsHide{
    JEI.hideItem(items);
}

changeCraftingRecipe("asphalt_mapperbase", itemsChange[0], 
                    [[slag, bitumen, slag],
                    [gravel, lavaBukkit, gravel],
                    [slag, bitumen, slag]]);