$(function() {
  var search_list = $(".content");

  function appendpost(post) {
    if(post.user_sign_in && post.user_sign_in.id == post.user_id){
      var current_user = `<li>
                            <a href="/posts/${post.id}/edit" data-method="get" >編集</a>
                          </li>
                          <li>
                            <a href="/posts/${post.id}" data-method="delete" >削除</a>
                          </li>`
    } else {
      var current_user = ""
    }

    var html = `<div class="content_box" style="background-image: url(${post.image});">
                  <div class="more">
                    <span><img src="/assets/arrow_top.png"></span>
                    <ul class="more_list">
                      <li>
                        <a href="/posts/${post.id}" data-method="get" >詳細</a>
                      </li>
                      ${current_user}
                    </ul>
                  </div>
                  <p>${post.title}</p><br>
                  <span class="name">
                    <a href="/users/${post.user_id}">
                      <span>投稿者</span>${post.nickname}
                    </a>
                  </span>
                </div>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
    var html = `<div class='name'>${ msg }</div>`
    search_list.append(html);
  }
  $(".text-field").on("keyup", function() {
    var input = $(".text-field").val();
    console.log(input);
    $.ajax({
      type: 'GET',
      url: '/posts/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(posts) {
      search_list.empty();
      if (posts.length !== 0) {
        posts.forEach(function(post){
          appendpost(post);
        });
      }
      else {
        appendErrMsgToHTML("一致する投稿がありません");
      }
    })
    .fail(function() {
      alert('error');
    });
  });
});