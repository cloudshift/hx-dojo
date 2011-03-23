package dojox.storage;

extern class manager {
public function initialize():Void;
public function register(name:String,instance:Dynamic):Void;
public function setProvider(storageClass:Dynamic):Void;
public function autodetect():Void;
public function isAvailable():Void;
public function addOnLoad(func:Dynamic):Void;
public function removeOnLoad(func:Dynamic):Void;
public function isInitialized():Void;
public function supportsProvider(storageClass:String):Void;
public function getProvider():Void;
public function loaded():Void;
public function getResourceList():Void;
public var currentProvider:Dynamic;
public var available:Dynamic;
public var providers:Array<Dynamic>;

}
