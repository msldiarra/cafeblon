package cafeblons

class MailController {
	
	def mailService

    def send(){

		mailService.sendMail {
		   to "cafeblon@yahoo.com"
		   from "cafeblon@yahoo.com"
		   subject "[cafeblon] " + params.prospect_email + " insterested in Cafeblon"
		   body 'Prospect email : ' + params.prospect_email
		}

		render ""
    }
}
