@Lunar.module 'Videos.List', (List, App) ->
  class List.Video extends App.Views.ItemView
    template: 'videos/list/templates/_video'
    tagName: 'li'

  class List.Videos extends App.Views.CollectionView
    childView: List.Video
    className: 'feed-list'
    tagName: 'ul'

    onShow: ->
      @$el.find('iframe').unwrap()
      @$el.css('overflow', 'auto')
      $("#main").css('overflow', 'initial')
      @$el.prepend("<script async src='//platform.vine.co/static/scripts/embed.js' charset='utf-8'></script>")

    onDestroy: ->
      $('#main').css('overflow', 'auto')
