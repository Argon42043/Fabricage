import crafttweaker.api.tag.TagManagerFluid;
import crafttweaker.api.tag.TagManager;

val notWater = [
    <fluid:create_confectionery:black_chocolate>,
    <fluid:create_confectionery:black_chocolate_flowing>,
    <fluid:create_confectionery:white_chocolate>,
    <fluid:create_confectionery:white_chocolate_flowing>,
    <fluid:create_confectionery:hot_chocolate>,
    <fluid:create_confectionery:hot_chocolate_flowing>,
    <fluid:create_confectionery:caramel>,
    <fluid:create_confectionery:caramel_flowing>,
    <fluid:create_confectionery:ruby_chocolate>,
    <fluid:create_confectionery:ruby_chocolate_flowing>,
    <fluid:create:flowing_honey>,
    <fluid:create:honey>,
    <fluid:create:flowing_chocolate>,
    <fluid:create:chocolate>,
    <fluid:createaddition:flowing_seed_oil>,
    <fluid:createaddition:seed_oil>
];

for fluid in notWater{
    <tag:fluids:minecraft:water>.remove(fluid);
}