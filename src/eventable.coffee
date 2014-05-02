class @Eventable
  constructor: ->
    @events = {}

  on: (event, callback)->
    @events[event] = callback
  
  trigger: (event)=>
    @events[event]?.apply(@, arguments)

