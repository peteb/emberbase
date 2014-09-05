Emberbase.NewsItemRoute = Ember.Route.extend SimpleAuth.AuthenticatedRouteMixin,
  model: (params) ->
    $.ajax("/news/#{params.id}")