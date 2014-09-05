# For more information see: http://emberjs.com/guides/routing/

Emberbase.Router.map ->
  @resource 'news', ->
    @route('item')
    
  @route('login')

