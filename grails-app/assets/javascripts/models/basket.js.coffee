Cafeblons.Basket = DS.Model.extend
    name: DS.attr "string"
    products: DS.hasMany Cafeblons.Product
    total: ( () -> 
    	res = 0 
    	res += product.get('total') for product in @get('products').get('content')
    	return res ).property 'products.@each.count'
    totalWithDelivery: ( () ->
      delivery = 0
      if @get('products').get('content').get('count') > 0 then delivery = 1000
      res = 0
      res += product.get('total') for product in @get('products').get('content')
      return res + delivery ).property 'products.@each.count'
    		

