package dojox.form;

extern class ListInput extends dijit.form._FormValueWidget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function add(values:String):Void;
public function regExpGen(constraints:Dynamic):String;
public var inputClass:String;
public var inputHandler:String;
public var submitOnlyValidValue:Bool;
public var useOnBlur:Bool;
public var readOnlyInput:Bool;
public var maxItems:Int;
public var showCloseButtonWhenValid:Bool;
public var showCloseButtonWhenInvalid:Bool;
public var regExp:String;
public var delimiter:String;
public var constraints:Dynamic;
public var useAnim:Bool;
public var duration:Int;
public var easingIn:Dynamic;
public var easingOut:Dynamic;
public var readOnlyItem:Bool;
public var useArrowForEdit:Bool;

}
