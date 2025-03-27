/**
* @namespace var igUtil = {};
**/
var igUtil = {};

  /**
   * Retrieves the grid view object from an Interactive Grid region in Oracle APEX.
   * 
   * @type {Object} gridView - The grid view object of the Interactive Grid.
   * @property {Function} widget - Returns the jQuery widget instance of the region.
   * @property {Function} interactiveGrid - Provides access to Interactive Grid methods.
   * @property {Function} getViews - Retrieves the views available in the Interactive Grid.
   * @property {Object} grid - Represents the grid view of the Interactive Grid.
   * @example igUtil.selectedPKs("customers", "P10_CUSTOMER_IDS", "Please select at least one customer");
  **/
igUtil.selectedPKs = function  (IGStaticId, returnPageItem, minSelectionMsg) {
  // Get the Interactive Grid View
  var gridView = apex.region(IGStaticId).widget().interactiveGrid("getViews").grid;
  // Get the currently seledcted/checked records from the IG view
  var records = gridView.getSelectedRecords();
  // Create Array of Primary Key Values (getRecordId) from the selected records
  var ids = records.map(function(r) { return gridView.model.getRecordId(r); } );
  // Populate APEX Page Item with the selected IDs delimited with a ':'
  apex.item(returnPageItem).setValue( ids.join(":") );

  // Log Debug Messages.
  apex.debug.info("IG Region Static ID: " +  IGStaticId);
  apex.debug.info("Return Page Item: " +  returnPageItem);
  apex.debug.info("Count Selected IDs: " +  ids.length);
  apex.debug.info("Selected IDs: " +  ids.join(":"));

  // If minSelectionMsg is populated then user must select at least one item.
  if (ids.length === 0 && minSelectionMsg) {
    // User did not select at least 1 record, so show the error message and return false.
    apex.message.clearErrors();
    apex.message.showErrors([
     {type:     "error",
      location: "page",
      message:  minSelectionMsg,
      unsafe:   false}]);
    return false;
  } else {
    // All good.
    return true;
  }
}

/**
 * Ensures the user selects exactly one primary key (PK) from an Interactive Grid.
 * 
 * @param {string} IGStaticId - The Static ID of the Interactive Grid region.
 * @param {string} returnPageItem - The APEX page item to populate with the selected PK.
 * @param {string} errorMsg - The error message to display if the selection is invalid.
 * @example igUtil.selectedPK("customers", "P10_CUSTOMER_ID", "Please select exactly one customer");
 * @returns {boolean} - Returns `true` if exactly one PK is selected, otherwise `false`.
 */
igUtil.selectedPK = function (IGStaticId, returnPageItem, errorMsg) {
  // Get the Interactive Grid View
  var gridView = apex.region(IGStaticId).widget().interactiveGrid("getViews").grid;
  // Get the currently selected/checked records from the IG view
  var records = gridView.getSelectedRecords();
  // Create an array of Primary Key Values (getRecordId) from the selected records
  var ids = records.map(function (r) { return gridView.model.getRecordId(r); });

  // Log Debug Messages
  apex.debug.info("IG Region Static ID: " + IGStaticId);
  apex.debug.info("Return Page Item: " + returnPageItem);
  apex.debug.info("Count Selected IDs: " + ids.length);
  apex.debug.info("Selected IDs: " + ids.join(":"));

  // Check if exactly one record is selected
  if (ids.length !== 1) {
    // Clear any existing error messages
    apex.message.clearErrors();
    // Show the error message
    apex.message.showErrors([
      {
        type: "error",
        location: "page",
        message: errorMsg || "Please select exactly one record.",
        unsafe: false
      }
    ]);
    // Return false since the selection is invalid
    return false;
  }

  // Populate the APEX Page Item with the selected ID
  apex.item(returnPageItem).setValue(ids[0]);

  // All good, return true
  return true;
};
