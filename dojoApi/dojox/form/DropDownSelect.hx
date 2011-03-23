package dojox.form;

extern class DropDownSelect extends dojox.form._FormSelectWidget {
public function isLoaded():Void;
public function loadDropDown(loadCallback:Dynamic):Void;
public function toggleDropDown():Void;
public function openDropDown():Void;
public function closeDropDown(focus:Bool):Void;
public function validate(isFocused:Bool):Void;
public function isValid(isFocused:Bool):Void;
public var dropDownNode:Dynamic;
public var popupStateNode:Dynamic;
public var aroundNode:Dynamic;
public var dropDown:Dynamic;
public var autoWidth:Bool;
public var maxHeight:Int;
public var required:Bool;
public var state:String;
public var tooltipPosition:Array<String>;
public var emptyLabel:String;

}
