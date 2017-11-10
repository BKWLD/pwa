###
Webpack has issues generating css source maps with scss files that are in the
same directory as entry js.  So this entry file dials out to modules in sub
directories to work around this.
###

# Plugins that should be made available globally
# require('fastclick').attach(document.body);

# # Init Vue
Vue = require 'vue'

# # Init VueX store
# Vuex = require 'vuex'
# Vue.use(Vuex)
# store = require './store'

{{#router}}
# Init Vue routing
router = require './routing/router'
# { sync } = require 'vuex-router-sync'
# sync store, router
{{/router}}

# Register shared components
# require './styles/index.styl'
# require './components/shared'

# # Tell axios to look like an AJAX request
# # http://yo.bkwld.com/2F3X2J3V1L2u
# require('axios').defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest'

# Create the root instance of the app
new Vue
  el: '#app'
	{{#router}}
  router: router
  {{/router}}
  render: (create) -> create require './layout/app'
