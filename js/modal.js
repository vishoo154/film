// var modal = document.getElementById('myModal');


//var btn = document.getElementById("myBtn");


//var span = document.getElementsByClassName("close")[0];


//btn.onclick = function() {
//    modal.style.display = "block";
//}


//span.onclick = function() {
//    modal.style.display = "none";
//}


//window.onclick = function(event) {
//    if (event.target == modal) {
 //       modal.style.display = "none";
 //   }
//}


 //document.addEventListener("DOMContentLoaded", function () {
  //    var scrollbar = document.body.clientWidth - window.innerWidth + 'px';
 //     console.log(scrollbar);
  //    document.querySelector('[href="#openModal"]').addEventListener('click', function () {
  //      document.body.style.overflow = 'hidden';
   //     document.querySelector('#openModal').style.marginLeft = scrollbar;
   ////   });
    //  document.querySelector('[href="#close"]').addEventListener('click', function () {
   //     document.body.style.overflow = 'visible';
    //    document.querySelector('#openModal').style.marginLeft = '0px';
    //  });
    //  document.querySelector('[href="#openModa"]').addEventListener('click', function () {
    //    document.body.style.overflow = 'hidden';
    //    document.querySelector('#openModa').style.marginLeft = scrollbar1;
    //  });
     // document.querySelector('[href="#close"]').addEventListener('click', function () {
    //    document.body.style.overflow = 'visible';
     //   document.querySelector('#openModa').style.marginLeft = '0px';
    //  });
  //  });

  


  document.addEventListener("DOMContentLoaded", function () {
      var scrollbar = document.body.clientWidth - window.innerWidth + 'px';
      console.log(scrollbar);
      document.querySelector('[href="#openModal"]').addEventListener('click', function () {
        document.body.style.overflow = 'hidden';
        document.querySelector('#openModal').style.marginLeft = scrollbar;
      });
      document.querySelector('[href="#openModa"]').addEventListener('click', function () {
        document.body.style.overflow = 'hidden';
        document.querySelector('#openModa').style.marginLeft = scrollbar;
      });
      document.querySelector('[href="#close"]').addEventListener('click', function () {
        document.body.style.overflow = 'visible';
        document.querySelector('#openModal').style.marginLeft = '0px';
        document.querySelector('#openModa').style.marginLeft = '0px';
      });
    });

 	const form = document.getElementById('form');
  form.addEventListener('submit', getFormValue);
   function getFormValue(event) {
   event.preventDefault(); 
   const user_name = form.querySelector('[name="user_name"]'), //получаем поле name
   user_mail = form.querySelector('[name="user_mail"]'), //получаем поле age
   user_number = form.querySelector('[name="user_number"]'), //получаем поле terms
    user_password = form.querySelector('[name="user_password"]'), //получаем поле terms
    user_password1 = form.querySelector('[name="user_password1"]'), //получаем поле terms
   remember = form.querySelector('[name="remember"]'); //получаем поле plan
    }
    const data = {
    user_name: user_name.value,
    user_mail: user_mail.value,
   user_number: user_number.value,
    user_password: user_password.value,
    user_password1: user_password1.value,
    remember: remember.checked
};   

//let input = document.querySelector('input');
//console.log(input.value);