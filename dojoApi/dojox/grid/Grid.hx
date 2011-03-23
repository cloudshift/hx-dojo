package dojox.grid ;

typedef Grid = {
function nop():Void;
function getTdIndex(td:Dynamic):Void;
function getTrIndex(tr:Dynamic):Void;
function getTr(rowOwner:Dynamic,index:Dynamic):Void;
function getTd(rowOwner:Dynamic,rowIndex:Dynamic,cellIndex:Dynamic):Void;
function findTable(node:Dynamic):Void;
function ascendDom(inNode:Dynamic,inWhile:Dynamic):Void;
function makeNotTagName(inTagName:Dynamic):Void;
function fire(ob:Dynamic,ev:Dynamic,args:Dynamic):Void;
function setStyleText(inNode:Dynamic,inStyleText:Dynamic):Void;
function getStyleText(inNode:Dynamic,inStyleText:Dynamic):Void;
function setStyle(inElement:Dynamic,inStyle:Dynamic,inValue:Dynamic):Void;
function setStyleHeightPx(inElement:Dynamic,inHeight:Dynamic):Void;
function funnelEvents(inNode:Dynamic,inObject:Dynamic,inMethod:Dynamic,inEvents:Dynamic):Void;
function removeNode(inNode:Dynamic):Void;
function getScrollbarWidth():Void;
function getRef(name:Dynamic,create:Dynamic,context:Dynamic):Void;
function getProp(name:Dynamic,create:Dynamic,context:Dynamic):Void;
function indexInParent(inNode:Dynamic):Void;
function cleanNode(inNode:Dynamic):Void;
function getTagName(inNodeOrId:Dynamic):Void;
function nodeKids(inNode:Dynamic,inTag:Dynamic):Void;
function divkids(inNode:Dynamic):Void;
function focusSelectNode(inNode:Dynamic):Void;
function whenIdle():Void;
function arrayCompare(inA:Dynamic,inB:Dynamic):Void;
function arrayInsert(inArray:Dynamic,inIndex:Dynamic,inValue:Dynamic):Void;
function arrayRemove(inArray:Dynamic,inIndex:Dynamic):Void;
function arraySwap(inArray:Dynamic,inI:Dynamic,inJ:Dynamic):Void;
function initTextSizePoll(inInterval:Dynamic):Void;
function textSizeChanged():Void;
var Grid:Dynamic;
var VirtualGrid:Dynamic;
var rowIndexTag:String;
var gridViewTag:String;
var drag:Dynamic;
var na:String;
var mouseEvents:Array<Dynamic>;
var keyEvents:Array<Dynamic>;

}
