
class APIDataManager: UserProtocol {
    var userName: String {
        return getUser().name
    }
    
    func getUser() -> User {
        return User(name: "Андрей", age: 20)
    }
}
