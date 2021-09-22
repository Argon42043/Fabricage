import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;


function removeAndHideItem(item as IItemStack) as void{
    //remove construction of item
    craftingTable.removeRecipe(item);
    stoneCutter.removeRecipe(item);

    //remove usage of item
    <tag:items:minecraft:stone_crafting_materials>.remove(item);
    <tag:items:forge:cobblestone>.remove(item);
    <tag:items:minecraft:stone_tool_materials>.remove(item);
    <tag:items:quark:stone_tool_materials>.remove(item);
    <tag:items:notreepunching:cobblestone>.remove(item);

    //hide item
    mods.jei.JEI.hideItem(item);
}

####################
## NoTreePunching ##
####################

//remove cobblestone variants
removeAndHideItem(<item:notreepunching:andesite_cobblestone>);
removeAndHideItem(<item:notreepunching:diorite_cobblestone>);
removeAndHideItem(<item:notreepunching:granite_cobblestone>);

furnace.removeByName("notreepunching:smelting/andesite_from_cobblestone");
furnace.removeByName("notreepunching:smelting/diorite_from_cobblestone");
furnace.removeByName("notreepunching:smelting/granite_from_cobblestone");

//remove cobblestone stairs variants
removeAndHideItem(<item:notreepunching:andesite_cobblestone_stairs>);
removeAndHideItem(<item:notreepunching:diorite_cobblestone_stairs>);
removeAndHideItem(<item:notreepunching:granite_cobblestone_stairs>);

//remove cobblestone slab variants
removeAndHideItem(<item:notreepunching:andesite_cobblestone_slab>);
removeAndHideItem(<item:notreepunching:diorite_cobblestone_slab>);
removeAndHideItem(<item:notreepunching:granite_cobblestone_slab>);

//remove cobblestone wall variants
removeAndHideItem(<item:notreepunching:andesite_cobblestone_wall>);
removeAndHideItem(<item:notreepunching:diorite_cobblestone_wall>);
removeAndHideItem(<item:notreepunching:granite_cobblestone_wall>);

//remove loose rocks
removeAndHideItem(<item:notreepunching:andesite_loose_rock>);
removeAndHideItem(<item:notreepunching:diorite_loose_rock>);
removeAndHideItem(<item:notreepunching:granite_loose_rock>);
removeAndHideItem(<item:notreepunching:stone_loose_rock>);
removeAndHideItem(<item:notreepunching:sandstone_loose_rock>);
removeAndHideItem(<item:notreepunching:red_sandstone_loose_rock>);


##################
## remove Tools ##
##################

//remove wooden tools
removeAndHideItem(<item:minecraft:wooden_sword>);
removeAndHideItem(<item:minecraft:wooden_shovel>);
removeAndHideItem(<item:minecraft:wooden_pickaxe>);
removeAndHideItem(<item:minecraft:wooden_axe>);
removeAndHideItem(<item:minecraft:wooden_hoe>);

//remove stone tools
removeAndHideItem(<item:minecraft:stone_sword>);
removeAndHideItem(<item:minecraft:stone_shovel>);
removeAndHideItem(<item:minecraft:stone_pickaxe>);
removeAndHideItem(<item:minecraft:stone_axe>);
removeAndHideItem(<item:minecraft:stone_hoe>);

//remove iron tools
removeAndHideItem(<item:minecraft:iron_sword>);
removeAndHideItem(<item:minecraft:iron_shovel>);
removeAndHideItem(<item:minecraft:iron_pickaxe>);
removeAndHideItem(<item:minecraft:iron_axe>);
removeAndHideItem(<item:minecraft:iron_hoe>);

//remove golden tools
removeAndHideItem(<item:minecraft:golden_sword>);
removeAndHideItem(<item:minecraft:golden_shovel>);
removeAndHideItem(<item:minecraft:golden_pickaxe>);
removeAndHideItem(<item:minecraft:golden_axe>);
removeAndHideItem(<item:minecraft:golden_hoe>);

//remove steel tools
removeAndHideItem(<item:immersiveengineering:sword_steel>);
removeAndHideItem(<item:immersiveengineering:shovel_steel>);
removeAndHideItem(<item:immersiveengineering:pickaxe_steel>);
removeAndHideItem(<item:immersiveengineering:axe_steel>);
removeAndHideItem(<item:immersiveengineering:hoe_steel>);
removeAndHideItem(<item:mapperbase:steel_sword>);
removeAndHideItem(<item:mapperbase:steel_shovel>);
removeAndHideItem(<item:mapperbase:steel_pickaxe>);
removeAndHideItem(<item:mapperbase:steel_axe>);
removeAndHideItem(<item:mapperbase:steel_hoe>);

################################
## remove smeltery in furnace ##
################################

var itemsToRemoveFurnaceAndBlastFurnace = [
    //<tag:items:forge:ores/gold>,
    <item:minecraft:gold_ore>,
    <item:minecraft:nether_gold_ore>,
    //<tag:items:forge:ores/iron>,
    <item:minecraft:iron_ore>,
    //<tag:items:forge:ores/coal>,
    <item:minecraft:coal_ore>,
    //<tag:items:forge:ores/lapis>,
    <item:minecraft:lapis_ore>,
    //<tag:items:forge:ores/diamond>,
    <item:minecraft:diamond_ore>,
    //<tag:items:forge:ores/redstone>,
    <item:minecraft:redstone_ore>,
    //<tag:items:forge:ores/emerald>,
    <item:minecraft:emerald_ore>,
    //<tag:items:forge:ores/copper>,
    <item:create:copper_ore>,
    <item:libvulpes:orecopper>,
    <item:mekanism:copper_ore>,
    <item:immersiveengineering:ore_copper>,
    <item:minecraft:nether_quartz_ore>,
    <item:create:zinc_ore>,
    //<tag:items:forge:ores/aluminum>,
    <item:immersiveengineering:ore_aluminum>,
    <item:libvulpes:orealuminum>,
    //<tag:items:forge:ores/lead>,
    <item:immersiveengineering:ore_lead>,
    <item:mekanism:lead_ore>,
    //<tag:items:forge:ores/silver>,
    <item:immersiveengineering:ore_silver>,
    //<tag:items:forge:ores/nickel>,
    <item:immersiveengineering:ore_nickel>,
    //<tag:items:forge:ores/uranium>,
    <item:immersiveengineering:ore_uranium>,
    <item:mekanism:uranium_ore>,
    //<tag:items:forge:ores/tin>,
    <item:libvulpes:oretin>,
    <item:mekanism:tin_ore>,
    //<tag:items:forge:ore/osmium>
    <item:mekanism:osmium_ore>
] as IItemStack[];

for itemFB in itemsToRemoveFurnaceAndBlastFurnace {
    blastFurnace.removeRecipeByInput(itemFB);
    furnace.removeRecipeByInput(itemFB);
}

var itemsToRemoveFurnace = [
    <item:astralsorcery:starmetal_ore>,
    <item:mana-and-artifice:vinteum_ore>,
    //<tag:items:forge:ores/iridium>, //Nachschauen
    <item:libvulpes:oreiridium>,
    //<tag:items:forge:ores/bitumen>
    <item:mapperbase:bitumen_ore>
] as IItemStack[];

for itemF in itemsToRemoveFurnace {
    furnace.removeRecipeByInput(itemF);
}