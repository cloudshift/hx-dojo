package dijit.tree;

extern class _dndSelector extends dijit.tree._dndContainer {
public function getSelectedNodes():Void;
public function onMouseDown(e:Dynamic):Dynamic;
public function onMouseUp(e:Dynamic):Void;
public function onMouseMove(e:Dynamic):Void;
public function forInSelectedItems(f:Dynamic,?o:Dynamic):Void;
public var selection:Dynamic;
public var singular:Bool;
public var anchor:Dynamic;
public var simpleSelection:Bool;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
