package dojox.widget.gauge;

extern class _Indicator extends dijit._Widget {
public function getParent():Void;
public function getPreviousSibling():Dynamic;
public function getNextSibling():Dynamic;
public function getIndexInParent():Int;
public function new():Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function onDragMove():Void;
public function update(value:Dynamic):Void;
public function draw(?dontAnimate:Bool):Void;
public function remove():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var value:Float;
public var type:String;
public var color:String;
public var length:Float;
public var width:Float;
public var offset:Float;
public var hover:String;
public var front:Bool;
public var easing:Dynamic;
public var duration:Float;
public var hideValue:Bool;
public var noChange:Bool;

}
