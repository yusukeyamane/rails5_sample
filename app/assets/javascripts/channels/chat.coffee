App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['message']


  comment: (message)->
    @perform 'comment', message: message

$ ->
 $('#submit').on ('click'), (event) ->
   App.chat.comment $('#comment').val()
   $('#comment').val('')
   event.preventDefault()
