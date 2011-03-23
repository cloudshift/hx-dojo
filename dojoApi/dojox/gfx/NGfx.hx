package dojox.gfx ;

typedef NGfx = {
function normalizedLength(len:String):Float;
function getVectorFont(url:String):Void;
function normalizeColor(color:Dynamic):Dynamic;
function normalizeParameters(existed:Dynamic,update:Dynamic):Dynamic;
function makeParameters(defaults:Dynamic,update:Dynamic):Dynamic;
function formatNumber(x:Float,?addSpace:Bool):String;
function makeFontString(font:Dynamic):Dynamic;
function splitFontString(str:String):Dynamic;
function px_in_pt():Float;
function pt2px(len:Float):Float;
function px2pt(len:Float):Float;
function equalSources(a:Dynamic,b:Dynamic):Void;
function createSurface(parentNode:Dynamic,width:String,height:String):Dynamic;
function attachNode(node:Dynamic):Dynamic;
function decompose(matrix:Dynamic):Dynamic;
function attachSurface(node:Dynamic):Dynamic;
var VectorText:Dynamic;
var getDefault:Dynamic;
var cm_in_pt:Float;
var mm_in_pt:Float;
var pathVmlRegExp:Dynamic;
var pathSvgRegExp:Dynamic;
var canvas:Dynamic;
var Matrix2D:Dynamic;
var move:Dynamic;
var renderer:String;

}
