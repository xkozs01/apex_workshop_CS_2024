// 1 - javascript - checks that the user selected at least one item, if yes, stores it into the hidden item P21_SELECTED_TEST_RUN_IDS
// --------------------------------------------------------------------------------
if (!igUtil.selectedPKs("ig_test_run", "P21_SELECTED_TEST_RUN_IDS", "Please select at least one test run!"))
  {
    // The function will return FALSE if the user does not select at least one entity. apex.da.cancel() will stop the subsequent steps in the Dynamic Action from running.
    apex.da.cancel();
  }
// --------------------------------------------------------------------------------



// 2 - serverside action - extracts the selected test run ids from the hidden item P21_SELECTED_TEST_RUN_IDS and suspends them
// --------------------------------------------------------------------------------


DECLARE
  lt_entity_ids   apex_t_number;
  l_entity_id     test_run.test_run_id%TYPE;
BEGIN
  -- Turn the ':' delimeted string into a PL/SQL Array.
  lt_entity_ids := apex_string.split_numbers(:P21_SELECTED_TEST_RUN_IDS,':');
  -- Loop through the PL/SQL Array.
  FOR i IN 1..lt_entity_ids.COUNT() LOOP
    -- Get the Entity ID for the current iteration.
    l_entity_id := lt_entity_ids(i);
    -- Do something with the Entity ID.
    test_runs.suspend(l_entity_id);
  END LOOP;
END;
// --------------------------------------------------------------------------------



// 3 - javascript  - displays a success message and hides it after 2 seconds
// --------------------------------------------------------------------------------

apex.message.showPageSuccess("Test runs were suspended!");
// Set the timeout to hide the message after 5 seconds (5000 milliseconds)

// Set the timeout to hide the success message after 5 seconds (5000 milliseconds)
setTimeout(function() {
    $(".t-Alert--success").fadeOut();  // Targets and fades out the success message
}, 2000);  // Adjust the time as needed (e.g., 5000ms = 5 seconds)


// --------------------------------------------------------------------------------