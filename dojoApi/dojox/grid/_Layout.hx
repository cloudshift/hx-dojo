package dojox.grid;

extern class _Layout {
public function new(inGrid:Dynamic):Void;
public function moveColumn(sourceViewIndex:Dynamic,destViewIndex:Dynamic,cellIndex:Dynamic,targetIndex:Dynamic,before:Dynamic):Void;
public function setColumnVisibility(columnIndex:Dynamic,visible:Dynamic):Void;
public function addCellDef(inRowIndex:Dynamic,inCellIndex:Dynamic,inDef:Dynamic):Void;
public function addRowDef(inRowIndex:Dynamic,inDef:Dynamic):Void;
public function addRowsDef(inDef:Dynamic):Void;
public function addViewDef(inDef:Dynamic):Void;
public function setStructure(inStructure:Dynamic):Void;
public var cells:Array<Dynamic>;
public var structure:Array<Dynamic>;
public var defaultWidth:String;
public var fieldIndex:Float;
public var cellCount:Dynamic;

}
