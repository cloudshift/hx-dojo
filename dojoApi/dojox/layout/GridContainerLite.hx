package dojox.layout;

extern class GridContainerLite {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function resizeChildAfterDrop(node:Dynamic,targetArea:Dynamic,indexChild:Int):Void;
public function resizeChildAfterDragStart(node:Dynamic,sourceArea:Dynamic,indexChild:Int):Void;
public function _isShown():Bool;
public function _createCells():Void;
public function enableDnd():Void;
public function disableDnd():Void;
public function addService(child:Dynamic,?column:Int,?p:Int):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var autoRefresh:Bool;
public var dragHandleClass:Array<Dynamic>;
public var nbZones:Int;
public var doLayout:Bool;
public var isAutoOrganized:Bool;
public var acceptTypes:Array<Dynamic>;
public var colWidths:String;

}
