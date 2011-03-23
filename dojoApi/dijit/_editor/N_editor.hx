package dijit._editor ;

typedef N_editor = {
function escapeXml(str:String,?noSingleQuotes:Bool):String;
function getNodeHtml(node:Dynamic):Void;
function getChildrenHtml(dom:Dynamic):String;
var html:Dynamic;
var range:Dynamic;

}
