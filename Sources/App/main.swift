import Vapor
import VaporMySQL


let drop = Droplet()
let provider = VaporMySQL.Provider.self
try drop.addProvider(provider)
//User.database = Database.init(provider.driver)


drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.get("/hello-world") { request in
    return "Hello World!"
}

drop.get("/name",":name") { request in
    if let name = request.parameters["name"]?.string {
        return "Hello \(name)!"
    }
    return "Error retrieving parameters."
}

drop.get("/view") { request in
    return try drop.view.make("view.html")
}
drop.get("/mysql") { request in
    var users : [User] = []
    do {
        try users = User.all()
    }
    return try drop.view.make("mysql", [
        "title": "MySQL example",
//        "users": users.makeNode()
        ])
}

drop.resource("posts", PostController())

drop.run()
