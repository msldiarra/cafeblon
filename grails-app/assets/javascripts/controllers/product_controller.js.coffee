Cafeblons.ProductController = Ember.ObjectController.extend

	quantity: [0,10,20,30,40,50]

	actions:

		addToBasket: () ->
			product = this.get('model')
			
			basket = this.store.getById('basket', 'fixture-0')
			if product.get('count') > 0 then basket.get('products').pushObject(product)

