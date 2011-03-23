package dojox.mdnd.dropMode;

extern class OverDropMode {
public function new():Void;
public function addArea(areas:Array<Dynamic>,object:Dynamic):Array<Dynamic>;
public function updateAreas(areaList:Array<Dynamic>):Void;
public function _updateArea(area:Dynamic):Void;
public function initItems(area:Dynamic):Void;
public function refreshItems(area:Dynamic,indexItem:Int,size:Dynamic,added:Bool):Void;
public function getDragPoint(coords:Dynamic,size:Dynamic,mousePosition:Dynamic):Dynamic;
public function getTargetArea(areaList:Array<Dynamic>,coords:Dynamic,currentIndexArea:Int):Int;
public function _checkInterval(areaList:Array<Dynamic>,index:Int,x:Dynamic,y:Dynamic):Bool;
public function getDropIndex(targetArea:Dynamic,coords:Dynamic):Int;
public function destroy():Void;

}
