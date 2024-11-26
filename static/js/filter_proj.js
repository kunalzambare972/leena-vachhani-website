// Filter projects based on status
function filterProjects(status) {
  var items = document.querySelectorAll(".project-item");
  items.forEach(function (item) {
    // If 'all' is selected, show all items
    if (status === "all") {
      item.style.display = "block";
    }
    // Show only ongoing or completed items based on status
    else if (item.getAttribute("data-status") === status) {
      item.style.display = "block";
    }
    // Hide other items
    else {
      item.style.display = "none";
    }
  });
}
