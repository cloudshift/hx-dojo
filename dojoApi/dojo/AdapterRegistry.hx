package dojo;

extern class AdapterRegistry {
public function register(name:String,check:Dynamic,wrap:Dynamic,?directReturn:Bool,?overRide:Bool):Void;
public function match():Void;
public function unregister(name:Dynamic):Void;
public var pairs:Array<Dynamic>;
public var returnWrappers:Bool;

}
