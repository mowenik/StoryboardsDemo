
class DatabaseDataManager: UserProtocol {
    var userName: String {
        return getUser().name
    }
    
    func getUser() -> User {
        return User(name: "Сергей", age: 26)
    }
}
