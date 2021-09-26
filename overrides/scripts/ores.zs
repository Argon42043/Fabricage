import crafttweaker.api.item.IItemStack;

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