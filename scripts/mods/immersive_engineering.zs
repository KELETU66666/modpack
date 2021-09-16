#loader crafttweaker reloadableevents

//焦炉砖
recipes.removeShaped(<item:immersiveengineering:stone_decoration>*3,
[
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>],
    [<minecraft:brick>,    <ore:sandstone>,  <minecraft:brick>],
    [<minecraft:clay_ball>,<minecraft:brick>,<minecraft:clay_ball>]
]);
recipes.addShaped(<item:immersiveengineering:stone_decoration>*1,
[
    [<minecraft:clay_ball>,<minecraft:brick>],
    [<minecraft:brick>,    <ore:sandstone>]
]);

//高炉砖
recipes.removeShaped(<item:immersiveengineering:stone_decoration:1>*3, 
[[<minecraft:netherbrick>, <minecraft:brick>,        <minecraft:netherbrick>],
[<minecraft:brick>,        <minecraft:blaze_powder>, <minecraft:brick>], 
[<minecraft:netherbrick>,  <minecraft:brick>,        <minecraft:netherbrick>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:1>*1,
[
    [<minecraft:clay_ball>,<minecraft:coal>],
    [<minecraft:brick>,    <minecraft:coal>]
]);
recipes.addShaped(<immersiveengineering:stone_decoration:1>*3,
[
    [<minecraft:clay_ball>,<immersiveengineering:material:17>],
    [<minecraft:brick>,    <immersiveengineering:material:17>]
]);


