package dojox.grid.enhanced.plugins;

extern class NestedSorting {
public function new(inGrid:Dynamic):Void;
public function initSort(inGrid:Dynamic):Void;
public function setSortIndex(inIndex:Int,inAsc:Int,e:Dynamic):Void;
public function getCellSortInfo(cell:Dynamic):Void;
public function setCellSortInfo(e:Dynamic,inAsc:Int):Void;
public function sortStateInt2Str(si:Int):Dynamic;
public function clearSort():Void;
public function addHoverSortTip(e:Dynamic):Void;
public function removeHoverSortTip(e:Dynamic):Void;
public function updateMinColWidth(nestedSortPos:Dynamic):Void;
public function getMinColWidth():Void;
public function ignoreEvent(e:Dynamic):Void;
public function retainLastRowSelection():Void;
public function updateNewRowSelection(items:Dynamic,req:Dynamic):Void;
public function allSelectionToggled(checked:Dynamic):Void;
public function getStoreSelectedValue(rowIdx:Int):Void;
public function initAriaInfo():Void;
public var sortAttrs:Array<Dynamic>;
public var storeItemSelected:String;
public var exceptionalSelectedItems:Array<Dynamic>;
public var inSorting:Bool;
public var toggleAllValue:Bool;

}
