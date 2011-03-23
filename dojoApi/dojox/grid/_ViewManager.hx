package dojox.grid;

extern class _ViewManager {
public function new(inGrid:Dynamic):Void;
public function resize():Void;
public function render():Void;
public function addView(inView:Dynamic):Void;
public function destroyViews():Void;
public function getContentNodes():Void;
public function forEach(inCallback:Dynamic):Void;
public function onEach(inMethod:Dynamic,inArgs:Dynamic):Void;
public function normalizeHeaderNodeHeight():Void;
public function normalizeRowNodeHeights(inRowNodes:Dynamic):Void;
public function resetHeaderNodeHeight():Void;
public function renormalizeRow(inRowIndex:Dynamic):Void;
public function getViewWidth(inIndex:Dynamic):Void;
public function measureHeader():Void;
public function measureContent():Void;
public function findClient(inAutoWidth:Dynamic):Void;
public function arrange(l:Dynamic,w:Dynamic):Void;
public function renderRow(inRowIndex:Dynamic,inNodes:Dynamic,skipRenorm:Dynamic):Void;
public function rowRemoved(inRowIndex:Dynamic):Void;
public function updateRow(inRowIndex:Dynamic,skipRenorm:Dynamic):Void;
public function updateRowStyles(inRowIndex:Dynamic):Void;
public function setScrollTop(inTop:Dynamic):Void;
public function getFirstScrollingView():Void;
public var defaultWidth:Float;
public var grid:Dynamic;

}
