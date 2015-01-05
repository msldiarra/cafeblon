package cafeblons

import groovy.json.JsonSlurper
import org.apache.log4j.Logger

class MailController {

	def mailService

    def send(){

        def slurper = new JsonSlurper()
        def products = slurper.parseText(params.products)

		mailService.sendMail {
		   to "cafeblon@yahoo.com"
		   from "cafeblon@yahoo.com"
		   subject "[cafeblon] New Order"
           body (view:'/emails/order', model: [name:params.name, phone:params.phone, adress:params.address, products: products, total: params.total])
		}

		render ""
    }
}
