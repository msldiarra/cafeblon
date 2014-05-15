Cafeblons.ProductRoute = Ember.Route.extend(
  
  model: (params) ->
    this.store.find('Product', params.product_id)

  actions:

  	test: () -> console.log "testing" 
)