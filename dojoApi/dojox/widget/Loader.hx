package dojox.widget;

extern class Loader extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var loadIcon:String;
public var loadMessage:String;
public var hasVisuals:Bool;
public var attachToPointer:Dynamic;
public var duration:Int;

}
