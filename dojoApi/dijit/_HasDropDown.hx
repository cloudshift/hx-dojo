package dijit;

extern class _HasDropDown {
public function postCreate():Void;
public function destroyDescendants():Void;
public function isLoaded():Void;
public function loadDropDown(loadCallback:Dynamic):Void;
public function toggleDropDown():Void;
public function openDropDown():Void;
public function closeDropDown(focus:Bool):Void;
public var _buttonNode:Dynamic;
public var _arrowWrapperNode:Dynamic;
public var _popupStateNode:Dynamic;
public var _aroundNode:Dynamic;
public var autoWidth:Bool;
public var forceWidth:Bool;
public var maxHeight:Int;
public var state:String;
public function new(prms:Dynamic,?name:Dynamic):Void;

}
