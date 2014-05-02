class @Todo

  constructor: (options)->
    @title = options.title
    if _.has(options, 'completed')
      @completed = options.completed
    else
      @completed = false
