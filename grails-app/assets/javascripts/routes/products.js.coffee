Cafeblons.ProductsRoute = Ember.Route.extend(
  
  model: ->
    this.store.find('Product')

  actions:
  	
  	closeModal: () -> return this.disconnectOutlet(outlet: 'modal', parentView: 'application') 

  	openModal: (modalName, model) -> 
  		this.controllerFor(modalName).set 'model', model
  		return this.render modalName, {into: 'application',outlet: 'modal'}

	

)