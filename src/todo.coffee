class @Todo

  constructor: ({@title, @completed})->
    @completed ?= false
