// StuHomeCityButton - onClick

var homeCity = document.getElementById('pbid-StuHomeCityCityName').value;

if (homeCity == '') {
	alert("Please enter a home city.",{flash:true});
	return;
}

$StuHomeCity.$load({clearCache:true});