package dojo.data.api;

extern class Notification extends dojo.data.api.Read {
public function onSet(item:Dynamic,attribute:Dynamic,oldValue:Dynamic,newValue:Dynamic):Void;
public function onNew(newItem:Dynamic,?parentInfo:Dynamic):Void;
public function onDelete(deletedItem:Dynamic):Void;

}
