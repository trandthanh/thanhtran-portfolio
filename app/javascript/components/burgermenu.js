const burgerMenu = () => {

  const opennm = document.getElementById("opennavmenu");
  if (opennm) {
    opennm.addEventListener("click", (e) => {
      const myNavMenu = document.getElementById("myNavMenu")
      if (myNavMenu.style.height === "100%") {
        myNavMenu.style.height = "0";
      }else{
        myNavMenu.style.height = "100%";
      }
    });
  }

  const closenm = document.querySelector(".closemenu");
  if (closenm) {
    closenm.addEventListener("click", (e) => {
      e.preventDefault();
      document.getElementById("myNavMenu").style.height = "0";
    });
  }

  const closeHistoire = document.querySelector(".closemenuhistoire");
  if (closeHistoire) {
    closeHistoire.addEventListener("click", (e) => {
      document.getElementById("myNavMenu").style.height = "0";
    })
  }
}

export { burgerMenu }
