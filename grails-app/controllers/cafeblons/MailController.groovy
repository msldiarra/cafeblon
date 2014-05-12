package cafeblons

class MailController {
	
	def mailService

    def send(){

		mailService.sendMail {
		   to "msl.diarra@gmail.com"
		   from "cafeblon@gmail.com"
		   subject "[cafeblon] " + params.prospect_email + " insterested in Cafeblon"
		   body 'Prospect email : ' + params.prospect_email
		}

		log.error "sending email..."

		render ""
    }
}
