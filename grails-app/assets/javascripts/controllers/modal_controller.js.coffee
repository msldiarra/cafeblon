Cafeblons.ModalController = Ember.ObjectController.extend

  actions:

    click: () ->
      return false

    close: () ->
      return this.send 'closeModal'

    send: () ->
      total = this.get('totalWithDelivery')
      products = new Array()
      products.push(product) for product in @get('products').get('content')

      jQuery.post "/mail/send/",
        {phone: jQuery("#phone").val(), name: jQuery("#name").val(), address: jQuery("#adress").val(), products: JSON.stringify(products), total:total}
      .done () ->
          jQuery( "#success" ).html("")
          jQuery( "#success" ).html("Merci de votre confiance! Votre commande a bien été pris en compte. Vous serez livré à l'adresse indiqué sous 4 jours ouvrés. ")
          jQuery( "#success" ).fadeOut(10000)
      .fail () -> console.log("failed")
      return this.send 'closeModal'