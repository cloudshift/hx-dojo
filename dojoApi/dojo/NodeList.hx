package dojo;

typedef NodeList = {
public function wipeIn(?args:Dynamic):Dynamic;
public function wipeOut(?args:Dynamic):Dynamic;
public function slideTo(?args:Dynamic):Dynamic;
public function fadeIn(?args:Dynamic):Dynamic;
public function fadeOut(?args:Dynamic):Dynamic;
public function animateProperty(args:Dynamic):Dynamic;
public function anim(properties:Dynamic,?duration:Int,?easing:Dynamic,?onEnd:Dynamic,?delay:Int):Dynamic;
public function html(content:Dynamic,?params:Dynamic):dojo.NodeList;
public function innerHTML(?value:Dynamic):dojo.NodeList;
public function text(value:String):dojo.NodeList;
public function append(content:Dynamic):dojo.NodeList;
public function appendTo(query:String):dojo.NodeList;
public function prepend(content:Dynamic):dojo.NodeList;
public function prependTo(query:String):dojo.NodeList;
public function after(content:Dynamic):dojo.NodeList;
public function insertAfter(query:String):dojo.NodeList;
public function before(content:Dynamic):dojo.NodeList;
public function insertBefore(query:String):dojo.NodeList;
public function remove(simpleFilter:String):dojo.NodeList;
public function wrap(html:Dynamic):dojo.NodeList;
public function wrapAll(html:Dynamic):dojo.NodeList;
public function wrapInner(html:Dynamic):dojo.NodeList;
public function replaceWith(content:Dynamic):dojo.NodeList;
public function replaceAll(query:String):dojo.NodeList;
public function clone():dojo.NodeList;
public function children(?query:String):Void;
public function closest(query:String):Dynamic;
public function parent(?query:String):Void;
public function parents(?query:String):Void;
public function siblings(?query:String):Void;
public function next(?query:String):Void;
public function nextAll(?query:String):Void;
public function prev(?query:String):Void;
public function prevAll(?query:String):Void;
public function andSelf():Void;
public function first():dojo.NodeList;
public function last():dojo.NodeList;
public function even():Void;
public function odd():Void;
public function end():Void;
public function slice(begin:Int,?end:Int):Void;
public function splice(index:Int,?howmany:Int,?item:Dynamic):Void;
public function indexOf(value:Dynamic,?fromIndex:Int):Int;
public function lastIndexOf(value:Dynamic,?fromIndex:Int):Int;
public function every(callBack:Dynamic,?thisObject:Dynamic):Bool;
public function some(callBack:Dynamic,?thisObject:Dynamic):Bool;
public function concat(?item:Dynamic):dojo.NodeList;
public function map(func:Dynamic,?obj:Dynamic):dojo.NodeList;
public function forEach(callBack:Dynamic,thisObj:Dynamic):dojo.NodeList;
public function coords():Array<Dynamic>;
public function position():Array<Dynamic>;
public function addClass(className:Dynamic):dojo.NodeList;
public function removeClass(?className:Dynamic):dojo.NodeList;
public function toggleClass(className:String,?condition:Bool):dojo.NodeList;
public function connect(methodName:String,objOrFunc:Dynamic,?funcName:String):Void;
public function empty():dojo.NodeList;
public function place(queryOrNode:Dynamic,position:String):dojo.NodeList;
public function orphan(?simpleFilter:String):dojo.NodeList;
public function adopt(queryOrListOrNode:Dynamic,?position:String):dojo.NodeList;
public function query(queryStr:String):dojo.NodeList;
public function filter(simpleFilter:Dynamic):dojo.NodeList;
public function instantiate(declaredClass:Dynamic,?properties:Dynamic):Void;
public function at(index:Int):dojo.NodeList;
public function dtl(template:Dynamic,context:Dynamic):Void;
public function addClassFx(cssClass:Dynamic,args:Dynamic):Dynamic;
public function removeClassFx(cssClass:Dynamic,args:Dynamic):Dynamic;
public function toggleClassFx(cssClass:Dynamic,force:Dynamic,args:Dynamic):Dynamic;
public function sizeTo(args:Dynamic):Dynamic;
public function slideBy(args:Dynamic):Dynamic;
public function highlight(args:Dynamic):Dynamic;
public function fadeTo(args:Dynamic):Void;
public function wipeTo(args:Dynamic):Void;
public var events:Array<Dynamic>;

}