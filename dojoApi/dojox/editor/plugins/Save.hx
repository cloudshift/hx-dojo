package dojox.editor.plugins;

extern class Save extends dijit._editor._Plugin {
public function save(content:Dynamic):Void;
public function onSuccess(resp:Dynamic,ioargs:Dynamic):Void;
public function onError(error:Dynamic,ioargs:Dynamic):Void;
public var url:String;
public var logResults:Dynamic;

}
