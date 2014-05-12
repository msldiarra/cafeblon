Cafeblons.ProductsController = Ember.ArrayController.extend

	basket: null

	# to be tried later to group by category and conserve objectController actions on products
	# coffeeByCru: ( ()  -> 
	   
	# 		   result = []

	# 		   @get('content').forEach (item) ->
	# 		   		hasCru = result.findBy 'cru', item.get('cru')
	# 		   		if(!hasCru)
	# 		   			result.pushObject Ember.Object.create
	# 			            cru: item.get('cru'),
	# 			            contents: []
				         
	# 			    result.findBy('cru', item.get('cru')).get('contents').pushObject(item);		

	# 		   return result;

	# 		).property('content.[]')

	init: () ->
		this.basket = this.store.createRecord('basket', {name : 'coffee'})
		# this.basket.addObserver 'total', ( () -> 
		# 	# obj = this
		# 	this.get('products').forEach (item) -> 
		# 		if item.get('count') == 0 then console.log this.get('products')
			
		# 	)
		
		    

