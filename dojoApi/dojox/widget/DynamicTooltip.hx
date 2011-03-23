package dojox.widget;

extern class DynamicTooltip extends dijit.Tooltip {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function loadContent():Void;
public function refresh():Void;
public var hasLoaded:Bool;
public var href:String;
public var preventCache:Bool;

}
