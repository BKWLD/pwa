###
Add Bukwild conventions to the base webpack conf
###

# Utility method to replace a module rule
replaceRule = (config, test, replacement) ->
  i = config.module.rules.findIndex (rule) -> rule.test == test
  config.module.rules[i] = replacement

# Return a function that maps the config
module.exports = (conf) ->

  # Use a coffee entry file
  conf.entry.app = './src/boot.coffee'

  # Add coffeescript to the list of extensions
  conf.resolve.extensions.push '.coffee'

  # Add Vue alias
  conf.resolve.alias['vue$'] = 'vue/dist/vue.common.js'

  # Get Vue loader instance
  vueLoader = conf.module.rules.find (rule) -> rule.loader == 'vue-loader'

  # Export common JS friendly modules
  vueLoader.options.esModule = false

  # Set the doctype to html so that boolean attributes work as expected
  # https://pugjs.org/language/attributes.html#boolean-attributes
  # https://github.com/vuejs/vue-loader/issues/55#issuecomment-272837311
  vueLoader.options.template = doctype: 'html'

  # Add coffeescript loader
  conf.module.rules.push { test: /\.coffee$/, use: 'coffee-loader' }

  # Return the final conf
  return conf
