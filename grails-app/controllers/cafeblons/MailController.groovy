package cafeblons

class MailController {

	def mailService

    def send(){

		mailService.sendMail {
           async true
		   to "cafebon@yahoo.com"
		   from "cafeblon@yahoo.com"
		   subject "[cafeblon] New Order"
           body(view:'/emails/order', model: [name:params.name, phone:params.phone, adress:params.adress, products: params.products, total: params.total])
		}

		render ""
    }
}
