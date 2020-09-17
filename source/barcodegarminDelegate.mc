using Toybox.WatchUi;

class barcodegarminDelegate extends WatchUi.BehaviorDelegate {

	var mView = null;
	
    function initialize(view) {
        mView = view;
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new barcodegarminMenuDelegate(mView), WatchUi.SLIDE_UP);
        return true;
    }

}