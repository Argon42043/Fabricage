import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.MCTag;

var beacon = <item:minecraft:beacon> as IItemStack;
var grouthLens = <item:astralsorcery:colored_lens_growth> as IItemStack;
var damageLens = <item:astralsorcery:colored_lens_damage> as IItemStack;
var goldCoil = <item:libvulpes:coilgold> as IItemStack;
var ivoryPsimetalBlock = <item:psi:ivory_psimetal_block> as IItemStack;
var enderDisc = <item:mana-and-artifice:ender_disc> as IItemStack;
var dragonHead = <item:minecraft:dragon_head> as IItemStack;
var wirelessModemAdvanced = <item:computercraft:wireless_modem_advanced> as IItemStack;
var enviromentDetector = <item:advancedperipherals:environment_detector> as IItemStack;
var endereyeBlock = <item:botania:ender_eye_block> as IItemStack;
var enderslimeBucket = <item:tconstruct:ender_slime_bucket> as IItemStack;
var geoScanner = <item:advancedperipherals:geo_scanner> as IItemStack;
var refinedObsidian = <item:mekanism:block_refined_obsidian> as IItemStack;
var manyullynBlock = <item:tconstruct:manyullyn_block> as IItemStack;

var chunkLoader = <item:chickenchunks:chunk_loader> as IItemStack;
var spotLoader = <item:chickenchunks:spot_loader> as IItemStack;

//var netheriteSaw = <item:notreepunching:netherite_saw> as IItemStack;

var itemsToChange = [
    chunkLoader,
    spotLoader
] as IItemStack[];

changeCraftingToMechanicalCrafting(itemsToChange[0].translationKey, itemsToChange[0], 
        [[beacon, beacon, grouthLens, beacon, beacon],
        [damageLens, goldCoil, ivoryPsimetalBlock, goldCoil, damageLens],
        [enderDisc, goldCoil, dragonHead, goldCoil, enderDisc],
        [ivoryPsimetalBlock, goldCoil, wirelessModemAdvanced, goldCoil, ivoryPsimetalBlock],
        [enviromentDetector, endereyeBlock, enderslimeBucket, endereyeBlock, geoScanner],
        [refinedObsidian, manyullynBlock, refinedObsidian, manyullynBlock, refinedObsidian]]);

removeItem(itemsToChange[1]);

<recipetype:pneumaticcraft:pressure_chamber>.addRecipe("spot_loader", [chunkLoader], [spotLoader *4], 5.0);
