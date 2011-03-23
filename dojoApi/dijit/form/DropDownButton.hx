package dijit.form;

extern class DropDownButton extends dijit.form.Button {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function isLoaded():Void;
public function loadDropDown(loadCallback:Dynamic):Void;
public function toggleDropDown():Void;
public function openDropDown():Void;
public function closeDropDown(focus:Bool):Void;
public var isContainer:Bool;
public var _buttonNode:Dynamic;
public var _arrowWrapperNode:Dynamic;
public var _popupStateNode:Dynamic;
public var _aroundNode:Dynamic;
public var autoWidth:Bool;
public var forceWidth:Bool;
public var maxHeight:Int;
public var state:String;
public var dropDownContainer:Dynamic;
public var dropDown:Dynamic;

}
