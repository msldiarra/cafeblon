Cafeblons.Basket = DS.Model.extend
    name: DS.attr "string"
    products: DS.hasMany Cafeblons.Product
    total: ( () -> 
    	res = 0 
    	res += product.get('total') for product in @get('products').get('content')
    	return res ).property 'products.@each.count'
    totalWithDelivery: ( () ->
      res = 0
      res += product.get('total') for product in @get('products').get('content')
      return res + 1000 ).property 'products.@each.count'
    		

