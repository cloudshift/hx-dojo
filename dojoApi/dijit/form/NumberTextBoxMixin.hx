package dijit.form;

extern class NumberTextBoxMixin {
public function _formatter(value:Float,?options:Dynamic):String;
public function format(value:Float,constraints:Dynamic):Void;
public function parse(value:String,constraints:Dynamic):Float;
public function filter(value:Float):Dynamic;
public function serialize(value:Float,?options:Dynamic):Void;
public function isValid(isFocused:Bool):Dynamic;
public var constraints:Dynamic;
public var value:Float;

}
