package dojo.dnd;

extern class Selector extends dojo.dnd.Container {
public function new(node:Dynamic,?params:Dynamic):Void;
public function getSelectedNodes():dojo.NodeList;
public function selectNone():Dynamic;
public function selectAll():Dynamic;
public function deleteSelectedNodes():Dynamic;
public function forInSelectedItems(f:Dynamic,?o:Dynamic):Void;
public function onMouseDown(e:Dynamic):Void;
public function onMouseUp(e:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public var selection:Dynamic;
public var singular:Bool;
public var anchor:Dynamic;
public var simpleSelection:Bool;
public var onmousemoveEvent:Dynamic;
public var autoSync:Dynamic;

}
