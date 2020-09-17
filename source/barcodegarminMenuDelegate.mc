using Toybox.WatchUi;
using Toybox.System;

class barcodegarminMenuDelegate extends WatchUi.MenuInputDelegate {

	var mView = null;
	
    function initialize(view) {
        MenuInputDelegate.initialize();
        mView = view;
    }

    function onMenuItem(item) {
        if (item == :item_1) {
            mView.showCode(0);
        } else if (item == :item_2) {
            mView.showCode(1);
        } else if (item == :item_3){
        	mView.showCode(2);
        }
    }

}