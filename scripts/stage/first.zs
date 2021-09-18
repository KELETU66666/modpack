#loader crafttweaker reloadableevents

//修改动能发电机的合成
recipes.removeShaped(<immersiveengineering:metal_device1:2>, 
[[null,                  null,                                     null],
[<minecraft:redstone>,   <immersiveengineering:metal_decoration0>, <minecraft:redstone>], 
[<minecraft:iron_ingot>, <minecraft:iron_ingot>,                   <minecraft:iron_ingot>]]);
recipes.addShaped(<immersiveengineering:metal_decoration1:2>, 
[[null,                  <minecraft:iron_nugget>,                  null],
[<minecraft:redstone>,   <immersiveengineering:metal_decoration0>, <ore:plateIron>]]);