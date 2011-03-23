package dojox.rpc ;

typedef Rpc = {
function getTarget(smd:Dynamic,method:Dynamic):Void;
function toOrdered(method:Dynamic,args:Dynamic):Void;
var JsonRPC:Dynamic;
var ProxiedPath:Dynamic;
var transportRegistry:Dynamic;
var envelopeRegistry:Dynamic;

}
