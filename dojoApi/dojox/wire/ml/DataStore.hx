package dojox.wire.ml;

extern class DataStore extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function getFeatures():Dynamic;
public function fetch(request:Dynamic):Dynamic;
public function save(args:Dynamic):Void;
public function newItem(args:Dynamic):Dynamic;
public function deleteItem(item:Dynamic):Bool;
public function revert():Bool;
public var storeClass:Dynamic;
public var store:Dynamic;

}
