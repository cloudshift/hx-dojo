package dojox.widget;

extern class Wizard extends dijit.layout.StackContainer {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function done():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var nextButtonLabel:String;
public var previousButtonLabel:String;
public var cancelButtonLabel:String;
public var doneButtonLabel:String;
public var cancelFunction:Dynamic;
public var hideDisabled:Bool;

}
