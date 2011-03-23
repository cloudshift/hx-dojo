package dojox.atom.widget;

extern class FeedViewer extends dijit._Widget {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function _fillContent(source:Dynamic):Void;
public function getCachedTemplate(templatePath:Dynamic,?templateString:String,alwaysUseString:Dynamic):String;
public function addChild(widget:Dynamic,?insertIndex:Int):Void;
public function removeChild(widget:Dynamic):Void;
public function hasChildren():Bool;
public function getIndexOfChild(child:Dynamic):Int;
public function clear():Void;
public function setFeedFromUrl(url:String):Void;
public function setFeed(feed:Dynamic):Void;
public function appendGrouping(titleText:String):Void;
public function appendEntry(entry:Dynamic):Void;
public function deleteEntry(entryRow:Dynamic):Void;
public function onEntrySelected(entry:Dynamic):Void;
public function addCategoryIncludeFilter(filter:Dynamic):Void;
public function removeCategoryIncludeFilter(filter:Dynamic):Void;
public var templateString:String;
public var templatePath:String;
public var widgetsInTemplate:Bool;
public var declaredClass:Dynamic;
public var isContainer:Bool;
public var feedViewerTableBody:Dynamic;
public var feedViewerTable:Dynamic;
public var entrySelectionTopic:String;
public var url:String;
public var xmethod:Bool;
public var localSaveOnly:Bool;
public var alertsEnabled:Bool;
public var atomIO:Dynamic;
public var childWidgets:Array<Dynamic>;

}
