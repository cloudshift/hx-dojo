package dojox.date.buddhist;

extern class Date {
public function new():Void;
public function getDate(?isNumber:Bool):Void;
public function getMonth():Void;
public function getFullYear():Void;
public function getHours():Void;
public function getMinutes():Void;
public function getSeconds():Void;
public function getMilliseconds():Void;
public function setDate(date:Float):Void;
public function setFullYear(year:Float,?month:Float,?date:Float):Void;
public function setMonth(month:Float):Void;
public function setHours():Void;
public function setMinutes(minutes:Float):Void;
public function setSeconds(seconds:Float):Void;
public function setMilliseconds(milliseconds:Float):Void;
public function toString():String;
public function fromGregorian(gdate:Date):Void;
public function toGregorian():Date;
public function getDay():Int;
public function valueOf():Void;

}
