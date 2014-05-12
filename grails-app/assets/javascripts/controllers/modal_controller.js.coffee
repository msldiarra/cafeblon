Cafeblons.ModalController = Ember.ObjectController.extend

	actions: 
		close: () ->
			return this.send 'closeModal'

		send: () -> 
			jQuery.post "/cafeblons/mail/send/",  
				prospect_email: jQuery("#prospect_email").val(), 
				() -> 
					jQuery( "#success" ).html("")
					jQuery( "#success" ).html( "Votre adresse email a bien été enregistré. Merci de votre confiance" )
					jQuery( "#success" ).fadeOut(5000)
			return this.send 'closeModal'
    
  
