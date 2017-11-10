###
Init the Vue Router
###

# Deps
Vue = require 'vue'
VueRouter = require('vue-router').default
routes = require './routes'

# Tell Vue that we're using the Vue router
Vue.use VueRouter

# Export the Router instance that will be used throught the app
router = new VueRouter
	base: '/'
	mode: 'history'
	routes: routes

# Export the route
module.exports = router
