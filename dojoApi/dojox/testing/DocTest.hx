package dojox.testing;

extern class DocTest {
public function getTests(moduleName:String):Void;
public function getTestsFromString(data:String):Void;
public function run(moduleName:Dynamic):Void;
public function runTest(commands:Dynamic,expected:Dynamic):Void;
public var errors:Array<Dynamic>;
public var tests:Dynamic;

}
