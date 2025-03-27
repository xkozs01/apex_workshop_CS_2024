This function customizes the toolbar of an **Interactive Grid (IG)** in Oracle APEX by adding new buttons and defining custom actions. Here's a detailed explanation of the code:

---

### **1. Function Definition**
```javascript
function( options ) {
```
- This is a function that takes an `options` object as input. The `options` object is used to configure the Interactive Grid, including its toolbar, actions, and other settings.

---

### **2. Variables Initialization**
```javascript
var $ = apex.jQuery,
    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),
    reportsGroupControls = toolbarData.toolbarFind( "reports" ).controls;
```
- **`$ = apex.jQuery`**: Assigns Oracle APEX's jQuery object to `$` for easier use.
- **`toolbarData`**: Copies the default toolbar configuration of the Interactive Grid using `copyDefaultToolbar()`. This ensures that the default toolbar is preserved and can be modified.
- **`reportsGroupControls`**: Locates the "reports" group in the toolbar and retrieves its controls (buttons). This is where new buttons will be added.

---

### **3. Adding Default Buttons**
```javascript
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
```
- These lines add default buttons to the "reports" group in the toolbar.
- **`type: "BUTTON"`**: Specifies that the control is a button.
- **`action`**: Specifies the action associated with the button (e.g., saving a report, showing dialogs, or deleting a report).
- **`iconOnly: true`**: Indicates that the button will display only an icon, not a label.

---

### **4. Adding a Custom Button: "Calculate Price"**
```javascript
calculatePrice = {
    "type": "BUTTON",
    "action": "calculate-price",
    "label": "Calculate Price",
    "icon": "fa fa-calculator",
    "iconBeforeLabel": "BEFORE_LABEL"
};
```
- This defines a new button called **"Calculate Price"** with the following properties:
  - **`type: "BUTTON"`**: Specifies that it is a button.
  - **`action: "calculate-price"`**: Associates the button with a custom action named `calculate-price`.
  - **`label: "Calculate Price"`**: The label displayed on the button.
  - **`icon: "fa fa-calculator"`**: Specifies the icon for the button (a calculator icon from Font Awesome).
  - **`iconBeforeLabel: "BEFORE_LABEL"`**: Places the icon before the label.

---

### **5. Removing the Last Button**
```javascript
reportsGroupControls.pop();
```
- Removes the last button from the "reports" group. This might be done to clean up unnecessary buttons before adding the custom button.

---

### **6. Defining the Custom Action**
```javascript
options.initActions = function (actions) {
    actions.add({
        name: 'calculate-price',
        action: function(event, focusElement) {
            var gridView = apex.region("ig_emps").widget().interactiveGrid("getViews").grid;
            var records = gridView.getSelectedRecords();
            r = records[0];
            console.log('r is');
            console.log(r);
            result = Number(r[5]) + Number(r[6]);
            apex.message.alert('TOTAL SALARY = ' + result);
        }
    });
};
```
- **`options.initActions`**: Defines custom actions for the Interactive Grid.
- **`actions.add`**: Adds a new action named `calculate-price`.
- **Action Function**:
  - Retrieves the Interactive Grid region (`ig_emps`) and accesses its grid view.
  - Gets the selected records in the grid using `getSelectedRecords()`.
  - Extracts the first selected record (`r = records[0]`).
  - Calculates the total salary by summing two columns (assumed to be at indices 5 and 6 in the record).
  - Displays the result using `apex.message.alert`.

---

### **7. Adding the Custom Button**
```javascript
reportsGroupControls.push(calculatePrice);
```
- Adds the custom "Calculate Price" button to the "reports" group in the toolbar.

---

### **8. Assigning the Modified Toolbar**
```javascript
options.toolbarData = toolbarData;
```
- Assigns the modified toolbar configuration (with the new buttons) back to the `options` object.

---

### **9. Returning the Options**
```javascript
return options;
```
- Returns the modified `options` object, which will be used to configure the Interactive Grid.

---

### **Summary**
This function customizes the Interactive Grid toolbar by:
1. Copying the default toolbar.
2. Adding default buttons for report actions.
3. Adding a custom button called "Calculate Price."
4. Defining a custom action (`calculate-price`) that calculates the total salary of selected records in the grid and displays it in an alert.
5. Returning the modified toolbar configuration.

This approach allows you to extend the functionality of Oracle APEX Interactive Grids with custom buttons and actions.

Similar code found with 1 license type