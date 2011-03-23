package dijit.form;

extern class RangeBoundTextBox extends dijit.form.MappedTextBox {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function rangeCheck(primitive:Float,constraints:Dynamic):Void;
public function isInRange(isFocused:Bool):Void;
public var rangeMessage:String;

}
