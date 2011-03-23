package dojo.rpc;

extern class JsonService extends dojo.rpc.RpcService {
public function callRemote(method:String,params:Array<Dynamic>):Void;
public function bind(method:String,parameters:Array<Dynamic>,deferredRequestHandler:Dynamic,url:Dynamic):Void;
public function createRequest(method:String,params:Array<Dynamic>):Void;
public var bustCache:Bool;
public var contentType:String;
public var lastSubmissionId:Float;

}
