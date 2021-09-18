#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlock;
import mods.ctutils.utils.Math;

import crafttweaker.text.ITextComponent;


function noCutDownTreesByHand (event as BlockHarvestDropsEvent) as void{
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    if(player.isFake()) return;
    if(<ore:logWood>.matches(event.drops[0].stack)){
        if(isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")){
            event.drops = [];
            player.sendRichTextMessage(ITextComponent.fromTranslation(game.localize("io.hagiographa.warnofnocutdowntreesbyhand")));
        }
        
    }
}//不能空手撸树
function noCobbleStone(event as BlockHarvestDropsEvent) as void{
    if (isNull(event.player)) return;
    var player as IPlayer = event.player;
    if(!event.world.remote) {

        if (event.drops.length == 0 || event.silkTouch || player.isFake()||!event.isPlayer) {
            return; 
        }
        val block as IBlock = event.block;
        if ((!isNull(block.definition.id)) && (block.definition.id == "minecraft:stone" || block.definition.id == "minecraft:cobblestone")){
            if(!isNull(player.currentItem)){
                if(player.currentItem.getHarvestLevel("pickaxe") < 3){
                event.drops = [<item:survivalist:rock>];
                }
            }  
            
            
        }
    }
}//用3级以下的镐子挖石头掉落一个石子
function noOreBlock(event as BlockHarvestDropsEvent) as void{
    if (isNull(event.player)) return;
    var player as IPlayer = event.player;
    if(!event.world.remote) {

        if (event.drops.length == 0 || event.silkTouch || player.isFake()||!event.isPlayer) {
            return; 
        }
        val block as IBlock = event.block;
        if ((!isNull(block.definition.id)) && (block.definition.id == "minecraft:iron_ore")){
            if(!isNull(player.currentItem)){
                if(player.currentItem.getHarvestLevel("pickaxe") < 3){
                event.drops = [<item:survivalist:rock_ore>];
                player.sendChat("a");
                }
            }  
            
            
        }
        else if ((!isNull(block.definition.id)) && (block.definition.id == "minecraft:gold_ore")){
            if(!isNull(player.currentItem)){
                if(player.currentItem.getHarvestLevel("pickaxe") < 3){
                event.drops = [<item:survivalist:rock_ore:1>];
                }
            }  
            
            
        }
        

    }
}//用3级以下的镐子挖金，铁矿石掉落一个碎块



events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
    

    
    noCutDownTreesByHand(event);    //不能空手撸树
    noCobbleStone(event);           //用3级以下的镐子挖石头掉落一个石子
    noOreBlock(event);              //用3级以下的镐子挖金，铁矿石掉落一个碎块


});


