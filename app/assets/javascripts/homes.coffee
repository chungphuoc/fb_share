$(document).ready ->
  $('a.share-facebook').click (e) ->
    e.preventDefault()
    title = 'Share to facebook'
    url = $(e.target).data('url')
    caption = 'sharefacebook.com'
    description = 'Share facebook using FB ui'
    FB.ui {
      method: 'feed'
      name: title
      link: url
      picture: 'http://www.stafco.com/images/job-sharing.jpg' #image_url
      caption: caption
      hashtag: 'test'
      description: description
      message: title
    }, (response) ->
      if response and response.post_id
        alert 'FB Post ID: ' + response.post_id
      else
        alert 'Post not share'