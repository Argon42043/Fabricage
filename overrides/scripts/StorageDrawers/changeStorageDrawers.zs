import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

//Recipe for Crafting table and mechanical Crafter
function changeCraftingRecipeStorageDrawers(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void{
    craftingTable.removeRecipe(output);
    craftingTable.addShaped("custom_" + recipeName, output, ingredients);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_" + recipeName, output, ingredients);
}

//Drawer Controller
craftingTable.removeRecipe(<item:storagedrawers:controller>);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_drawer_controller", <item:storagedrawers:controller>, [
    [<tag:items:forge:plates/iron>, <item:minecraft:hopper>, <tag:items:forge:plates/iron>], 
    [<item:minecraft:comparator>, <tag:items:storagedrawers:drawers>, <item:minecraft:comparator>],
    [<tag:items:forge:plates/iron>, <item:minecraft:diamond>, <tag:items:forge:plates/iron>]
    ]);

//Drawer Controller Slave
craftingTable.removeRecipe(<item:storagedrawers:controller_slave>);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_drawer_controller_slave", <item:storagedrawers:controller_slave>, [
    [<tag:items:forge:plates/iron>, <item:minecraft:hopper>, <tag:items:forge:plates/iron>], 
    [<item:minecraft:comparator>, <tag:items:storagedrawers:drawers>, <item:minecraft:comparator>],
    [<tag:items:forge:plates/iron>, <item:minecraft:gold_ingot>, <tag:items:forge:plates/iron>]
    ]);

//Drawer Compacting Drawer
craftingTable.removeRecipe(<item:storagedrawers:compacting_drawers_3>);
<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_compacting_drawer", <item:storagedrawers:compacting_drawers_3>, [
    [<tag:items:forge:plates/iron>, <item:minecraft:iron_ingot>, <tag:items:forge:plates/iron>], 
    [<item:minecraft:piston>, <tag:items:storagedrawers:drawers>, <item:minecraft:piston>],
    [<tag:items:forge:plates/iron>, <item:minecraft:iron_ingot>, <tag:items:forge:plates/iron>]
    ]);

//Upgrade template
changeCraftingRecipeStorageDrawers("upgrade_template", <item:storagedrawers:upgrade_template>, [
    [<tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>], 
    [<tag:items:minecraft:planks>, <tag:items:storagedrawers:drawers>, <tag:items:minecraft:planks>],
    [<tag:items:forge:rods/wooden>, <tag:items:minecraft:planks>, <tag:items:forge:rods/wooden>]
]);

//Obsidian Storage Upgrade
changeCraftingRecipeStorageDrawers("obsidian_storage_upgrade",<item:storagedrawers:obsidian_storage_upgrade>, [
    [<tag:items:forge:rods/wooden>, <tag:items:forge:obsidian>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:obsidian>, <item:storagedrawers:upgrade_template>, <tag:items:forge:obsidian>],
    [<tag:items:forge:rods/wooden>, <tag:items:forge:obsidian>, <tag:items:forge:rods/wooden>]
]);

//Iron Storage Upgrade
changeCraftingRecipeStorageDrawers("iron_storage_upgrade",<item:storagedrawers:iron_storage_upgrade>, [
    [<tag:items:forge:rods/wooden>, <tag:items:forge:ingots/iron>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:ingots/iron>, <item:storagedrawers:upgrade_template>, <tag:items:forge:ingots/iron>],
    [<tag:items:forge:rods/wooden>, <tag:items:forge:ingots/iron>, <tag:items:forge:rods/wooden>]
]);

//Gold Storage Upgrade
changeCraftingRecipeStorageDrawers("gold_storage_upgrade",<item:storagedrawers:gold_storage_upgrade>, [
    [<tag:items:forge:rods/wooden>, <tag:items:forge:ingots/gold>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:ingots/gold>, <item:storagedrawers:upgrade_template>, <tag:items:forge:ingots/gold>],
    [<tag:items:forge:rods/wooden>, <tag:items:forge:ingots/gold>, <tag:items:forge:rods/wooden>]
]);

//Diamond Storage Upgrade
changeCraftingRecipeStorageDrawers("diamond_storage_upgrade",<item:storagedrawers:diamond_storage_upgrade>, [
    [<tag:items:forge:rods/wooden>, <tag:items:forge:gems/diamond>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:gems/diamond>, <item:storagedrawers:upgrade_template>, <tag:items:forge:gems/diamond>],
    [<tag:items:forge:rods/wooden>, <tag:items:forge:gems/diamond>, <tag:items:forge:rods/wooden>]
]);

//Emerald Storage Upgrade
changeCraftingRecipeStorageDrawers("emerald_storage_upgrade",<item:storagedrawers:emerald_storage_upgrade>, [
    [<tag:items:forge:rods/wooden>, <tag:items:forge:gems/emerald>, <tag:items:forge:rods/wooden>],
    [<tag:items:forge:gems/emerald>, <item:storagedrawers:upgrade_template>, <tag:items:forge:gems/emerald>],
    [<tag:items:forge:rods/wooden>, <tag:items:forge:gems/emerald>, <tag:items:forge:rods/wooden>]
]);

//Flint Storage Upgrade
changeCraftingRecipeStorageDrawers("one_stack_upgrade",<item:storagedrawers:one_stack_upgrade>, [
    [<tag:items:forge:rods/wooden>, <item:minecraft:flint>, <tag:items:forge:rods/wooden>],
    [<item:minecraft:flint>, <item:storagedrawers:upgrade_template>, <item:minecraft:flint>],
    [<tag:items:forge:rods/wooden>, <item:minecraft:flint>, <tag:items:forge:rods/wooden>]
]);

//Redstone Upgrade
changeCraftingRecipeStorageDrawers("redstone_upgrade",<item:storagedrawers:redstone_upgrade>, [
    [<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>],
    [<tag:items:forge:dusts/redstone>, <item:storagedrawers:upgrade_template>, <tag:items:forge:dusts/redstone>],
    [<tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>, <tag:items:forge:dusts/redstone>]
]);

//Illumination Upgrade
changeCraftingRecipeStorageDrawers("illumination_upgrade",<item:storagedrawers:illumination_upgrade>, [
    [<tag:items:forge:dusts/glowstone>, <tag:items:forge:dusts/glowstone>, <tag:items:forge:dusts/glowstone>],
    [<tag:items:forge:dusts/glowstone>, <item:storagedrawers:upgrade_template>, <tag:items:forge:dusts/glowstone>],
    [<tag:items:forge:dusts/glowstone>, <tag:items:forge:dusts/glowstone>, <tag:items:forge:dusts/glowstone>]
]);