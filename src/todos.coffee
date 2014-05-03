class @Todos extends Eventable

  constructor: (@items=[])->
    super

  add: (todo)->
    @items.push(todo)
    @trigger('add', todo)
