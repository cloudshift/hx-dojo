package dojox.fx;

extern class Shadow extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setOpacity(n:Float,?animArgs:Dynamic):Void;
public function setDisabled(disabled:Bool):Void;
public function resize(args:Dynamic):Void;
public var shadowPng:String;
public var shadowThickness:Int;
public var shadowOffset:Int;
public var opacity:Float;
public var animate:Bool;
public var node:Dynamic;
public var pieces:Dynamic;
public var nodeList:Dynamic;
public var disabled:Bool;

}
