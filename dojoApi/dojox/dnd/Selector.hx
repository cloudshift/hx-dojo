package dojox.dnd;

extern class Selector extends dojo.dnd.Selector {
public function isSelected(node:Dynamic):Bool;
public function selectNode(node:Dynamic,?add:Bool):Dynamic;
public function deselectNode(node:Dynamic):Dynamic;
public function selectByBBox(left:Float,top:Float,right:Float,bottom:Float,?add:Bool):Dynamic;
public function shift(toNext:Bool,?add:Bool):Void;

}
