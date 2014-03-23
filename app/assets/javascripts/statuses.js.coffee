$(document).on 'page:change', ->
	$('.status').hover (event) ->
		$(@).toggleClass("hover")
