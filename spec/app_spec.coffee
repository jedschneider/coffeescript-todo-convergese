describe 'App', ->

  describe 'on init', ->
    app = null

    beforeEach ->
      app = new App("")

    it 'creates a top level element', ->
      expect( app.el instanceof jQuery ).toEqual(true)


    describe 'handleUserInput', ->

      describe 'with invalid event data', ->

        noOp = ->
          where: (event)->
            spyOn(app.todos, 'add')
            app.handleUserInput(event)
            expect(app.todos.add).not.toHaveBeenCalled()

        it 'guards against empty input', ->
          noOp().where( which: 13, target: {value: ""} )

        it 'guards against blank input', ->
          noOp().where( which: 13, target: {value: "        "} )

        it 'gurards against keystrokes that do not mean Enter', ->
          noOp().where( which: 11, target: {value: "test"} )

      describe 'with valid event data', ->

        event = null

        beforeEach ->
          event = {which: 13, target: {value: "test"}}

        it 'creates a new todo when the event is valid', ->
            spyOn(app.todos, 'add')
            app.handleUserInput(event)
            expect(app.todos.add).toHaveBeenCalled()

