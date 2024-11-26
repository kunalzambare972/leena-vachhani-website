function toggleCareerContent(section) {
  // Hide all career items
  const allCareerItems = document.querySelectorAll(".career-item");
  allCareerItems.forEach((item) => (item.style.display = "none"));

  // Show the clicked section
  const selectedSection = document.getElementById(section);
  if (selectedSection) {
    selectedSection.style.display = "block";
  }
}
