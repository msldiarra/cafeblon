# For more information see: http://emberjs.com/guides/routing/

Cafeblons.Router.map ->
   @resource "products", path: "/"
   @resource 'product', path: 'product/:product_id' 
   @resource 'basket'		
   # @resource "product", path: "/product/:id"

 

