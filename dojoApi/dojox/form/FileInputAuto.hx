package dojox.form;

extern class FileInputAuto extends dojox.form.FileInput {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function onBeforeSend():Void;
public function setMessage(title:String):Void;
public function onComplete(data:Dynamic,ioArgs:Dynamic,widgetRef:Dynamic):Void;
public var url:String;
public var blurDelay:Int;
public var duration:Int;
public var uploadMessage:String;
public var triggerEvent:String;

}
