function( options ) {
    var $ = apex.jQuery,
        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),               // Make a copy of the default toolbar
        reportsGroupControls = toolbarData.toolbarFind( "reports" ).controls;    // Locate the reports group

    // Add new buttons after the default report controls. Note the toolbar is action driven, so
    // we just need to define the correct action name with the button.
    reportsGroupControls.push({
        type: "BUTTON",
        action: "save-report",
        iconOnly: true
    });
    reportsGroupControls.push({
        type: "BUTTON",
        action: "show-save-report-as-dialog",
        iconOnly: true
    });
    reportsGroupControls.push({
        type: "BUTTON",
        action: "show-edit-report-dialog",
        iconOnly: true
    });
    reportsGroupControls.push({
        type: "BUTTON",
        action: "delete-report",
        iconOnly: true
    });

    // Assign new toolbar data back to toolbarData configuration property
    options.toolbarData = toolbarData;

    // Return the options
    return options;
}