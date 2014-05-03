# the App class is effectively a controller for handling user input
class @App

  constructor: (el)->
    @el = $(el)
    @userInput = @el.find('#new-todo')
    @list = @el.find('#todo-list')
    @todos = new Todos()
    @addListeners()

  addListeners: ->
    @userInput.on('keyup', @handleUserInput)
    @todos.on('add', @addOne)

  handleUserInput: ({which, target: {value}})=>
    return unless which == 13
    return unless ( task = value.trim() ).length > 1
    todo = new Todo(title: task)
    @todos.add(todo)

  addOne: (todo)=>
    view = new TodoView(todo: todo)
    @list.append(view.render().el)
