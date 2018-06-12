# uniGUIAreaChart
Short example of uniGUI area charts using Delphi to illustrate a bug in the mobile versions of the components

The project group consists of a single project.

Prerequisites:

1.  RAD Studio Tokyo, with current patches and fixes.
2.  Evaluation Edition of uniGUI installed appropriately for your RAD Studio installation.
3.  Properly configured ports and firewalls as necessary.

Steps:

1.  Download the zip or clone the repository.
2.  If download was chosen, unzip the files.
3.  Run the only project. AreaGraph.exe.
4.  Connect to the application using a mobile device or Google's mobile simulator from your desktop.

What to look for.

* The demo is meaningful only for mobile devices. If you aren't seeing the mobile version of the main form, adjust your browser settings or switch to a mobile device.
* MainmForm has a Tab Sheet with two tabs.
  * To display the chart choose the Chart tab. To use the buttons choose the Butttons tab.
  * Before the chart is populated, the chart Legend appears as specified.
  * After pressing the Populate Chart Button the following errors are observed
    * The chart legend disappears
    * The chart areas are not "stacked" but rather are overlayed.
    * Clearing the chart will not restore the missing Legend.
  * Next choose the Open Form 2 Button from the MainmForm Buttons tab.
* Form 2 is not a main form, but behaves in the same way as the main form.
  * Choose populate chart to populate the chart.
  * Choose Clear Chart to clear the chart.
  * Observe that the areas do not stack
  * Observe that the Legend disappears and cannot be restored.
* Next choose the the Open Form 3 button from the MainmForm Buttons tab.
  * This is not a Main form.
  * This form DOES NOT have a TabPanel object.
  * Use the Populate Chart and Clear Chart buttons as with the previous forms, except that they are not on a separate tab page.
    * Note that the Legend remains visible and DOES NOT disappear.
    * Note that the areas are still not stacked.
    
Conslusions:

* The stacking of area series is buggy and cannot be achieved by currently known methods.
* The disappearing Legend seems to be a function of using a unimTabPanel that somehow loses the Legend when the Chart series are populated.
