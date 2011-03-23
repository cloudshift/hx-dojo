package dojox.widget;

extern class Portlet extends dijit.TitlePane {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function onSizeChange(widget:Dynamic):Void;
public function onUpdateSize():Void;
public var resizeChildren:Bool;
public var closeIcon:Dynamic;

}
