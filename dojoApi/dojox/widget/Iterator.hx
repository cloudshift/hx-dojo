package dojox.widget;

extern class Iterator extends dijit.Declaration {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function clear():Void;
public function update():Void;
public function getAttrValuesObj(item:Dynamic):Void;
public function onDataAvailable(data:Dynamic):Void;
public function fetch(query:Dynamic,start:Dynamic,end:Dynamic):Void;
public var constructor:Dynamic;
public var start:Float;
public var fetchMax:Float;
public var attrs:Dynamic;
public var defaultValue:String;
public var widgetCtor:Dynamic;
public var dataValues:Array<Dynamic>;
public var data:Dynamic;
public var store:Dynamic;
public var children:Array<Dynamic>;

}
