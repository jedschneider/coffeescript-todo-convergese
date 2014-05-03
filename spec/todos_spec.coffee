describe 'Todos', ->

  it 'defaults a collection of items', ->
    todos = new Todos()
    expect( todos.items ).toEqual( [] )


  describe '#add', ->

    it 'dispatches an add event', ->
      todos = new Todos()
      spyOn(todos, 'trigger')
      todos.add( todo = new Todo(title: 'test') )
      expect( todos.trigger ).toHaveBeenCalledWith( 'add', todo )
