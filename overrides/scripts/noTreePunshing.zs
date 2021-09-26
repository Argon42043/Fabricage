import crafttweaker.api.item.IItemStack;
import mods.jei.JEI;

val removeStones = [
    <item:notreepunching:andesite_cobblestone>,
    <item:notreepunching:diorite_cobblestone>,
    <item:notreepunching:granite_cobblestone>,
    <item:notreepunching:andesite_cobblestone_stairs>,
    <item:notreepunching:diorite_cobblestone_stairs>,
    <item:notreepunching:granite_cobblestone_stairs>,
    <item:notreepunching:andesite_cobblestone_slab>,
    <item:notreepunching:diorite_cobblestone_slab>,
    <item:notreepunching:granite_cobblestone_slab>,
    <item:notreepunching:andesite_cobblestone_wall>,
    <item:notreepunching:diorite_cobblestone_wall>,
    <item:notreepunching:granite_cobblestone_wall>,
    <item:notreepunching:andesite_loose_rock>,
    <item:notreepunching:diorite_loose_rock>,
    <item:notreepunching:granite_loose_rock>,
    <item:notreepunching:stone_loose_rock>,
    <item:notreepunching:sandstone_loose_rock>,
    <item:notreepunching:red_sandstone_loose_rock>
] as IItemStack[];

//flint shard description
mods.jei.JEI.addInfo(<item:notreepunching:flint_shard>,["knock flint on a stone to get flint shards"]);

//clay tool description
mods.jei.JEI.addInfo(<item:notreepunching:clay_tool>,["use this tool on clay to shape it into some more useful things"]);

//remove cobblestone variants
for stone in removeStones {
    removeAndHideItem(stone);
}