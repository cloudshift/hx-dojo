package dojox.data;

extern class ClientFilter {
public function new():Void;
public function clearCache():Void;
public function updateResultSet(resultSet:Array<Dynamic>,request:Dynamic):Void;
public function querySuperSet(argsSuper:Dynamic,argsSub:Dynamic):Void;
public function cachingFetch(args:Dynamic):Void;
public function isUpdateable(request:Dynamic):Void;
public function clientSideFetch(request:Dynamic,baseResults:Array<Dynamic>):Void;
public function clientSidePaging(request:Dynamic,baseResults:Array<Dynamic>):Void;
public function matchesQuery(item:Dynamic,request:Dynamic):Void;
public function makeComparator(sort:Dynamic):Dynamic;
public var cacheByDefault:Bool;
public var serverVersion:Float;
public var onSet:Dynamic;
public var onNew:Dynamic;
public var onDelete:Dynamic;

}
