package dojox.grid;

extern class _Grid extends dijit._Widget {
public function new():Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function onKeyEvent(e:Dynamic):Void;
public function onContentEvent(e:Dynamic):Void;
public function onHeaderEvent(e:Dynamic):Void;
public function onStyleRow(inRow:Dynamic):Void;
public function onMouseOverRow(e:Dynamic):Void;
public function onMouseOutRow(e:Dynamic):Void;
public function onMouseDownRow(e:Dynamic):Void;
public function onCellMouseOver(e:Dynamic):Void;
public function onCellMouseOut(e:Dynamic):Void;
public function onCellMouseDown(e:Dynamic):Void;
public function onCellClick(e:Dynamic):Void;
public function onCellDblClick(e:Dynamic):Void;
public function onCellContextMenu(e:Dynamic):Void;
public function onCellFocus(inCell:Dynamic,inRowIndex:Int):Void;
public function onRowClick(e:Dynamic):Void;
public function onRowDblClick(e:Dynamic):Void;
public function onRowMouseOver(e:Dynamic):Void;
public function onRowMouseOut(e:Dynamic):Void;
public function onRowMouseDown(e:Dynamic):Void;
public function onRowContextMenu(e:Dynamic):Void;
public function onHeaderMouseOver(e:Dynamic):Void;
public function onHeaderMouseOut(e:Dynamic):Void;
public function onHeaderCellMouseOver(e:Dynamic):Void;
public function onHeaderCellMouseOut(e:Dynamic):Void;
public function onHeaderCellMouseDown(e:Dynamic):Void;
public function onHeaderClick(e:Dynamic):Void;
public function onHeaderCellClick(e:Dynamic):Void;
public function onHeaderDblClick(e:Dynamic):Void;
public function onHeaderCellDblClick(e:Dynamic):Void;
public function onHeaderCellContextMenu(e:Dynamic):Void;
public function onHeaderContextMenu(e:Dynamic):Void;
public function onStartEdit(inCell:Dynamic,inRowIndex:Int):Void;
public function onApplyCellEdit(inValue:String,inRowIndex:Int,inFieldIndex:Int):Void;
public function onCancelEdit(inRowIndex:Int):Void;
public function onApplyEdit(inRowIndex:Int):Void;
public function onCanSelect(inRowIndex:Int):Void;
public function onCanDeselect(inRowIndex:Int):Void;
public function onSelected(inRowIndex:Int):Void;
public function onDeselected(inRowIndex:Int):Void;
public function onSelectionChanged():Void;
public function textSizeChanged():Void;
public function sizeChange():Void;
public function createManagers():Void;
public function createSelection():Void;
public function createScroller():Void;
public function createLayout():Void;
public function onMoveColumn():Void;
public function onResizeColumn(cellIdx:Int):Void;
public function createViews():Void;
public function createView(inClass:Dynamic,idx:Dynamic):Void;
public function buildViews():Void;
public function setStructure(inStructure:Dynamic):Void;
public function getColumnTogglingItems():Void;
public function setHeaderMenu(menu:Dynamic):Void;
public function setupHeaderMenu():Void;
public function getItem(inRowIndex:Dynamic):Void;
public function showMessage(message:Dynamic):Void;
public function hasLayout():Void;
public function resize(changeSize:Dynamic,resultSize:Dynamic):Void;
public function adaptWidth():Void;
public function adaptHeight(inHeaderHeight:Dynamic):Void;
public function render():Void;
public function update():Void;
public function prerender():Void;
public function postrender():Void;
public function postresize():Void;
public function renderRow(inRowIndex:Dynamic,inNodes:Dynamic):Void;
public function rowRemoved(inRowIndex:Dynamic):Void;
public function beginUpdate():Void;
public function endUpdate():Void;
public function defaultUpdate():Void;
public function updateRow(inRowIndex:Int):Void;
public function updateRows(startIndex:Int,howMany:Int):Void;
public function updateRowCount(inRowCount:Int):Void;
public function updateRowStyles(inRowIndex:Dynamic):Void;
public function getRowNode(inRowIndex:Dynamic):Void;
public function rowHeightChanged(inRowIndex:Int):Void;
public function scrollTo(inTop:Int):Void;
public function finishScrollJob():Void;
public function setScrollTop(inTop:Dynamic):Void;
public function scrollToRow(inRowIndex:Int):Void;
public function styleRowNode(inRowIndex:Dynamic,inRowNode:Dynamic):Void;
public function getCell(inIndex:Int):Void;
public function setCellWidth(inIndex:Dynamic,inUnitWidth:Dynamic):Void;
public function getCellName(inCell:Dynamic):String;
public function canSort(inSortInfo:Int):Void;
public function sort():Void;
public function getSortAsc(inSortInfo:Dynamic):Bool;
public function getSortIndex(inSortInfo:Dynamic):Int;
public function setSortIndex(inIndex:Int,inAsc:Bool):Void;
public function setSortInfo(inSortInfo:Dynamic):Void;
public function doKeyEvent(e:Dynamic):Void;
public function dispatchKeyEvent(e:Dynamic):Void;
public function dispatchContentEvent(e:Dynamic):Void;
public function dispatchHeaderEvent(e:Dynamic):Void;
public function dokeydown(e:Dynamic):Void;
public function doclick(e:Dynamic):Void;
public function dodblclick(e:Dynamic):Void;
public function docontextmenu(e:Dynamic):Void;
public function doheaderclick(e:Dynamic):Void;
public function doheaderdblclick(e:Dynamic):Void;
public function doheadercontextmenu(e:Dynamic):Void;
public function doStartEdit(inCell:Dynamic,inRowIndex:Dynamic):Void;
public function doApplyCellEdit(inValue:Dynamic,inRowIndex:Dynamic,inFieldIndex:Dynamic):Void;
public function doCancelEdit(inRowIndex:Dynamic):Void;
public function doApplyEdit(inRowIndex:Dynamic):Void;
public function addRow():Void;
public function removeSelectedRows():Void;
public function markupFactory(props:Dynamic,node:Dynamic,ctor:Dynamic,cellFunc:Dynamic):Dynamic;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var cellOverClass:String;
public var classTag:String;
public var rowCount:Int;
public var keepRows:Int;
public var rowsPerPage:Int;
public var autoWidth:Bool;
public var initialWidth:String;
public var autoHeight:Dynamic;
public var rowHeight:Int;
public var autoRender:Bool;
public var defaultHeight:String;
public var height:String;
public var structure:Dynamic;
public var elasticView:Int;
public var singleClickEdit:Bool;
public var selectionMode:String;
public var rowSelector:Dynamic;
public var columnReordering:Bool;
public var headerMenu:Dynamic;
public var placeholderLabel:String;
public var selectable:Bool;
public var loadingMessage:String;
public var errorMessage:String;
public var noDataMessage:String;
public var escapeHTMLInData:Bool;
public var formatterScope:Dynamic;
public var editable:Bool;
public var sortInfo:Float;
public var themeable:Dynamic;
public var lastScrollTop:Float;
public var scrollTop:Float;
public var rows:Dynamic;
public var focus:Dynamic;
public var edit:Dynamic;
public var selection:Dynamic;
public var fitTo:String;
public var updating:Bool;
public var fastScroll:Bool;
public var delayScroll:Bool;
public var scrollRedrawThreshold:Int;

}
