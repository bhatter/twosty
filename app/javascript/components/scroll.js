const scroll = () => {
  const arrowsDown = document.querySelectorAll(".scroll_down_btn");
  const sections = document.querySelectorAll(".section");
  let conteur = 0;

  arrowsDown.forEach((arrowDown,index) => {
    arrowDown.addEventListener("click", event => {
      conteur = conteur - 100
      sections[index+1].style.transform = "translateY(" + conteur + "vh)";
      sections[index+1].style.opacity = 1;
      sections[index].style.opacity = 0;
    });
  });

  const arrowsUp = document.querySelectorAll(".scroll_up_btn");

  arrowsUp.forEach((arrowUp,index) => {
    arrowUp.addEventListener("click", event => {
      conteur = conteur + 100
      sections[index+1].style.transform = "translateY(" + conteur + "vh)";
      sections[index].style.opacity = 1;
      sections[index+1].style.opacity = 0;
    });
  });

  export { scroll };
