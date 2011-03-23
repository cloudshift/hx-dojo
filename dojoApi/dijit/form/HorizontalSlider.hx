package dijit.form;

extern class HorizontalSlider extends dijit.form._FormValueWidget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function _isReversed():Void;
public var isContainer:Bool;
public var showButtons:Bool;
public var minimum:Int;
public var maximum:Int;
public var discreteValues:Int;
public var pageIncrement:Int;
public var clickSelect:Bool;
public var slideDuration:Float;

}
