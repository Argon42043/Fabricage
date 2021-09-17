import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

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
