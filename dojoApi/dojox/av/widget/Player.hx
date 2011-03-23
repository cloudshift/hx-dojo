package dojox.av.widget;

extern class Player extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function onResize(evt:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var playerWidth:Float;
public var items:Array<Dynamic>;
public var children:Array<Dynamic>;
public var media:Dynamic;

}
