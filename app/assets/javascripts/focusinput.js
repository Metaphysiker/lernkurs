console.log("Focus Input loaded!");

$("body").on("click", "input", function() {
  $( this ).focus();
  alert("hey!");
});
