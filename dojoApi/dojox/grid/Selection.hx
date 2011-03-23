package dojox.grid;

extern class Selection {
public function new(inGrid:Dynamic):Void;
public function setMode(mode:Dynamic):Void;
public function onCanSelect(inIndex:Dynamic):Void;
public function onCanDeselect(inIndex:Dynamic):Void;
public function onSelected(inIndex:Dynamic):Void;
public function onDeselected(inIndex:Dynamic):Void;
public function onChanging():Void;
public function onChanged():Void;
public function isSelected(inIndex:Dynamic):Void;
public function getFirstSelected():Void;
public function getNextSelected(inPrev:Dynamic):Void;
public function getSelected():Void;
public function getSelectedCount():Void;
public function select(inIndex:Dynamic):Void;
public function addToSelection(inIndex:Dynamic):Void;
public function deselect(inIndex:Dynamic):Void;
public function setSelected(inIndex:Dynamic,inSelect:Dynamic):Void;
public function toggleSelect(inIndex:Dynamic):Void;
public function selectRange(inFrom:Dynamic,inTo:Dynamic):Void;
public function deselectRange(inFrom:Dynamic,inTo:Dynamic):Void;
public function insert(inIndex:Dynamic):Void;
public function remove(inIndex:Dynamic):Void;
public function deselectAll(inExcept:Dynamic):Void;
public function clickSelect(inIndex:Dynamic,inCtrlKey:Dynamic,inShiftKey:Dynamic):Void;
public function clickSelectEvent(e:Dynamic):Void;
public function clear():Void;
public var mode:String;
public var updating:Float;
public var selectedIndex:Float;
public var grid:Dynamic;

}
