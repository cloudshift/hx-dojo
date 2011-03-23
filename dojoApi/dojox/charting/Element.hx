package dojox.charting;

extern class Element {
public function new(chart:Dynamic):Void;
public function createGroup(?creator:Dynamic):Dynamic;
public function purgeGroup():Dynamic;
public function cleanGroup(?creator:Dynamic):Dynamic;
public function destroyHtmlElements():Void;
public function destroy():Void;
public var group:Dynamic;
public var htmlElements:Array<Dynamic>;
public var dirty:Bool;

}
