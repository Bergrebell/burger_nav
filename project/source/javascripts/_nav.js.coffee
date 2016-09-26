$(document).ready(() ->
  @offset = -99
  widthChangex =  (mq) =>
    if mq.matches
      @offset = -72
    else
      @offset = -99


  if matchMedia
    mq = window.matchMedia("(max-width: 768px)")
    mq.addListener(widthChangex)
    widthChangex(mq)

  $('.js-nav a[href*="#"]').bind('click', (e) =>
    $(window).scrollTo($('#'+$(this).attr('href').split('#')[1]),300,{
      offset: @offset
    })

  )
)
