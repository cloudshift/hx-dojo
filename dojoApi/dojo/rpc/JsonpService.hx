package dojo.rpc;

extern class JsonpService extends dojo.rpc.RpcService {
public function new(args:Dynamic,requiredArgs:Dynamic):Void;
public function bind(method:String,parameters:Array<Dynamic>,deferredRequestHandler:Dynamic,url:Dynamic):Void;
public function createRequest(parameters:Dynamic):Void;

}
