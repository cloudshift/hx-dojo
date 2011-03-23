package dojox.data;

extern class StoreExplorer extends dijit.layout.BorderContainer {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function setItemName(name:Dynamic):Void;
public function setQuery(query:Dynamic,options:Dynamic):Void;
public function setStore(store:Dynamic):Void;
public function createNew():Void;
public var store:Dynamic;
public var stringQueries:Bool;
public var tree:Dynamic;
public var gridOnFetchComplete:Dynamic;
public var queryOptions:Dynamic;

}
