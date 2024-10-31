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

        calculatePrice = {//button without Hot action 

            "type":"BUTTON", 

            "action":"calculate-price", 

            "label":"Calculate Price", 

            "icon": "fa fa-calculator", 

            "iconBeforeLabel": "BEFORE_LABEL" 

        };   

reportsGroupControls.pop(); 
options.initActions = function (actions) { 
            actions.add({ 
                name: 'calculate-price', 
                action: function(event, focusElement) { 
                //apex.message.alert('calculate-price'); 
                var gridView = apex.region("ig_emps").widget().interactiveGrid("getViews").grid; 
                var records = gridView.getSelectedRecords();
                r = records[0];
                console.log('r is');
                console.log(r);
                 result = Number(r[5]) + Number(r[6]);
                apex.message.alert('TOTAL SALARY = '+result); 
                } 
            }); 
        } 
reportsGroupControls.push(calculatePrice);         

    // Assign new toolbar data back to toolbarData configuration property
    options.toolbarData = toolbarData;

    // Return the options
    return options;
}