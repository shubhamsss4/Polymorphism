import UIKit


/// Polymorphism in Swift

class Cricketer {
    var name:String
    init(name:String) {
        self.name = name
    }
    
    func getRunsScored() {
        print("\(name) scored a lot of runs.")
    }
}

class InternationalCricketer: Cricketer {
    var countryPlayedFor: String
    
    init(countryPlayedFor: String,name: String)
    {
        self.countryPlayedFor = countryPlayedFor
        super.init(name: name)
    }
    
    override func getRunsScored() {
        print("\(name) scored a lot of runs in International Matches")
    }
}

class DomesticCricketer: Cricketer {
    var statePlayedFor: String
    
    init(statePlayedFor: String,name: String) {
        self.statePlayedFor = statePlayedFor
        super.init(name: name)
    }
    
    override func getRunsScored() {
        print("\(name) scored a lot of runs in Domestic Matches")
    }
}

var sachin = InternationalCricketer(countryPlayedFor: "India", name: "Sachin Tendulkar")
var virat = InternationalCricketer(countryPlayedFor: "India", name: "Virat Kohli")
var shubham = DomesticCricketer(statePlayedFor: "Maharashtra", name: "Shubham Shah")

var allCricketers: [Cricketer] = [sachin,virat,shubham]

for cricketer in allCricketers {
    cricketer.getRunsScored()
}

