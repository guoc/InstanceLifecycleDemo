class Person {
    
    let name: String
    var friend: Person?
    
    init(name: String) {
        self.name = name
        print("Init \(self.name).")
    }
    
    func work() {
        print("\(self.name) is working.")
    }
    
    func sleep() {
        print("\(self.name) is sleeping.")
    }
    
    deinit {
        // cleanup work
        print("Deinit \(self.name).")
    }
}
