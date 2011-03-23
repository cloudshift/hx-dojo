package dojox.form;

extern class _HasDropDown {
public function postCreate():Void;
public function destroyDescendants():Void;
public function isLoaded():Void;
public function loadDropDown(loadCallback:Dynamic):Void;
public function toggleDropDown():Void;
public function openDropDown():Void;
public function closeDropDown(focus:Bool):Void;
public var dropDownNode:Dynamic;
public var popupStateNode:Dynamic;
public var aroundNode:Dynamic;
public var dropDown:Dynamic;
public var autoWidth:Bool;
public var maxHeight:Int;

}
