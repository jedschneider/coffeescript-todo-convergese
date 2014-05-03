describe 'Eventable', ->
  eventable = spy = null

  beforeEach ->
    eventable = new Eventable()

  describe 'without a callback defined', ->

    it 'no-ops a triggered event', ->
      eventable = new Eventable()
      eventable.trigger('what')
      # expectation?

  describe 'with a callback defined', ->

    beforeEach ->
      spy = jasmine.createSpy('callback')
      eventable.on('what', spy)


    it 'can store an event with a callback', ->
      eventable.trigger('what')
      expect( spy ).toHaveBeenCalled()

    it 'calls without the event type', ->
      eventable.trigger('what', 'foo', 'bar')
      expect( spy ).toHaveBeenCalledWith('foo', 'bar')
