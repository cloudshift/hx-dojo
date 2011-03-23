package dojox.mobile.app;

extern class TextBox {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function format(value:String,constraints:Dynamic):Void;
public function parse(value:String,constraints:Dynamic):String;
public function _refreshState():Void;
public function filter(val:Dynamic):Void;
public var trim:Bool;
public var uppercase:Bool;
public var lowercase:Bool;
public var propercase:Bool;
public var maxLength:String;
public var selectOnClick:Bool;
public var placeHolder:String;
public var focusNode:Dynamic;
public var displayedValue:String;

}
