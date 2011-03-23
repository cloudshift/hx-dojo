package dojo.data.api;

extern class Identity extends dojo.data.api.Read {
public function getIdentity(item:Dynamic):String;
public function getIdentityAttributes(item:Dynamic):String;
public function fetchItemByIdentity(keywordArgs:Dynamic):Void;

}
