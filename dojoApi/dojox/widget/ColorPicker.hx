package dojox.widget;

extern class ColorPicker extends dijit.form._FormWidget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setColor(color:String,force:Dynamic):Void;
public var showRgb:Bool;
public var showHsv:Bool;
public var showHex:Bool;
public var webSafe:Bool;
public var animatePoint:Bool;
public var slideDuration:Int;
public var liveUpdate:Bool;
public var PICKER_HUE_H:Int;
public var PICKER_SAT_VAL_H:Int;
public var PICKER_SAT_VAL_W:Int;
public var PICKER_HUE_SELECTOR_H:Int;
public var PICKER_SAT_SELECTOR_H:Int;
public var PICKER_SAT_SELECTOR_W:Int;

}
