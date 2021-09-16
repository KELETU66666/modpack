#loader crafttweaker reloadableevents


//修改燧石工具的耐久为十五分之一（修改后为10点）
<item:survivalist:hatchet>.maxDamage /= 15;
<item:survivalist:pick>.   maxDamage /= 15;
<item:survivalist:spade>.  maxDamage /= 15;

//修改火把的合成
recipes.remove(<item:minecraft:torch>);
recipes.remove(<item:tconstruct:stone_torch>);
recipes.addShaped(<minecraft:torch>*1, [ 
[<item:minecraft:coal> ],
[<item:minecraft:stick>]   
]);
recipes.addShaped(<item:tconstruct:stone_torch>, [ 
[<item:minecraft:coal>        ],
[<item:tconstruct:stone_stick>]   
]);