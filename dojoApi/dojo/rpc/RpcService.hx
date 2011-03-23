package dojo.rpc;

extern class RpcService {
public function new(args:Dynamic):Void;
public function parseResults(obj:Dynamic):Void;
public function errorCallback(deferredRequestHandler:Dynamic):Void;
public function resultCallback(deferredRequestHandler:Dynamic):Void;
public function generateMethod(method:String,parameters:Array<Dynamic>,url:String):Void;
public function processSmd(object:Dynamic):Void;
public var strictArgChecks:Dynamic;
public var serviceUrl:Dynamic;
public var required:Dynamic;
public var smd:Dynamic;
public var timeout:Float;

}
