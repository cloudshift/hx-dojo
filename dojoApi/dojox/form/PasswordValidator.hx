package dojox.form;

extern class PasswordValidator extends dijit.form._FormValueWidget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function isValid(isFocused:Bool):Void;
public function validate(isFocused:Bool):Void;
public function pwCheck(password:String):Void;
public var required:Bool;
public var oldName:String;

}
