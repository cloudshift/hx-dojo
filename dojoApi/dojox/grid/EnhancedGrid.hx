package dojox.grid;

extern class EnhancedGrid extends dojox.grid.DataGrid {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function mixin(target:Dynamic,source:Dynamic):Void;
public var plugins:Dynamic;
public var pluginMgr:Dynamic;
public var doubleAffordance:Bool;
public var minRowHeight:Int;
public var keepSortSelection:Bool;
public var rowSelectionChangedTopic:String;
public var sortRowSelectionChangedTopic:String;
public var rowMovedTopic:String;
public var menuContainer:Dynamic;
public var textSizeChanging:Bool;

}
