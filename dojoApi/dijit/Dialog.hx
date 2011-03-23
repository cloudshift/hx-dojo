package dijit;

extern class Dialog extends dijit.layout.ContentPane {
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

}
