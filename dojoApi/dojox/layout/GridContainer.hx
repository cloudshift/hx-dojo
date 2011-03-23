package dojox.layout;

extern class GridContainer extends dojox.layout.GridContainerLite {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _createGrip(index:Int):Void;
public function _placeGrips():Void;
public function _onGripDbClick():Void;
public function setColumns(nbColumns:Int):Void;
public var hasResizableColumns:Bool;
public var liveResizeColumns:Bool;
public var minColWidth:Int;
public var minChildWidth:Int;
public var mode:String;
public var isRightFixed:Bool;
public var isLeftFixed:Bool;

}
