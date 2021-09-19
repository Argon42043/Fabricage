import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IIngredientWithAmount;

function removeAndHideItemBloodMagic(item as IItemStack) as void{
    craftingTable.removeRecipe(item);
    <recipetype:create:mechanical_crafting>.removeRecipe(item);
    <recipetype:bloodmagic:altar>.removeRecipe(item);
}

val itemsToRemove_blood_magic = [
    <item:patchouli:guide_book>,
    <item:bloodmagic:altar>,
    <item:bloodmagic:blankslate>,
    <item:bloodmagic:blankrune>
] as IItemStack[];

for item in itemsToRemove_blood_magic{
    removeAndHideItemBloodMagic(item);
}

function addNewCraftingRecipeBloodMagic(recipeName as string, item as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_"+recipeName, item, recipe);
    craftingTable.addShaped("custom_"+recipeName, item, recipe);
}

function addNewCraftingRecipeBloodMagic_shapeless(recipeName as string, item as IItemStack, recipe as IIngredient[]) as void {
    craftingTable.addShapeless("custom_"+recipeName, item, recipe);
}

function addNewMixingRecipeBloodMagic_shapeless(recipeName as string, heat as string, item as IItemStack, recipe as IIngredientWithAmount[]) as void {
    <recipetype:create:mixing>.addRecipe("mixing_"+recipeName, heat, item, recipe);
}

function addNewAltarRecipe(recipeName as string, outputItem as IItemStack, inputItem as IItemStack, minimumTier as int, symphon as int, consume as int, drainRate as int) as void {
    <recipetype:bloodmagic:altar>.addRecipe("altar_"+recipeName, outputItem, inputItem, minimumTier, symphon, consume, drainRate);
}

addNewCraftingRecipeBloodMagic_shapeless("patchouli_guide_book", <item:patchouli:guide_book>, [<item:minecraft:book>, <item:tconstruct:blood_slime_ball>]);
addNewMixingRecipeBloodMagic_shapeless("patchouli_guide_book", "none", <item:patchouli:guide_book>, [<item:minecraft:book>, <item:tconstruct:blood_slime_ball>]);

addNewCraftingRecipeBloodMagic("bloodmagic_altar", <item:bloodmagic:altar>, [[<item:botania:livingrock>, <item:minecraft:air>, <item:botania:livingrock>],
                                                                             [<item:botania:livingrock>, <item:minecraft:cauldron>, <item:botania:livingrock>], 
                                                                             [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>]]);
                                                                        
addNewAltarRecipe("blank_slate", <item:bloodmagic:blankslate>, <item:botania:livingrock>, 1, 1000, 5, 5);

addNewCraftingRecipeBloodMagic("blank_rune_weak_blood_orb", <item:bloodmagic:blankrune>, [[<item:botania:livingrock>, <item:bloodmagic:blankslate>, <item:botania:livingrock>],
                                                                                          [<item:botania:livingrock>, <item:bloodmagic:weakbloodorb>, <item:botania:livingrock>], 
                                                                                          [<item:botania:livingrock>, <item:botania:livingrock>, <item:botania:livingrock>]]);
                                                                    
addNewCraftingRecipeBloodMagic("blank_rune_apprentice_blood_orb", <item:bloodmagic:blankrune>, [[<item:botania:livingrock>, <item:bloodmagic:blankslate>, <item:botania:livingrock>],
                                                                                                [<item:botania:livingrock>, <item:bloodmagic:apprenticebloodorb>, <item:botania:livingrock>], 
                                                                                                [<item:botania:livingrock>, <item:botania:livingrock>, <item:botania:livingrock>]]);    

addNewCraftingRecipeBloodMagic("blank_rune_magician_blood_orb", <item:bloodmagic:blankrune>, [[<item:botania:livingrock>, <item:bloodmagic:blankslate>, <item:botania:livingrock>],
                                                                                              [<item:botania:livingrock>, <item:bloodmagic:magicianbloodorb>, <item:botania:livingrock>], 
                                                                                              [<item:botania:livingrock>, <item:botania:livingrock>, <item:botania:livingrock>]]);    

addNewCraftingRecipeBloodMagic("blank_rune_master_blood_orb", <item:bloodmagic:blankrune>, [[<item:botania:livingrock>, <item:bloodmagic:blankslate>, <item:botania:livingrock>],
                                                                                            [<item:botania:livingrock>, <item:bloodmagic:masterbloodorb>, <item:botania:livingrock>], 
                                                                                            [<item:botania:livingrock>, <item:botania:livingrock>, <item:botania:livingrock>]]);    
