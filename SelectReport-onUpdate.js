// SelectReport - onUpdate

var rpt = document.getElementById('pbid-SelectReport');

// Show chosen report
if (rpt.options[rpt.selectedIndex].innerHTML == 'Select a Report') {
  hideAllForms();
}
else if (rpt.options[rpt.selectedIndex].innerHTML == 'Graduate Counts') {
  hideAllForms();
  $GradCounts.$load({clearCache:true});
  $GraduateCounts.$visible = true;
}
else if (rpt.options[rpt.selectedIndex].innerHTML == 'Students with a Home City of') {
  hideAllForms();
  $StuHomeCityOf.$visible = true;
}

function hideAllForms() {
  $GraduateCounts.$visible = false;
  $StuHomeCityOf.$visible = false;
}
