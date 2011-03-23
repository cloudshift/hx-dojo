package dojox.grid;

extern class _FocusManager {
public function new(inGrid:Dynamic):Void;
public function destroy():Void;
public function initFocusView():Void;
public function isFocusCell(inCell:Dynamic,inRowIndex:Int):Void;
public function isLastFocusCell():Void;
public function isFirstFocusCell():Void;
public function isNoFocusCell():Void;
public function isNavHeader():Void;
public function getHeaderIndex():Void;
public function scrollIntoView():Void;
public function colSizeAdjust(e:Dynamic,colIdx:Dynamic,delta:Dynamic):Dynamic;
public function styleRow(inRow:Dynamic):Void;
public function setFocusIndex(inRowIndex:Int,inCellIndex:Int):Void;
public function setFocusCell(inCell:Dynamic,inRowIndex:Int):Void;
public function next():Void;
public function previous():Void;
public function move(inRowDelta:Int,inColDelta:Int):Void;
public function previousKey(e:Dynamic):Void;
public function nextKey(e:Dynamic):Void;
public function tabOut(inFocusNode:Dynamic):Void;
public function focusGridView():Void;
public function focusGrid(inSkipFocusCell:Dynamic):Void;
public function findAndFocusGridCell():Void;
public function focusHeader():Void;
public function blurHeader():Void;
public function doFocus(e:Dynamic):Void;
public function doBlur(e:Dynamic):Void;
public function doContextMenu(e:Dynamic):Void;
public function doLastNodeFocus(e:Dynamic):Void;
public function doLastNodeBlur(e:Dynamic):Void;
public function doColHeaderFocus(e:Dynamic):Void;
public function doColHeaderBlur(e:Dynamic):Void;
public var tabbingOut:Bool;
public var focusClass:String;
public var focusView:Dynamic;
public var rowIndex:Float;
public var headerMenu:Dynamic;

}
