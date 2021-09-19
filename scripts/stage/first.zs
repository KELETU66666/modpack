#loader crafttweaker reloadableevents

//修改动能发电机的合成
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, 
[[null,                  <minecraft:iron_nugget>,                  null],
[<minecraft:redstone>,   <immersiveengineering:metal_decoration0>, <ore:plateIron>]]);

//修改铜/琥珀金线圈的合成
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.remove(<immersiveengineering:metal_decoration0:1>);
recipes.addShaped(<immersiveengineering:metal_decoration0>, 
[[null,                           <immersiveengineering:wirecoil>, null],
[<immersiveengineering:wirecoil>, <ore:nuggetSteel>,               <immersiveengineering:wirecoil>], 
[null,                            <immersiveengineering:wirecoil>, null]]);
recipes.addShaped(<immersiveengineering:metal_decoration0:1>, 
[[null,                           <immersiveengineering:wirecoil:1>, null],
[<immersiveengineering:wirecoil:1>, <ore:stickSteel>,               <immersiveengineering:wirecoil:1>], 
[null,                            <immersiveengineering:wirecoil:1>, null]]);

//锤子锤焦煤得到粉
recipes.addShapeless(<immersiveengineering:material:17>, [
    <immersiveengineering:material:6>,<immersiveengineering:tool>.transformDamage(4)
]);