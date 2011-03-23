package dojox.widget;

extern class SortList {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function onSort(e:Dynamic):Void;
public function setTitle(title:String):Void;
public function onChanged():Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var heading:String;
public var descending:Bool;
public var sortable:Bool;
public var store:Dynamic;
public var key:String;

}
