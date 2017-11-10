<!--
The root app
-->

<template lang='pug'>

#app
	header {{ name }}
	main

		{{#router}}
		router-view
		{{/router}}

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
# module.exports =
#   name:
#   components:
#   props: []
#   data: ->
#   computed:
#   watch:
#   methods:
</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus'>



</style>
