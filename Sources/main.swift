import Kitura
import HeliumLogger

// Logging
HeliumLogger.use()

let router = Router()

//router.all() { request, response, next in
//    response.send("Something to send")
////    try response.end()
//    next()
//}

router.get("hello") { request, response, _ in
    return "Hello World!"
}

router.post("post") { request, response, next in
    
}

Kitura.addHTTPServer(onPort: 8090, with: router)

Kitura.run()
