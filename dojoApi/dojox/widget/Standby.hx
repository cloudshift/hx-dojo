package dojox.widget;

extern class Standby extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function show():Void;
public function hide():Void;
public function isVisible():Bool;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var image:String;
public var imageText:String;
public var text:String;
public var centerIndicator:String;
public var color:String;
public var duration:Int;
public var zIndex:String;

}
