import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

val removeItem = [
    <item:immersiveengineering:sword_steel>,
    <item:immersiveengineering:shovel_steel>,
    <item:immersiveengineering:pickaxe_steel>,
    <item:immersiveengineering:axe_steel>,
    <item:immersiveengineering:hoe_steel>
] as IItemStack[];

for item in removeItem {
    removeAndHideItem(item);
}

//Recipe for Crafting table and mechanical Crafter
function changeCraftingRecipeImmersiveEngineering(recipeName as string, output as IItemStack, ingredients as IIngredient[][]) as void{
    craftingTable.removeRecipe(output);
    craftingTable.addShaped("custom_" + recipeName, output, ingredients);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_" + recipeName, output, ingredients);
}

//Coke Brick
changeCraftingRecipeImmersiveEngineering("coke_brick", <item:immersiveengineering:cokebrick>,[
    [<tag:items:forge:clay>, <tag:items:forge:ingots/brick>, <tag:items:forge:clay>],
    [<tag:items:forge:ingots/brick>, <item:bloodmagic:arcaneashes>, <tag:items:forge:ingots/brick>],
    [<tag:items:forge:clay>, <tag:items:forge:ingots/brick>, <tag:items:forge:clay>]
]);

//Blast Brick
changeCraftingRecipeImmersiveEngineering("blast_brick", <item:immersiveengineering:blastbrick>,[
    [<tag:items:forge:ingots/nether_brick>, <tag:items:forge:ingots/brick>, <tag:items:forge:ingots/nether_brick>],
    [<tag:items:forge:ingots/brick>, <tag:items:bloodmagic:dusts/corrupted>, <tag:items:forge:ingots/brick>],
    [<tag:items:forge:ingots/nether_brick>, <tag:items:forge:ingots/brick>, <tag:items:forge:ingots/nether_brick>]
]);

//Engineers Hammer
changeCraftingRecipeImmersiveEngineering("engineers_hammer", <item:immersiveengineering:hammer>, [
    [<item:minecraft:air>, <tag:items:forge:ingots/iron>, <tag:items:forge:string>],
    [<item:minecraft:air>, <tag:items:forge:rods/treated_wood>, <tag:items:forge:ingots/iron>],
    [<tag:items:forge:rods/treated_wood>, <item:minecraft:air>, <item:minecraft:air>]
]);

//Engineers Wire Cutter
changeCraftingRecipeImmersiveEngineering("wire_cutter", <item:immersiveengineering:wirecutter>, [
    [<tag:items:forge:rods/treated_wood>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:air>, <tag:items:forge:rods/treated_wood>]
]);

//Engineers Screwdriver
changeCraftingRecipeImmersiveEngineering("screwdriver", <item:immersiveengineering:screwdriver>, [
    [<item:minecraft:air>, <tag:items:forge:rods/iron>],
    [<tag:items:forge:rods/treated_wood>, <item:minecraft:air>]
]);

//Engineers Manual
craftingTable.removeRecipe(<item:immersiveengineering:manual>);
craftingTable.addShapeless("custom_engineers_manual", <item:immersiveengineering:manual>, [<item:minecraft:book>, <item:createaddition:overcharged_alloy>]);

//Engineers Crafting Table
changeCraftingRecipeImmersiveEngineering("crafting_table", <item:immersiveengineering:craftingtable>, [
    [<tag:items:forge:treated_wood_slab>, <tag:items:forge:workbenches>, <tag:items:forge:treated_wood_slab>],
    [<tag:items:forge:rods/steel>, <item:astralsorcery:resonating_gem>, <tag:items:forge:rods/steel>],
    [<tag:items:forge:rods/steel>, <item:minecraft:air>, <tag:items:forge:rods/steel>]
]);

//Engineers Workbench
changeCraftingRecipeImmersiveEngineering("engineers_workbench", <item:immersiveengineering:workbench>, [
    [<tag:items:forge:ingots/iron>, <tag:items:forge:treated_wood_slab>, <tag:items:forge:treated_wood_slab>],
    [<item:immersiveengineering:craftingtable>, <tag:items:bloodmagic:dusts/corrupted>, <item:immersiveengineering:treated_fence>]
]);

//Mechanical Component
craftingTable.removeRecipe(<item:immersiveengineering:component_iron>);
craftingTable.removeRecipe(<item:immersiveengineering:component_steel>);

//Metal Bar
craftingTable.removeRecipe(<item:engineersdecor:metal_bar>);
<recipetype:immersiveengineering:metal_press>.addRecipe("metal_bar", <tag:items:forge:plates/iron>, <item:immersiveengineering:mold_rod>, 1000, <item:engineersdecor:metal_bar>);

//Engineers Decor
craftingTable.removeRecipe(<item:patchouli:guide_book>.withTag({"patchouli:book": "engineersdecor:engineersdecor_manual" as string}));
craftingTable.addShapeless("custom_engineersdecor_manual", <item:patchouli:guide_book>.withTag({"patchouli:book": "engineersdecor:engineersdecor_manual" as string}), [<item:minecraft:book>, <item:engineersdecor:metal_bar>]);