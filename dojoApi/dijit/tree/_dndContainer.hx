
package dijit.tree;

extern class _dndContainer {
public function getItem(key:String):Dynamic;
public function destroy():Void;
public function onMouseOver(widget:Dynamic,evt:Dynamic):Void;
public function onMouseOut(widget:Dynamic,evt:Dynamic):Void;
public function onOverEvent():Void;
public function onOutEvent():Void;
public var current:Dynamic;
public var node:Dynamic;
public var parent:Dynamic;
public var currentWidget:Dynamic;
public var tree:Dynamic;
public var map:Dynamic;
public var containerState:String;
public var events:Array<Dynamic>;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
