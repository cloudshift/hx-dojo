package dojox.grid;

extern class TreeGrid extends dojox.grid.DataGrid {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setModel(treeModel:Dynamic):Void;
public function getDefaultOpenState(cellDef:Dynamic,item:Dynamic):Void;
public var defaultOpen:Bool;
public var sortChildItems:Bool;
public var openAtLevels:Array<Dynamic>;
public var expandoCell:Int;

}
