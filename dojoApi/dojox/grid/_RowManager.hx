package dojox.grid;

extern class _RowManager {
public function new(inGrid:Dynamic):Void;
public function prepareStylingRow(inRowIndex:Dynamic,inRowNode:Dynamic):Void;
public function styleRowNode(inRowIndex:Dynamic,inRowNode:Dynamic):Void;
public function applyStyles(inRow:Dynamic):Void;
public function updateStyles(inRowIndex:Dynamic):Void;
public function setOverRow(inRowIndex:Dynamic):Void;
public function isOver(inRowIndex:Dynamic):Void;
public var linesToEms:Float;
public var overRow:Float;
public var grid:Dynamic;

}
