using Toybox.WatchUi;

class barcodegarminView extends WatchUi.View {

    hidden var _bitmaps;

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc) {
        setLayout(Rez.Layouts.MainLayout(dc));
        _bitmaps = [
            Rez.Drawables.JumboCode,
            Rez.Drawables.AlberHeijnCode,
            Rez.Drawables.LidlCode
        ];
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    }

    // Update the view
    function onUpdate(dc) {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }
    
    function showCode(barcode){
    	var bitmap = findDrawableById("barcodeBitmap");
        if (bitmap != null) {
            bitmap.setBitmap(_bitmaps[barcode]);
        }
        WatchUi.requestUpdate();
    }
}
