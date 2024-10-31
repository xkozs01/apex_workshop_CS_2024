// define IG static Id
var gridView = apex.region("ig_test_case").widget().interactiveGrid("getViews").grid; 
var records = gridView.getSelectedRecords(); 
var testCaseInTestRun = ''; 

console.log("RunJenkinsJob start"); 
// reset validation flag
$s("P21_JENKINS_VAL_OK",1);
$s("P21_JENKINS_JOB_EXECUTED",0);

// reset warning flags
 $s("P21_SHOW_AD_HOC_CONFLICT_WARNING",0);

console.log("P21_JENKINS_VAL_OK:"+$v("P21_JENKINS_VAL_OK")); 
console.log("P21_JENKINS_JOB_EXECUTED:"+$v("P21_JENKINS_JOB_EXECUTED")); 
console.log("records.length:"+records.length); 
// putting together the list of selected tctr
if (records.length > 0) { 
    records.forEach((r) => {
            // test case number defined as PK for IG
            testCaseInTestRun += gridView.model.getRecordId(r) + ':';
            console.log("testCaseInTestRun--" + testCaseInTestRun);
            console.log("gridView.model.getRecordId(r)--" + gridView.model.getRecordId(r));
        });    
    console.log("Test case in test run Id:"+testCaseInTestRun); 
} else {
    // check, that tctr_id is a number (if no  test cases are assigned to test run, there is still a record exists with testCaseInTestRun = t1000, which causes unexpected errors)
          apex.message.alert("Please select the test case you want to execute."); 
          console.log("Setting validation flag to invalid");     
          $s("P21_JENKINS_VAL_OK",0);          
}

$s("P21_ADHOC_TCTRS",testCaseInTestRun); 


console.log("RunJenkinsJob end ");