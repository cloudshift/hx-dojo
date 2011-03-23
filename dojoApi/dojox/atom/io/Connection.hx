package dojox.atom.io;

extern class Connection {
public function new(sync:Bool,preventCache:Bool):Void;
public function getFeed(url:String,callBack:Dynamic,errorCallback:Dynamic,scope:Dynamic):Void;
public function getService(url:String,callBack:Dynamic,errorCallback:Dynamic,scope:Dynamic):Void;
public function getEntry(url:String,callBack:Dynamic,errorCallback:Dynamic,scope:Dynamic):Void;
public function updateEntry(entry:Dynamic,callBack:Dynamic,errorCallback:Dynamic,retrieveUpdated:Bool,xmethod:Bool,scope:Dynamic):Void;
public function addEntry(entry:Dynamic,url:Dynamic,callBack:Dynamic,errorCallback:Dynamic,retrieveEntry:Bool,scope:Dynamic):Void;
public function deleteEntry(entry:Dynamic,callBack:Dynamic,errorCallback:Dynamic,xmethod:Dynamic,scope:Dynamic):Void;
public var preventCache:Bool;
public var alertsEnabled:Bool;
public var sync:Dynamic;

}
