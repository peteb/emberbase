Emberbase.LoginController = Ember.Controller.extend SimpleAuth.LoginControllerMixin,
  authenticator: 'simple-auth-authenticator:devise'
  
  actions:
    authenticate: ->
      @_super().then null, ->
        alert('You need to fix stuff')