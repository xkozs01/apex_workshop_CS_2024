console.log("Start showPageSuccess");
console.log("P21_JENKINS_JOB_EXECUTED:"+$v("P21_JENKINS_JOB_EXECUTED") );
console.log("P21_GIT_REPO:"+$v("P21_GIT_REPO"));
 console.log("P21_SHOW_AD_HOC_CONFLICT_WARNING:"+$v("P21_SHOW_AD_HOC_CONFLICT_WARNING"));
if ($v("P21_JENKINS_JOB_EXECUTED") == 1) {
console.log("Jenkins job executed = 1");
apex.message.showPageSuccess("Job was executed in Jenkins for test case in test run "+$v("P21_TEST_CASE_IN_TEST_RUN_ID"));
}
console.log("P21_FORCE_AD_HOC:"+$v("P21_FORCE_AD_HOC") );
