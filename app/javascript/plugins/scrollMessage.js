export default function scrollMessage(){
 const messageBtn = document.querySelector("a#pills-profile-tab");
 const mapBtn = document.querySelector("a#pills-contact-tab");

  if(messageBtn){

    messageBtn.addEventListener('click',e => {
      setTimeout(() => {

        let mess = document.querySelector('#messages');
        mess.style.transition = "all 1s ease";
        let bottom = mess.lastElementChild.getBoundingClientRect().bottom;
        let y =  mess.lastElementChild.getBoundingClientRect().y;
        let sum = bottom + y;
          window.scrollTo({left: 0, top: sum, behavior: "smooth"})
      }, 500)
    })
  }

  if (mapBtn){
     mapBtn.addEventListener('click',e => {
      setTimeout(() => {
        let map = document.querySelector('#map');
        map.style.transition = "all 1s ease";
        let bottom = map.lastElementChild.getBoundingClientRect().bottom;
        let y =  map.lastElementChild.getBoundingClientRect().y;
        let sum = bottom + y;
          window.scrollTo({left: 0, top: sum, behavior: "smooth"})
      }, 500)
    })
  }

}

