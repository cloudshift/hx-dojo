typedef Dojo = {
function DeferredList(list:Array<Dynamic>,?fireOnOneCallback:Bool,?fireOnOneErrback:Bool,?consumeErrors:Bool,?canceller:Dynamic):Void;
function query(query:String,?root:Dynamic,?listCtor:Dynamic):dojo.NodeList;
function cache(module:Dynamic,url:String,?value:Dynamic):String;
function cookie(name:String,?value:String,?props:Dynamic):Dynamic;
function flash():Void;
function attr(node:Dynamic,name:Dynamic,?value:String):Dynamic;
function hasAttr(node:Dynamic,name:String):Bool;
function style(node:Dynamic,?style:Dynamic,?value:String):Void;
function blendColors(start:Dynamic,end:Dynamic,weight:Float,?obj:Dynamic):Dynamic;
function colorFromRgb(color:String,?obj:Dynamic):Dynamic;
function colorFromHex(color:String,?obj:Dynamic):Dynamic;
function colorFromArray(a:Array<Dynamic>,?obj:Dynamic):Dynamic;
function colorFromString(str:String,?obj:Dynamic):Void;
function when(promiseOrValue:Dynamic,?callBack:Dynamic,?errback:Dynamic,?progressHandler:Dynamic):Void;
function mixin(obj:Dynamic,props:Dynamic):Dynamic;
function setObject(name:String,value:Dynamic,?context:Dynamic):Dynamic;
function getObject(name:String,?create:Bool,?context:Dynamic):Dynamic;
function exists(name:String,?obj:Dynamic):Bool;
function eval(scriptFragment:String):Dynamic;
function deprecated(behaviour:String,?extra:String,?removal:String):Void;
function experimental(moduleName:String,?extra:String):Void;
function windowUnloaded():Void;
function addOnWindowUnload(?obj:Dynamic,?functionName:Dynamic):Void;
function pushContext(?g:Dynamic,?d:Dynamic):Array<Dynamic>;
function popContext():Void;
function byId(id:Dynamic,doc:Dynamic):Dynamic;
function exit(exitcode:Dynamic):Void;
function body():Dynamic;
function loaded():Void;
function unloaded():Void;
function ready():Void;
function addOnLoad(obj:Dynamic,?functionName:Dynamic):Void;
function loadInit(init:Dynamic):Void;
function require(moduleName:String,?omitModuleCheck:Bool):Void;
function provide(resourceName:String):Dynamic;
function platformRequire(modMap:Dynamic):Void;
function requireIf(condition:Bool,resourceName:String):Void;
function registerModulePath(module:String,prefix:String):Void;
function requireLocalization(moduleName:String,bundleName:String,?locale:String,?availableFlatLocales:String):Void;
function moduleUrl(module:String,url:Dynamic):Dynamic;
function xdRequireLocalization(m:Dynamic,b:Dynamic,?locale:String,fLocales:Dynamic,moduleName:String,bundleName:String,availableFlatLocales:String):Void;
function indexOf(array:Array<Dynamic>,value:Dynamic,?fromIndex:Int,?findLast:Bool):Float;
function lastIndexOf(array:Array<Dynamic>,value:Dynamic,?fromIndex:Int):Float;
function forEach(arr:Dynamic,callBack:Dynamic,?thisObject:Dynamic):Void;
function every(arr:Dynamic,callBack:Dynamic,?thisObject:Dynamic):Bool;
function some(arr:Dynamic,callBack:Dynamic,?thisObject:Dynamic):Bool;
function map(arr:Dynamic,callBack:Dynamic,?thisObject:Dynamic):Array<Dynamic>;
function filter(arr:Array<Dynamic>,callBack:Dynamic,?thisObject:Dynamic):Array<Dynamic>;
function connect(obj:Dynamic,event:String,context:Dynamic,method:Dynamic,?dontFix:Bool):Void;
function disconnect(handle:Dynamic):Void;
function connectPublisher(topic:String,obj:Dynamic,event:String):Dynamic;
function declare(?className:String,superclass:Dynamic,props:Dynamic):Dynamic;
function safeMixin(target:Dynamic,source:Dynamic):Void;
function fixEvent(evt:Dynamic,sender:Dynamic):Void;
function stopEvent(evt:Dynamic):Void;
function isCopyKey(e:Dynamic):Bool;
function fadeIn(args:Dynamic):Dynamic;
function fadeOut(args:Dynamic):Dynamic;
function animateProperty(args:Dynamic):Dynamic;
function anim(node:Dynamic,properties:Dynamic,?duration:Int,?easing:Dynamic,?onEnd:Dynamic,?delay:Int):Dynamic;
function destroy(node:Dynamic):Void;
function isDescendant(node:Dynamic,ancestor:Dynamic):Bool;
function setSelectable(node:Dynamic,selectable:Bool):Void;
function place(node:Dynamic,refNode:Dynamic,?position:Dynamic):Dynamic;
function getComputedStyle(node:Dynamic):Dynamic;
function marginBox(node:Dynamic,?box:Dynamic):Dynamic;
function contentBox(node:Dynamic,?box:Dynamic):Dynamic;
function position(node:Dynamic,?includeScroll:Bool):Dynamic;
function coords(node:Dynamic,?includeScroll:Bool):Void;
function removeAttr(node:Dynamic,name:String):Void;
function getNodeProp(node:Dynamic,name:String):Dynamic;
function create(tag:Dynamic,attrs:Dynamic,?refNode:Dynamic,?pos:String):Dynamic;
function empty(node:Dynamic):Void;
function hasClass(node:Dynamic,classStr:String):Bool;
function addClass(node:Dynamic,classStr:Dynamic):Void;
function removeClass(node:Dynamic,?classStr:Dynamic):Void;
function toggleClass(node:Dynamic,classStr:Dynamic,?condition:Bool):Void;
function fromJson(json:String):Dynamic;
function toJson(it:Dynamic,?prettyPrint:Bool,?_indentStr:String):Dynamic;
function isString(it:Dynamic):Bool;
function isArray(it:Dynamic):Bool;
function isFunction(it:Dynamic):Void;
function isObject(it:Dynamic):Void;
function isArrayLike(it:Dynamic):Bool;
function isAlien(it:Dynamic):Bool;
function extend(constructor:Dynamic,props:Dynamic):Dynamic;
function hitch(scope:Dynamic,method:Dynamic):Dynamic;
function delegate(obj:Dynamic,props:Dynamic):Void;
function partial(method:Dynamic):Dynamic;
function clone(o:Dynamic):Dynamic;
function trim(str:String):String;
function replace(tmpl:String,map:Dynamic,?pattern:Dynamic):String;
function setContext(globalObject:Dynamic,globalDocument:Dynamic):Void;
function withGlobal(globalObject:Dynamic,callBack:Dynamic,?thisObject:Dynamic,?cbArguments:Array<Dynamic>):Void;
function withDoc(documentObject:Dynamic,callBack:Dynamic,?thisObject:Dynamic,?cbArguments:Array<Dynamic>):Void;
function fieldToObject(inputNode:Dynamic):Dynamic;
function formToObject(formNode:Dynamic):Dynamic;
function objectToQuery(map:Dynamic):String;
function formToQuery(formNode:Dynamic):String;
function formToJson(formNode:Dynamic,?prettyPrint:Bool):String;
function queryToObject(str:String):Dynamic;
function xhr(method:String,args:Dynamic,?hasBody:Bool):Dynamic;
function xhrGet(args:Dynamic):Dynamic;
function rawXhrPost():Void;
function xhrPost(args:Dynamic):Dynamic;
function rawXhrPut():Void;
function xhrPut(args:Dynamic):Dynamic;
function xhrDelete(args:Dynamic):Dynamic;
function hash(?hash:String,?replace:Bool):String;
// var NodeList-fx:Dynamic;
// var NodeList-html:Dynamic;
// var NodeList-manipulate:Dynamic;
// var NodeList-traverse:Dynamic;
var locale:Dynamic;
var isBrowser:Bool;
var isFF:Float;
var isIE:Float;
var isSafari:Float;
var isKhtml:Float;
var isWebKit:Float;
var isMozilla:Float;
var isOpera:Float;
var isChrome:Float;
var baseUrl:String;
var isMoz:Dynamic;
var isQuirks:Bool;
var isRhino:Dynamic;
var isSpidermonkey:Dynamic;
var requireAfterIf:Dynamic;
var nonDebugProvide:Dynamic;
var subscribe:Dynamic;
var unsubscribe:Dynamic;
var publish:Dynamic;
var boxModel:String;
var toJsonIndentStr:String;
var jaxer:Dynamic;
var robot:Dynamic;
var robotx:Dynamic;
var tests:Dynamic;
var uacss:Dynamic;

}
