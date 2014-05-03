class @Eventable

  constructor: ->
    @events = {}

  on: (event, callback)->
    @events[event] = {callback: callback, context: @}

  trigger: (event, rest...)->
    evt = @events[event]
    evt.callback?.apply(evt.context, rest) if evt

