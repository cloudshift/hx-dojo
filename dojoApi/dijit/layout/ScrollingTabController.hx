package dijit.layout;

extern class ScrollingTabController extends dijit.layout.TabController {
public function new(prms:Dynamic,?name:Dynamic):Void;
public function resize(dim:Dynamic):Void;
public function createSmoothScroll(?x:Int):Dynamic;
public function doSlideRight(e:Dynamic):Void;
public function doSlideLeft(e:Dynamic):Void;
public function doSlide(direction:Dynamic,node:Dynamic):Void;
public var useMenu:Bool;
public var useSlider:Bool;
public var tabStripClass:String;
public var attributeMap:Dynamic;

}
