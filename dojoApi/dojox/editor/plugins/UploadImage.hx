package dojox.editor.plugins;

extern class UploadImage extends dijit._editor._Plugin {
public function createFileInput():Void;
public function onComplete(data:Dynamic,ioArgs:Dynamic,widgetRef:Dynamic):Void;
public function insertTempImage():Void;
public var tempImageUrl:String;
public var uploadUrl:String;
public var label:String;
public var currentImageId:String;

}
