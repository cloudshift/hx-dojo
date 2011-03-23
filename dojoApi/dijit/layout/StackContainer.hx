package dijit.layout;

extern class StackContainer {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function selectChild(page:Dynamic,animate:Bool):Void;
public function _transition(newWidget:Dynamic,oldWidget:Dynamic):Void;
public function forward():Void;
public function back():Void;
public var doLayout:Bool;
public var persist:Bool;
public var selectedChildWidget:Dynamic;

}
