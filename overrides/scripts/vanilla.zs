import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;
import crafttweaker.api.tag.MCTag;

var air         = <item:minecraft:air>              as IIngredient;
var coal        = <tag:items:minecraft:coals>       as IIngredient;
var logs        = <tag:items:minecraft:logs>        as IIngredient;
var planks      = <tag:items:minecraft:planks>      as IIngredient;
var soulSand    = <item:minecraft:soul_sand>        as IIngredient;
var sticks      = <tag:items:forge:rods/wooden>     as IIngredient;

val removeItem = [
    <item:minecraft:wooden_sword>,
    <item:minecraft:wooden_pickaxe>,
    <item:minecraft:wooden_axe>,
    <item:minecraft:wooden_hoe>,
    <item:minecraft:stone_sword>,
    <item:minecraft:stone_shovel>,
    <item:minecraft:stone_pickaxe>,
    <item:minecraft:stone_axe>,
    <item:minecraft:stone_hoe>,
    <item:minecraft:iron_sword>,
    <item:minecraft:iron_shovel>,
    <item:minecraft:iron_pickaxe>,
    <item:minecraft:iron_axe>,
    <item:minecraft:iron_hoe>,
    <item:minecraft:golden_sword>,
    <item:minecraft:golden_shovel>,
    <item:minecraft:golden_pickaxe>,
    <item:minecraft:golden_axe>,
    <item:minecraft:golden_hoe>,
    <item:mapperbase:steel_sword>,
    <item:mapperbase:steel_shovel>,
    <item:mapperbase:steel_pickaxe>,
    <item:mapperbase:steel_axe>,
    <item:mapperbase:steel_hoe>
] as IItemStack[];

//recipe for unlit campfire
craftingTable.addShaped("custom.notreepunching.campfire", <item:minecraft:campfire>.withTag({BlockStateTag:{lit:"false"}}),[
    [air,       sticks, air],
    [sticks,    coal,   sticks],
    [logs,      logs,   logs]
]);

//recipe for unlit soul_campfire
craftingTable.addShaped("custom.notreepunching.soul_campfire", <item:minecraft:soul_campfire>.withTag({BlockStateTag:{lit:"false"}}),[
    [air,       sticks,     air],
    [sticks,    soulSand,   sticks],
    [logs,      logs,       logs]
]);

//remove stone variants
for item in removeItem {
    removeAndHideItem(item);
}

//make wooden shovel not usable
useOnlyOnce(<item:minecraft:wooden_shovel>);
addCraftingRecipe("wood_shovel", <item:minecraft:wooden_shovel>, [
    [air,       air,    planks],
    [air,       sticks, air],
    [sticks,    air,    air]
]);

var removeBoaty = [
    <item:minecraft:oak_boat>,
    <item:minecraft:spruce_boat>,
    <item:minecraft:birch_boat>,
    <item:minecraft:jungle_boat>,
    <item:minecraft:acacia_boat>,
    <item:minecraft:dark_oak_boat>,
    <item:biomesoplenty:fir_boat>,
    <item:biomesoplenty:redwood_boat>,
    <item:biomesoplenty:cherry_boat>,
    <item:biomesoplenty:mahogany_boat>,
    <item:biomesoplenty:jacaranda_boat>,
    <item:biomesoplenty:palm_boat>,
    <item:biomesoplenty:willow_boat>,
    <item:biomesoplenty:dead_boat>,
    <item:biomesoplenty:magic_boat>,
    <item:biomesoplenty:umbran_boat>,
    <item:biomesoplenty:hellbark_boat>
] as IItemStack[];

//remove default boats
for item in removeBoaty{
    removeAndHideItem(item);
}