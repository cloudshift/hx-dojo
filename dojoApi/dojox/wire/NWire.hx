package dojox.wire ;

typedef NWire = {
function register(wireClass:Dynamic,key:String):Dynamic;
function create(args:Dynamic):Dynamic;
function isWire(wire:Dynamic):Bool;
function transfer(source:Dynamic,target:Dynamic,?defaultObject:Dynamic,?defaultTargetObject:Dynamic):Dynamic;
function connect(trigger:Dynamic,source:Dynamic,target:Dynamic):Dynamic;
function disconnect(connection:Dynamic):Dynamic;

}
