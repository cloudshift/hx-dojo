package dijit;

extern class Calendar extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function setValue(value:Date):Void;
public function _setValueAttr(value:Date):Void;
public function goToToday():Void;
public function _onMonthToggle(evt:Dynamic):Void;
public function _onMonthSelect(evt:Dynamic):Void;
public function _onDayClick(evt:Dynamic):Void;
public function _onDayMouseOver(evt:Dynamic):Void;
public function _onDayMouseOut(evt:Dynamic):Void;
public function _onKeyPress(evt:Dynamic):Void;
public function onValueSelected(date:Date):Void;
public function onChange(date:Date):Void;
public function _isSelectedDate(dateObject:Date,?locale:String):Void;
public function isDisabledDate(dateObject:Date,?locale:String):Bool;
public function getClassForDate(dateObject:Date,?locale:String):String;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var cssStateNodes:Dynamic;
public var value:Date;
public var datePackage:String;
public var dayWidth:String;
public var tabIndex:Int;
public var attributeMap:Dynamic;
public var displayMonth:Dynamic;
public var dateClassObj:Dynamic;
public var dateFuncObj:Dynamic;
public var dateLocaleModule:Dynamic;

}
