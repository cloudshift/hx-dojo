package dijit ;

typedef NDijit = {
function showTooltip(innerHTML:String,aroundNode:Dynamic,?position:Array<String>,rtl:Bool):Void;
function hideTooltip(aroundNode:Dynamic):Void;
function isCollapsed():Void;
function getBookmark():Dynamic;
function moveToBookmark(bookmark:Dynamic):Void;
function getFocus(?menu:Dynamic,?openedForWindow:Dynamic):Void;
function focus(handle:Dynamic):Void;
function registerIframe(iframe:Dynamic):Void;
function unregisterIframe(handle:Dynamic):Void;
function registerWin(?targetWindow:Dynamic,?effectiveNode:Dynamic):Void;
function unregisterWin(handle:Dynamic):Void;
function byId(id:Dynamic):Dynamic;
function getUniqueId(widgetType:String):String;
function findWidgets(root:Dynamic):Void;
function byNode(node:Dynamic):Dynamic;
function getEnclosingWidget(node:Dynamic):Void;
function hasDefaultTabStop(elem:Dynamic):Void;
function isTabNavigable(elem:Dynamic):Bool;
function getFirstInTabbingOrder(root:Dynamic):Dynamic;
function getLastInTabbingOrder(root:Dynamic):Dynamic;
function getViewport():Void;
function placeOnScreen(node:Dynamic,pos:Dynamic,corners:Array<String>,?padding:Dynamic):Void;
function placeOnScreenAroundNode(node:Dynamic,aroundNode:Dynamic,aroundCorners:Dynamic,?layoutNode:Dynamic):Void;
function placeOnScreenAroundRectangle(node:Dynamic,aroundRect:Dynamic,aroundCorners:Dynamic,layoutNode:Dynamic):Void;
function placeOnScreenAroundElement(node:Dynamic,aroundElement:Dynamic,aroundCorners:Dynamic,layoutNode:Dynamic):Void;
function getPopupAroundAlignment(position:Array<Dynamic>,leftToRight:Bool):Void;
function scrollIntoView(node:Dynamic,?pos:Dynamic):Void;
function hasWaiRole(elem:Dynamic,role:String):Void;
function getWaiRole(elem:Dynamic):Void;
function setWaiRole(elem:Dynamic,role:String):Void;
function removeWaiRole(elem:Dynamic,role:String):Void;
function hasWaiState(elem:Dynamic,state:String):Void;
function getWaiState(elem:Dynamic,state:String):Void;
function setWaiState(elem:Dynamic,state:String,value:String):Void;
function removeWaiState(elem:Dynamic,state:String):Void;
function getDocumentWindow(doc:Dynamic):Void;
function selectInputText(element:Dynamic,?start:Float,?stop:Float):Void;
var defaultDuration:Int;
var placementRegistry:Dynamic;
// var dijit-all:Dynamic;
var dijit:Dynamic;
var demos:Dynamic;
var robot:Dynamic;
var robotx:Dynamic;

}
