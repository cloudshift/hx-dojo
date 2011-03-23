package dojo;

extern class Stateful {
public function postscript(mixin:Dynamic):Void;
public function get(name:String):Void;
public function set(name:String,value:Dynamic):Void;
public function watch(?name:String,callBack:Dynamic):Void;

}
