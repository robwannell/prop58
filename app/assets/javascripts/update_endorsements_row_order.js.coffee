jQuery ->
		
  if $('#sortable').length > 0
    table_width = $('#sortable').width()
    cells = $('.table').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $('.table td').css('width', desired_width)

    $('#sortable').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'

      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        item_id = ui.item.data('item-id')
        console.log(item_id)
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        $.ajax(
          type: 'POST'
          url: '/endorsements/update_row_order'
          dataType: 'json'
          data: { endorsement: {endorsement_id: item_id, row_order_position: position } }
        )
    )
				
	jQuery ->
	  if $('#sortable2').length > 0
	    table_width = $('#sortable2').width()
	    cells = $('.table').find('tr')[0].cells.length
	    desired_width = table_width / cells + 'px'
	    $('.table td').css('width', desired_width)

	    $('#sortable2').sortable(
	      axis: 'y'
	      items: '.item'
	      cursor: 'move'

	      sort: (e, ui) ->
	        ui.item.addClass('active-item-shadow')
	      stop: (e, ui) ->
	        ui.item.removeClass('active-item-shadow')
	        # highlight the row on drop to indicate an update
	        ui.item.children('td').effect('highlight', {}, 1000)
	      update: (e, ui) ->
	        item_id = ui.item.data('item-id')
	        console.log(item_id)
	        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
	        $.ajax(
	          type: 'POST'
	          url: '/endorsements/update_row_order'
	          dataType: 'json'
	          data: { endorsement: {endorsement_id: item_id, row_order_position: position } }
	        )
	    )
					
	jQuery ->
	  if $('#sortable3').length > 0
	    table_width = $('#sortable3').width()
	    cells = $('.table').find('tr')[0].cells.length
	    desired_width = table_width / cells + 'px'
	    $('.table td').css('width', desired_width)

	    $('#sortable3').sortable(
	      axis: 'y'
	      items: '.item'
	      cursor: 'move'

	      sort: (e, ui) ->
	        ui.item.addClass('active-item-shadow')
	      stop: (e, ui) ->
	        ui.item.removeClass('active-item-shadow')
	        # highlight the row on drop to indicate an update
	        ui.item.children('td').effect('highlight', {}, 1000)
	      update: (e, ui) ->
	        item_id = ui.item.data('item-id')
	        console.log(item_id)
	        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
	        $.ajax(
	          type: 'POST'
	          url: '/endorsements/update_row_order'
	          dataType: 'json'
	          data: { endorsement: {endorsement_id: item_id, row_order_position: position } }
	        )
	    )
					
		jQuery ->
		  if $('#sortable4').length > 0
		    table_width = $('#sortable4').width()
		    cells = $('.table').find('tr')[0].cells.length
		    desired_width = table_width / cells + 'px'
		    $('.table td').css('width', desired_width)

		    $('#sortable4').sortable(
		      axis: 'y'
		      items: '.item'
		      cursor: 'move'

		      sort: (e, ui) ->
		        ui.item.addClass('active-item-shadow')
		      stop: (e, ui) ->
		        ui.item.removeClass('active-item-shadow')
		        # highlight the row on drop to indicate an update
		        ui.item.children('td').effect('highlight', {}, 1000)
		      update: (e, ui) ->
		        item_id = ui.item.data('item-id')
		        console.log(item_id)
		        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
		        $.ajax(
		          type: 'POST'
		          url: '/endorsements/update_row_order'
		          dataType: 'json'
		          data: { endorsement: {endorsement_id: item_id, row_order_position: position } }
		        )
		    )
						
				jQuery ->
				  if $('#sortable5').length > 0
				    table_width = $('#sortable5').width()
				    cells = $('.table').find('tr')[0].cells.length
				    desired_width = table_width / cells + 'px'
				    $('.table td').css('width', desired_width)

				    $('#sortable5').sortable(
				      axis: 'y'
				      items: '.item'
				      cursor: 'move'

				      sort: (e, ui) ->
				        ui.item.addClass('active-item-shadow')
				      stop: (e, ui) ->
				        ui.item.removeClass('active-item-shadow')
				        # highlight the row on drop to indicate an update
				        ui.item.children('td').effect('highlight', {}, 1000)
				      update: (e, ui) ->
				        item_id = ui.item.data('item-id')
				        console.log(item_id)
				        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
				        $.ajax(
				          type: 'POST'
				          url: '/endorsements/update_row_order'
				          dataType: 'json'
				          data: { endorsement: {endorsement_id: item_id, row_order_position: position } }
				        )
				    )