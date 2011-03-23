package dojox.mdnd;

extern class LazyManager {
public function new():Void;
public function getItem(draggedNode:Dynamic):Void;
public function startDrag(e:Dynamic,?draggedNode:Dynamic):Void;
public function cancelDrag():Void;
public function destroy():Void;

}
