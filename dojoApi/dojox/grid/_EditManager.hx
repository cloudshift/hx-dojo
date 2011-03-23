package dojox.grid;

extern class _EditManager {
public function new(inGrid:Dynamic):Void;
public function destroy():Void;
public function cellFocus(inCell:Dynamic,inRowIndex:Int):Void;
public function rowClick(e:Dynamic):Void;
public function styleRow(inRow:Dynamic):Void;
public function dispatchEvent(e:Dynamic):Void;
public function isEditing():Void;
public function isEditCell(inRowIndex:Int,inCellIndex:Int):Void;
public function isEditRow(inRowIndex:Int):Void;
public function setEditCell(inCell:Dynamic,inRowIndex:Int):Void;
public function focusEditor():Void;
public function start(inCell:Dynamic,inRowIndex:Dynamic,inEditing:Dynamic):Void;
public function editorApply():Void;
public function editorCancel():Void;
public function applyCellEdit(inValue:Dynamic,inCell:Dynamic,inRowIndex:Dynamic):Void;
public function applyRowEdit():Void;
public function apply():Void;
public function cancel():Void;
public function save(inRowIndex:Int,inView:Dynamic):Void;
public function restore(inView:Dynamic,inRowIndex:Int):Void;
public var grid:Dynamic;
public var connections:Array<Dynamic>;

}
