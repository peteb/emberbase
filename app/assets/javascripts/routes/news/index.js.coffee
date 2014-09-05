Emberbase.NewsIndexRoute = Ember.Route.extend SimpleAuth.AuthenticatedRouteMixin,
  model: ->
    $.ajax('/news')