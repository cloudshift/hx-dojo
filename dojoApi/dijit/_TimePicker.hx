package dijit;

extern class _TimePicker extends dijit._Widget {
public function constructor():Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function serialize(val:Date,?options:Dynamic):Void;
public function setValue(value:Date):Void;
public function _setValueAttr(date:Date):Void;
public function onOpen(best:Dynamic):Void;
public function isDisabledDate(dateObject:Date,?locale:String):Bool;
public function onValueSelected(time:Date):Void;
public function handleKey(e:Dynamic):Dynamic;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var clickableIncrement:String;
public var visibleIncrement:String;
public var visibleRange:String;
public var value:String;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
