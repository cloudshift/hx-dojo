package dojox.data.util;

extern class JsonQuery {
public function fetch(args:Dynamic):Void;
public function isUpdateable():Void;
public function matchesQuery(item:Dynamic,request:Dynamic):Void;
public function clientSideFetch(request:Dynamic,baseResults:Array<Dynamic>):Void;
public function querySuperSet(argsSuper:Dynamic,argsSub:Dynamic):Void;
public var useFullIdInQueries:Bool;
public var jsonQueryPagination:Dynamic;

}
