title = ""
items = []

add_items = (feed) ->
    store_items feed
    append_feed()

store_items = (feed) ->
    $(".loading").remove()
    title = feed.title
    items = feed.items

append_feed = ->
    $(document.body).html $(window.TEMPLATE['list.jade']({
        title: title,
        items: items
    }))

window.onload = ->
    console.log('Parsing feed') 
    $.getFeed
        url: "feed.xml"
        success: add_items 
    $(".list li").live "click", ->
        item_title = $(this).text()
        for item in items
            if item.title == item_title
                $(document.body).children().remove()
                $(document.body).append $(window.TEMPLATE['detail.jade']({
                    title: item_title
                }))
                $(".content").html(item.description)
        console.log title
    $(".navitems .back").live "click", ->
       append_feed()
