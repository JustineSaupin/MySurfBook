
 let menu = document.querySelector('.nav-menu');

    function showMenu() {
      console.log("menu log out");
      show = document.querySelector('.show-menu');
      display(show);
  };

  menu.addEventListener('click', showMenu);

 let share = document.querySelector('.nav-share');

  function shareMenu() {
    console.log("menu share");
    shareOption = document.querySelector('.share-menu');
    display(shareOption);

  };

  share.addEventListener('click', shareMenu);
