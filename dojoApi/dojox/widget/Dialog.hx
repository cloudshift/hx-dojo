package dojox.widget;

extern class Dialog extends dojox.layout.ContentPane {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function show():Void;
public function hide():Void;
public var templateString:Dynamic;
public var open:Bool;
public var duration:Int;
public var refocus:Bool;
public var autofocus:Bool;
public var draggable:Bool;
// public var aria-describedby:String;
public var underlayAttrs:Dynamic;
public var sizeToViewport:Bool;
public var viewportPadding:Int;
public var dimensions:Array<Dynamic>;
public var easing:Dynamic;
public var sizeDuration:Int;
public var sizeMethod:String;
public var modal:Bool;

}
