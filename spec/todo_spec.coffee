describe 'Todo', ->

  it 'defaults to incomplete', ->
    todo = new Todo(title: 'test')
    expect(todo.completed).toEqual(false)

  it 'allows completed on create', ->
    todo = new Todo(title: 'test', completed: true)
    expect(todo.completed).toEqual(true)
