describe 'App', ->

  it 'should be true', ->
    expect(true).toBe(true)

  describe 'Todo', ->

    # it 'defaults to incomplete', ->
      # todo = new Todo(title: 'test')
      # expect(todo.completed).toEqual(false)

    # it 'allows completed on create', ->
      # todo = new Todo(title: 'test', completed: true)
      # expect(todo.completed).toEqual(true)

    # it 'allows an object without the keys', ->
      # todo = new Todo()
      # expect(todo.title).toEqual(null)

  describe 'AppView', ->
    app = event = null

    beforeEach ->
      app = new App("")

    describe 'handleUserInput', ->


      describe 'with valid input', ->
        event = {
          target: {
            value: "test"
          }
        }

        describe 'when I type', ->

          it 'no-ops', ->
            event.which = 65
            spyOn(app, 'createNewTodo')
            app.handleUserInput(event)
            expect(app.createNewTodo).not.toHaveBeenCalled()

        # describe 'when I press enter', ->

          # it 'creates a todo', ->
            # event.which = 13
            # spyOn(app, 'createNewTodo')
            # app.handleUserInput(event)
            # expect(app.createNewTodo).toHaveBeenCalled()

          # describe 'and I insert spaces', ->

            # it 'trims them', ->
              # event.target.value = "   test"
              # spy = spyOn(app, 'createNewTodo')
              # app.handleUserInput(event)
              # expect(spy).toHaveBeenCalledWith('test')

      # describe 'with invalid input', ->

        # isNoOp = ->
          # onEvent : (event)->
            # console.log "event is #{JSON.stringify(event)}"
            # spyOn(app, 'createNewTodo')
            # app.handleUserInput(event)
            # expect(app.createNewTodo).not.toHaveBeenCalled()


        # describe 'when value is blank', ->

          # it 'no-ops', ->
            # isNoOp().onEvent(event: {which: 13, target: {value: ""}})
            # # isNoOp().where(_.extend(event, target: {value: ""}))

        # describe 'when the value is just spaces', ->

          # it 'no-ops', ->
            # isNoOp().onEvent
              # event:
                # which: 13,
                # target:
                  # value: "       "

          # # it 'no-ops', ->
            # # isNoOp().onEvent(
              # # {event:
                # # which: 13,
                # # target: {
                  # # value: "       "
                # # }
              # # }
            # # )


