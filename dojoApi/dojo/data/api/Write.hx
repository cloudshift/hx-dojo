package dojo.data.api;

extern class Write extends dojo.data.api.Read {
public function newItem(?keywordArgs:Dynamic,?parentInfo:Dynamic):Dynamic;
public function deleteItem(item:Dynamic):Bool;
public function setValue(item:Dynamic,attribute:String,value:Dynamic):Bool;
public function setValues(item:Dynamic,attribute:String,values:Array<Dynamic>):Bool;
public function unsetAttribute(item:Dynamic,attribute:String):Bool;
public function save(keywordArgs:Dynamic):Void;
public function revert():Bool;
public function isDirty(?item:Dynamic):Bool;

}
