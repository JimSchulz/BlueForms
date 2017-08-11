if (document.getElementById('pbid-searchTerm').options.selectedIndex == 0) {
  alert("Please select a term",{flash:true}); 
  return;
}

$Block02.$visible = true;
$StudentGrid.$load({clearCache:true});