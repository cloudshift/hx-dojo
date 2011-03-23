package dojox.widget;

extern class Rotator {
public function new(params:Dynamic,node:Dynamic):Void;
public function destroy():Void;
public function next():Void;
public function prev():Void;
public function go(?p:Dynamic):Void;
public function onUpdate(type:String,?params:Dynamic):Void;
public function control(action:String):Void;
public function resize(width:Int,height:Int):Void;
public function onManualChange():Void;
public var transition:String;
public var transitionParams:String;
public var panes:Array<Dynamic>;
public var wfe:Dynamic;

}
