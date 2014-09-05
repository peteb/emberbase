# For more information see: http://emberjs.com/guides/routing/

Emberbase.Router.map ->
  @resource 'news', ->
    @route('item', path: '/:id')
    
  @route('login')

