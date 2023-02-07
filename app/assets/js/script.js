$(document).ready(function () {
    const hamburger = document.querySelector('.hamburger');
    const mainNav = document.querySelector('.nav-holder');
    const logo = document.querySelector('.logo');
    const body = document.querySelector('.index-body');
    let open = false;
  
    hamburger.addEventListener("click", () => {
      // if (!open) {
      //   hamburger.classList.add("open-hamburger")
      //   mainNav.classList.add("open-nav-holder");
      //   logo.classList.add("open-logo");
      //   open = true;
      // } else {
      //   hamburger.classList.remove("open-hamburger")
      //   mainNav.classList.remove("open-nav-holder")
      //   logo.classList.remove("open-logo")
      //   open = false;
      // }

      hamburger.classList.toggle('open-hamburger');
      mainNav.classList.toggle('open-nav-holder');
      logo.classList.toggle("open-logo");
    })

    body.addEventListener('click', (event) => {
      if(mainNav.contains(event.target) && mainNav.classList.contains('open-nav-holder')) {
        hamburger.classList.toggle('open-hamburger');
        mainNav.classList.toggle('open-nav-holder');
        logo.classList.toggle("open-logo");
      }
    })
  });