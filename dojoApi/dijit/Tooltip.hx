package dijit;

extern class Tooltip extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addTarget(id:Dynamic):Dynamic;
public function removeTarget(node:Dynamic):Void;
public var showDelay:Int;
public var connectId:Array<String>;
public var position:Array<String>;
public var defaultPosition:Array<Dynamic>;

}
