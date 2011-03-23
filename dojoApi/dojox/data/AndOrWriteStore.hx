package dojox.data;

extern class AndOrWriteStore extends dojox.data.AndOrReadStore {
public function new(keywordParameters:Dynamic):Void;
public function newItem(?keywordArgs:Dynamic,?parentInfo:Dynamic):Dynamic;
public function deleteItem(item:Dynamic):Void;
public function setValue(item:Dynamic,attribute:Dynamic,value:Dynamic):Bool;
public function setValues(item:Dynamic,attribute:Dynamic,values:Array<Dynamic>):Bool;
public function unsetAttribute(item:Dynamic,attribute:Dynamic):Void;
public function save(keywordArgs:Dynamic):Void;
public function revert():Bool;
public function isDirty(?item:Dynamic):Bool;
public function onSet(item:Dynamic,attribute:Dynamic,oldValue:Dynamic,newValue:Dynamic):Void;
public function onNew(newItem:Dynamic,?parentInfo:Dynamic):Void;
public function onDelete(deletedItem:Dynamic):Void;
public var referenceIntegrity:Bool;

}
