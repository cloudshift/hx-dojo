package dojox.grid.enhanced;

extern class _Plugin {
public function new(inGrid:Dynamic):Void;
public function preInit():Void;
public function postInit():Void;
public function getPluginClazz(clazzStr:String):Void;
public function isFixedCell(cell:Dynamic):Void;
public function getFixedCellNumber():Void;
public function inSingleSelection():Void;
public function needUpdateRow():Void;
public function setColumnsWidth(width:Dynamic):Void;
public function previousKey(e:Dynamic):Void;
public function nextKey(e:Dynamic):Void;
public function renderPage(inPageIndex:Dynamic):Void;
public function measurePage(inPageIndex:Dynamic):Void;
public function updateRow(inRowIndex:Dynamic):Void;
public function getEditNode(inRowIndex:Dynamic):Void;
public function sizeWidget(inNode:Dynamic,inDatum:Dynamic,inRowIndex:Dynamic):Void;
public function setScrollTop(inTop:Dynamic):Void;
public function getViewByCellIdx(cellIdx:Int):Void;
public var fixedCellNum:Int;
public var lastTop:Dynamic;

}
