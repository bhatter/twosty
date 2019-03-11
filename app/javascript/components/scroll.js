const scroll = () => {
  const arrowsDown = document.querySelectorAll(".scroll_down_btn");
  const arrowsUp = document.querySelectorAll(".scroll_up_btn");
  const sections = document.querySelectorAll(".section");
  let counter = 0;

  arrowsDown.forEach((arrowDown,index) => {
    arrowDown.addEventListener("click", event => {
      console.log(counter);
      counter = counter - 100;
      sections[index+1].style.transform = "translateY(" + counter + "vh)";
      sections[index+1].style.opacity = 1;
      sections[index].style.opacity = 0;
    });
  });

  arrowsUp.forEach((arrowUp,index) => {
    arrowUp.addEventListener("click", event => {
      counter = counter + 100;
      sections[index+1].style.transform = "translateY(" + counter + "vh)";
      sections[index].style.opacity = 1;
      sections[index+1].style.opacity = 0;
    });
  });
};

export { scroll };
