package dojox.grid.enhanced.dnd;

extern class _DndSelectingManager {
public function new(inGrid:Dynamic):Void;
public function extendGridForDnd(inGrid:Dynamic):Void;
public function disableFeatures():Void;
public function cellClick(inColIndex:Int,inRowIndex:Int):Void;
public function drugSelectCell(inColumnIndex:Dynamic,inRowIndex:Dynamic):Void;
public function drugSelectRow(inRowIndex:Dynamic):Void;
public function selectColumn(columnIndex:Dynamic):Void;
public function drugSelectColumn(currentColumnIndex:Dynamic):Void;
public function disableSelecting(type:Dynamic):Void;
public function isInSelectingMode(type:String):Void;
public function setInSelectingMode(type:String,isEnable:Bool):Void;
public function getSelectedRegionInfo():Void;
public function clearInSelectingMode():Void;
public function getHeaderNodes():Void;
public function setDrugStartPoint(inColIndex:Int,inRowIndex:Int):Void;
public function autoRowScrollDrug(e:Dynamic):Void;
public function autoSelectNextRow():Void;
public function autoCellScrollDrug(e:Dynamic):Void;
public function autoSelectCellInNextRow():Void;
public function getAutoScrollRate():Void;
public function resetStartPoint():Void;
public function restorLastDragPoint():Void;
public function drugSelectColumnToMax(dir:String):Void;
public function selectColumnRange(startIndex:Dynamic,endIndex:Dynamic):Void;
public function addColumnToSelection(columnIndex:Dynamic):Void;
public function addColumnRangeToSelection(columnIndex:Dynamic,from:Dynamic,to:Dynamic):Void;
public function drugSelectRowToMax(dir:String):Void;
public function getCellNode(inCellIndex:Int,inRowIndex:Dynamic):Void;
public function addCellToSelection(cellNode:Dynamic,dndManager:Dynamic):Void;
public function isColSelected(inColIndex:Int):Void;
public function isRowSelected(inRowIndex:Int):Void;
public function isContinuousSelection(selected:Array<Dynamic>):Void;
public function cleanCellSelection():Void;
public function removeCellSelectedState(cell:Dynamic):Void;
public function cleanAll():Void;
public function refreshColumnSelection():Void;
public function inSelectedArea(inColIndex:Int,inRowIndex:Int):Void;
public function publishRowChange():Void;
public function getViewRowNodes(viewRowNodes:Dynamic):Void;
public function getFirstSelected():Void;
public function getLastSelected():Void;
public var typeSelectingMode:Array<Dynamic>;
public var selectingDisabledTypes:Array<Dynamic>;
public var drugMode:Dynamic;
public var keepState:Bool;
public var extendSelect:Bool;
public var headerNodes:Dynamic;
public var selectedCells:Array<Dynamic>;
public var selectedColumns:Array<Dynamic>;
public var selectedClass:String;
public var autoScrollRate:Float;
public var firstOut:Bool;
public var outRangeY:Dynamic;
public var colChanged:Dynamic;
public var lastDrugSelectionStart:Dynamic;

}
