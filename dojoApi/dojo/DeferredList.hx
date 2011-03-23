package dojo;

extern class DeferredList extends dojo.Deferred {
public function new(list:Array<Dynamic>,?fireOnOneCallback:Bool,?fireOnOneErrback:Bool,?consumeErrors:Bool,?canceller:Dynamic):Void;
public function gatherResults(deferredList:Dynamic):Void;

}
