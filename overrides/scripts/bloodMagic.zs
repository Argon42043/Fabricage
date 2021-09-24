import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IIngredientWithAmount;

var livingrock = <item:botania:livingrock> as IIngredient;
var elementium = <tag:items:forge:ingots/elementium> as IIngredient;

//function to remove and hide items
function removeItemBloodMagic(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);
    <recipetype:bloodmagic:altar>.removeRecipe(item);
}

//array for items which have to remove first
val itemsToRemoveBloodMagic = [
    <item:patchouli:guide_book>.withTag({"patchouli:book": "bloodmagic:guide" as string}),
    <item:bloodmagic:altar>,
    <item:bloodmagic:blankslate>,
    <item:bloodmagic:blankrune>,
    <item:bloodmagic:alchemytable>
] as IItemStack[];

//for loop for all items in array
for item in itemsToRemoveBloodMagic{
    removeItemBloodMagic(item);
}

//make new recipes for shape crafting with Craftingtable and mechanical crafting
function addNewCraftingRecipeBloodMagic(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
}

//function for shapeless craftingrecipes
function addNewCraftingRecipeBloodMagic_shapeless(recipeName as string, item as IItemStack, recipe as IIngredient[]) as void {
    craftingTable.addShapeless("custom_"+recipeName, item, recipe);
}

//function for shapeless crafting/mixing with Create mod
function addNewMixingRecipeBloodMagic_shapeless(recipeName as string, heat as string, item as IItemStack, recipe as IIngredientWithAmount[]) as void {
    <recipetype:create:mixing>.addRecipe("mixing_"+recipeName, heat, item, recipe);
}

//fuction to change altar recipes
function addNewAltarRecipe(recipeName as string, outputItem as IItemStack, inputItem as IItemStack, minimumTier as int, symphon as int, consume as int, drainRate as int) as void {
    <recipetype:bloodmagic:altar>.addRecipe("altar_"+recipeName, outputItem, inputItem, minimumTier, symphon, consume, drainRate);
}

//calling function for shapeless crafting
addNewCraftingRecipeBloodMagic_shapeless("patchouli_guide_book", <item:patchouli:guide_book>.withTag({"patchouli:book": "bloodmagic:guide" as string}), [<item:minecraft:book>, <item:tconstruct:blood_slime_ball>]);

//calling function for shapeless crafting/mixing with Create mod
addNewMixingRecipeBloodMagic_shapeless("patchouli_guide_book", "none", <item:patchouli:guide_book>.withTag({"patchouli:book": "bloodmagic:guide" as string}), [<item:minecraft:book>, <item:tconstruct:blood_slime_ball>]);

addNewCraftingRecipeBloodMagic("bloodmagic_altar", <item:bloodmagic:altar>, [[livingrock, <item:minecraft:air>, livingrock],
                                                                             [livingrock, <item:minecraft:cauldron>, livingrock], 
                                                                             [elementium, elementium, elementium]]);

//calling altar function                                                                        
addNewAltarRecipe("blank_slate", <item:bloodmagic:blankslate>, livingrock, 1, 1000, 5, 5);

addNewCraftingRecipeBloodMagic("blank_rune_weak_blood_orb", <item:bloodmagic:blankrune>, [[livingrock, <item:bloodmagic:blankslate>, livingrock],
                                                                                          [livingrock, <item:bloodmagic:weakbloodorb>, livingrock], 
                                                                                          [livingrock, livingrock, livingrock]]);
                                                                    
addNewCraftingRecipeBloodMagic("blank_rune_apprentice_blood_orb", <item:bloodmagic:blankrune>, [[livingrock, <item:bloodmagic:blankslate>, livingrock],
                                                                                                [livingrock, <item:bloodmagic:apprenticebloodorb>, livingrock], 
                                                                                                [livingrock, livingrock, livingrock]]);    

addNewCraftingRecipeBloodMagic("blank_rune_magician_blood_orb", <item:bloodmagic:blankrune>, [[livingrock, <item:bloodmagic:blankslate>, livingrock],
                                                                                              [livingrock, <item:bloodmagic:magicianbloodorb>, livingrock], 
                                                                                              [livingrock, livingrock, livingrock]]);    

addNewCraftingRecipeBloodMagic("blank_rune_master_blood_orb", <item:bloodmagic:blankrune>, [[livingrock, <item:bloodmagic:blankslate>, livingrock],
                                                                                            [livingrock, <item:bloodmagic:masterbloodorb>, livingrock], 
                                                                                            [livingrock, livingrock, livingrock]]);    

addNewCraftingRecipeBloodMagic("alchemy_table", <item:bloodmagic:alchemytable>, [[livingrock, livingrock, livingrock],
                                                                                [<tag:items:minecraft:planks>, <item:astralsorcery:starmetal_ingot>, <tag:items:minecraft:planks>],
                                                                                [elementium, <item:bloodmagic:blankslate>, elementium]]);