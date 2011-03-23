package dojox.date.islamic;

extern class Date {
public function new():Void;
public function getDate():Void;
public function getMonth():Void;
public function getFullYear():Void;
public function getDay():Void;
public function getHours():Void;
public function getMinutes():Void;
public function getSeconds():Void;
public function getMilliseconds():Void;
public function setDate(date:Float):Void;
public function setFullYear(year:Float):Void;
public function setMonth(month:Float):Void;
public function setHours():Void;
public function setMinutes(minutes:Float):Void;
public function setSeconds(seconds:Float):Void;
public function setMilliseconds(milliseconds:Float):Void;
public function toString():Void;
public function toGregorian():Void;
public function fromGregorian(gdate:Date):Void;
public function valueOf():Void;
public function getDaysInIslamicMonth(month:Float,year:Float):Dynamic;

}
