package dojox.storage;

extern class FlashStorageProvider extends dojox.storage.Provider {
public function setFlushDelay(newDelay:Dynamic):Void;
public function getFlushDelay():Void;
public function flush(namespace:Dynamic):Void;
public var initialized:Dynamic;

}
