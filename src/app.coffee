class @App

  constructor: (el)->
    @el = $(el)
    @userInput = @el.find('#new-todo')
    # @addListeners()

  # addListeners: ->
    # @userInput.on('keyup', @handleUserInput)

  # handleUserInput: (event)->
    # return unless event.which == 13
    # task = event.target.value.trim()
    # return if task.length < 1
    # @createNewTodo(task)
