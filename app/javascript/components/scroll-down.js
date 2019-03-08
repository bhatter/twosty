const scrollDown = () => {
  const scroll1 = document.querySelector("#first_scroll_btn");
  const scroll2 = document.querySelector("#second_scroll_btn");
  const sec1 = document.querySelector("#section_one");
  const sec2 = document.querySelector("#section_two");
  const sec3 = document.querySelector("#section_tree");

  scroll1.addEventListener("click", e => {
    sec1.style.transform = `translateY(-100vh)`;
    sec1.style.opacity = 0;

    sec2.style.transform = `translateY(-20vh)`;
    sec2.style.opacity = 1;
  });

  scroll2.addEventListener("click", e => {
    sec2.style.transform = `translateY(-100vh)`;
    sec2.style.opacity = 0;

    sec3.style.transform = `translateY(-20vh)`;
    sec3.style.opacity = 1;
  });
};

export { scrollDown };
