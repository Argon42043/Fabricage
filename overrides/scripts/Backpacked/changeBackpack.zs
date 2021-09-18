import mods.jei.JEI;
import crafttweaker.api.item.IItemStack;

craftingTable.removeRecipe(<item:backpacked:backpack>);
<recipetype:create:mechanical_crafting>.addRecipe("custom_backpack", <item:backpacked:backpack>, [[<item:mapperbase:bolt>, <item:minecraft:leather>, <item:mapperbase:bolt>], [<item:minecraft:leather>, <item:minecraft:iron_ingot>, <item:minecraft:leather>], [<item:toolbelt:pouch>, <item:minecraft:leather>, <item:toolbelt:pouch>]]);