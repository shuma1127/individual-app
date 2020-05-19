// $(function() {
//   var search_list = $(".content");

//   function appendPost(post) {
//     if(post.user_sign_in && post.user_sign_in.id == post.user_id){
//       var current_user = `<li>
//                             <a href="/posts/${post.id}/edit" data-method="get" >編集</a>
//                           </li>
//                           <li>
//                             <a href="/posts/${post.id}" data-method="delete" >削除</a>
//                           </li>`
//     } else {
//       var current_user = ""
//     }

//     var html = `
//             <div class contents>
//               <div class= "content">
//                 <div class="content__box">
//                   <div class="name">
//                     <a href="/users/${post.user_id}">
//                     <span>投稿者:</span>
//                     ${post.nickname}
//                     </a>
//                   </div>
//                   <div class="title">
//                     <span>Title：</span>
//                     ${post.title}
//                   </div>
//                   <div class="place">
//                     <span>Place：</span>
//                     ${post.place}
//                   </div>
//                   <div class="A word">
//                     <span>A word</span>
//                     ${post.word}
//                   </div>
//                 </div>
//               </div>
//             </div>`

            // <div class="image">
            // <a data-lightbox="image" href="/uploads/image/src/44/uuu.jpg"><img class="image__post" src="/uploads/image/src/44/uuu.jpg">
            // </a><a data-lightbox="image" href="/uploads/image/src/45/%E3%83%8F%E3%82%9A%E3%82%B9%E3%82%BF.jpg"><img class="image__post" src="/uploads/image/src/45/%E3%83%8F%E3%82%9A%E3%82%B9%E3%82%BF.jpg">
            // </a></div>
                    
//     search_list.append(html);
//   }

//   function appendErrMsgToHTML(msg) {
//     var html = `<div class='name'>${ msg }</div>`
//     search_list.append(html);
//   }
  
//   $(".text-field").on("keyup", function() {
//     var input = $(".text-field").val();
//     $.ajax({
//       type: 'GET',
//       url: '/posts/search',
//       data: { keyword: input },
//       dataType: 'json'
//     })
//     .done(function(posts){
//       search_list.empty();
//       if (posts.length !== 0) {
//         posts.forEach(function(post){
//           appendPost(post);
//         });
//       }
//       else {
//         appendErrMsgToHTML("一致する投稿がありません");
//       }
//     })
//     .fail(function() {
//       alert('error');
//     });
//   });
// });