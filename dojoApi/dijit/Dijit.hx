package dijit ;

typedef Dijit = {
function showTooltip(innerHTML:String,aroundNode:Dynamic,?position:Array<String>):Void;
function hideTooltip(aroundNode:Dynamic):Void;
function isCollapsed():Bool;
function getBookmark():Array<Dynamic>;
function moveToBookmark(bookmark:Dynamic):Void;
function getFocus(?menu:Dynamic,?openedForWindow:Dynamic):Void;
function focus(handle:Dynamic):Void;
function registerIframe(iframe:Dynamic):Void;
function registerWin(?targetWindow:Dynamic,?effectiveNode:Dynamic):Void;
function getUniqueId(widgetType:String):String;
function findWidgets(root:Dynamic):Void;
function byId(id:Dynamic):Dynamic;
function byNode(node:Dynamic):Dynamic;
function getEnclosingWidget(node:Dynamic):Void;
function isTabNavigable(elem:Dynamic):Bool;
function getFirstInTabbingOrder(root:Dynamic):Dynamic;
function getLastInTabbingOrder(root:Dynamic):Dynamic;
function getViewport():Void;
function placeOnScreen(node:Dynamic,pos:Dynamic,corners:Array<String>,?padding:Dynamic):Void;
function placeOnScreenAroundNode(node:Dynamic,aroundNode:Dynamic,aroundCorners:Dynamic,?layoutNode:Dynamic):Void;
function placeOnScreenAroundRectangle(node:Dynamic,aroundRect:Dynamic,aroundCorners:Dynamic,layoutNode:Dynamic):Void;
function placeOnScreenAroundElement(node:Dynamic,aroundElement:Dynamic,aroundCorners:Dynamic,layoutNode:Dynamic):Void;
function scrollIntoView(node:Dynamic):Dynamic;
function hasWaiRole(elem:Dynamic,role:String):Void;
function getWaiRole(elem:Dynamic):Void;
function setWaiRole(elem:Dynamic,role:String):Void;
function removeWaiRole(elem:Dynamic,role:String):Void;
function hasWaiState(elem:Dynamic,state:String):Dynamic;
function getWaiState(elem:Dynamic,state:String):Dynamic;
function setWaiState(elem:Dynamic,state:String,value:String):Void;
function removeWaiState(elem:Dynamic,state:String):Void;
function getDocumentWindow(doc:Dynamic):Dynamic;
function selectInputText(element:Dynamic,?start:Float,?stop:Float):Void;
var defaultDuration:Float;
var registry:Dynamic;
var placementRegistry:Dynamic;
// var dijit-all:Dynamic;
var dijit:Dynamic;
var demos:Dynamic;
var robot:Dynamic;
var robotx:Dynamic;

}
