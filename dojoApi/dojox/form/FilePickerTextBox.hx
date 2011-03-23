package dojox.form;

extern class FilePickerTextBox extends dijit.form.ValidationTextBox {
public function new(prms:Dynamic,?name:Dynamic):Void;
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
public var searchDelay:Int;
public var valueItem:Dynamic;
public var numPanes:Float;

}
