package dijit.form;

extern class ValidationTextBox extends dijit.form.TextBox {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function regExpGen(constraints:Dynamic):String;
public function validator(value:Dynamic,constraints:Dynamic):Void;
public function isValid(isFocused:Bool):Void;
public function getErrorMessage(isFocused:Bool):String;
public function getPromptMessage(isFocused:Bool):String;
public function validate(isFocused:Bool):Void;
public function displayMessage(message:String):Void;
public var required:Bool;
public var promptMessage:String;
public var invalidMessage:String;
public var missingMessage:String;
public var constraints:Dynamic;
public var regExp:String;
public var state:String;
public var tooltipPosition:Array<String>;
public var messages:Dynamic;

}
