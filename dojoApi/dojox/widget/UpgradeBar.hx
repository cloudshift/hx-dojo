package dojox.widget;

extern class UpgradeBar extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function notify(msg:Dynamic):Void;
public function hide():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var notifications:Array<Dynamic>;
public var buttonCancel:String;
public var noRemindButton:String;

}
