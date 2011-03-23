package dojox.charting.axis2d;

extern class Base extends dojox.charting.Element {
public function new(chart:Dynamic,?kwArgs:Dynamic):Void;
public function clear():Dynamic;
public function initialized():Bool;
public function calculate(min:Dynamic,max:Dynamic,span:Dynamic):Dynamic;
public function getScaler():Dynamic;
public function getTicks():Dynamic;
public function getOffsets():Dynamic;
public function render(dim:Dynamic,offsets:Dynamic):Dynamic;
public var vertical:Dynamic;

}
