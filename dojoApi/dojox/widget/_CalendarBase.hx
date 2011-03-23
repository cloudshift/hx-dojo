package dojox.widget;

extern class _CalendarBase extends dijit._Widget {
public function new():Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function addFx(query:Dynamic,fromNode:Dynamic):Void;
public function isDisabledDate(date:Date,?locale:String):Void;
public function onValueSelected(date:Date):Void;
public function onChange(date:Date):Void;
public function onHeaderClick(e:Dynamic):Void;
public function goToToday():Void;
public function getClassForDate(dateObject:Date,?locale:String):String;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var isContainer:Bool;
public var useFx:Bool;
public var value:Date;
public var footerFormat:String;
public var displayMonth:Dynamic;

}
