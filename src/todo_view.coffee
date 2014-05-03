class @TodoView

  constructor: ({@todo, @el})->
    @el ?= $("<li></li>")

  template: ->
    """
    <div class="view">
      <input class="toggle" type="checkbox" checked>
      <label>#{@todo.title}</label>
      <button class="destroy">&nbsp;</button>
    </div>
    <input class="edit" value="Create a TodoMVC template">
    """

  render: ->
    @el.html( @template() )
    @
