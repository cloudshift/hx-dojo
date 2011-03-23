package dijit.layout;

extern class _LayoutWidget extends dijit._Widget {
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function getParent():Void;
public function getPreviousSibling():Dynamic;
public function getNextSibling():Dynamic;
public function getIndexInParent():Int;
public function resize(?changeSize:Dynamic,?resultSize:Dynamic):Void;
public function layout():Void;
public function _setupChild(child:Dynamic):Void;
public var isContainer:Bool;
public var isLayoutContainer:Bool;
public var getParent:Dynamic;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
