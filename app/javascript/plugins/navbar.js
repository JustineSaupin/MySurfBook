
 let menu = document.querySelector('.nav-menu');

    function showMenu() {
      console.log("menu log out");
      document.querySelector('.show-menu').innerHTML =
      `<%= link_to "Log out", destroy_user_session_path, method: :delete  %>`;
  };

  menu.addEventListener('click', showMenu);

 let share = document.querySelector('.nav-share');

  function shareMenu() {
    console.log("menu share");
    document.querySelector('.share-menu').innerHTML =
    `<div class="share">
      <div class="fb-share-button" data-href= "<%= request.url  %>" data-layout="button" data-size="large">
        <a target="_blank"
        href="https://www.facebook.com/sharer/sharer.php?u=<%=request.url%>%2F&amp;src=sdkpreparse"
        class="fb-xfbml-parse-ignore">Share on FB</a>
      </div>
      <a class="WA" href="whatsapp://send?text=<%= request.url %>">WhatsApp</a>
    </div>`;
  };

  share.addEventListener('click', shareMenu);
