import Vapor
import Fluent

final class User: Model {
    var id: Node?
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    init(node: Node, in context: Context) throws {
        id = try node.extract("id")
        name = try node.extract("name")
    }
    
    func makeNode(context: Context) throws -> Node {
        return try Node(node: [
            "id": id,
            "name": name
            ])
    }
    
    static func prepare(_ database: Database) throws {
        try database.create("user") { users in
            users.id()
            users.string("name")
        }
    }
    
    static func revert(_ database: Database) throws {
        try database.delete("user")
    }
    
//    var id: String?
//    var name: String
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func serialize() -> [String: String] {
//        return [
//            "name": self.name,
//        ]
//    }
//    
//    class var table: String {
//        return "users"
//    }
//    
//    required init(serialized: [String: String]) {
//        self.id = serialized["id"]
//        self.name = serialized["name"] ?? ""
}
