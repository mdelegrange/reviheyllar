function mobileNavigation() {
  const mobileNav = document.querySelector(".mobile-navbar");
  const mobileNavContent = document.querySelector(".mobile-navbar > div");
  const arrows = document.getElementById("arrows");
  if (arrows) {
    arrows.addEventListener("click", function(event) {
      mobileNav.classList.toggle("m-t-neg10px");
      mobileNavContent.classList.toggle("m-t-neg200pc");
      if (mobileNav.classList.contains("m-t-neg10px")) {
        event.currentTarget.firstChild.classList.remove("fa-arrow-up");
        event.currentTarget.firstChild.classList.add("fa-arrow-down");
      } else {
        event.currentTarget.firstChild.classList.remove("fa-arrow-down");
        event.currentTarget.firstChild.classList.add("fa-arrow-up");
      }
    })
  }
}
mobileNavigation();
