package dojox.charting.widget;

extern class Legend extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function refresh():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var chartRef:String;
public var horizontal:Dynamic;
public var swatchSize:Float;
public var legendNode:Dynamic;
public var legendBody:Dynamic;
public var chart:Dynamic;
public var series:Dynamic;

}
