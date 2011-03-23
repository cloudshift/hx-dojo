package dijit.form;

extern class Select extends dijit.form._FormSelectWidget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function isLoaded():Void;
public function loadDropDown(loadCallback:Dynamic):Void;
public function toggleDropDown():Void;
public function openDropDown():Void;
public function closeDropDown(focus:Bool):Void;
public function validate(isFocused:Bool):Void;
public function isValid(isFocused:Bool):Void;
public var _buttonNode:Dynamic;
public var _arrowWrapperNode:Dynamic;
public var _popupStateNode:Dynamic;
public var _aroundNode:Dynamic;
public var autoWidth:Bool;
public var forceWidth:Bool;
public var maxHeight:Int;
public var state:String;
public var required:Bool;
public var tooltipPosition:Array<String>;
public var emptyLabel:String;
public var dropDown:Dynamic;

}
