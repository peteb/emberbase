#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require ember-simple-auth
#= require ember-simple-auth-devise
#= require_self
#= require emberbase

# for more details see: http://emberjs.com/guides/application/
window.Emberbase = Ember.Application.create()

window.ENV = window.ENV || {};
window.ENV['simple-auth'] = {
  authorizer: 'simple-auth-authorizer:devise'
}