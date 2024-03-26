import UIKit

var greetingOne = "Hello, playground"
var nameSeven = "Your name"
var andMyname = "Name of me"

var greeting = "Hello, playground"
var name = "Viktor"
var surname = "Kizera"
var year = 21
//var myfavoriteColor = "green"

func plus2Num (num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(plus2Num(num1: 5, num2: 2))

print(plus2Num(num1: 5, num2: 2 ))

struct Car {
    var door: Int
    var windows: Int
    var color: String
    var mark: String
    var enginePower: Int
}
print(greeting)

class Rectangle {
    var height: Int
    var width: Int
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
    func squareOfRectangle () -> Int { height * width}
    func perumetrOfRectangle () -> Int { 2 * (height + width)}
}
var rectangleOne = Rectangle(height: 12, width: 10)
var rectangleTwo: Rectangle = Rectangle(height: 2, width: 3)
print(rectangleOne.perumetrOfRectangle())
print(rectangleOne.squareOfRectangle())
rectangleTwo.perumetrOfRectangle()

class Home {
    var numberTwo: Int = 0
    var numberOne: Int = 0
    var suma: Int {
        get {
            return numberOne - 2
        }
        set {
            numberOne = newValue - 1
        }
    }
}
var homeOne = Home()
homeOne.numberOne = 5
print("Коли присвоюємо число до numberOne - \(homeOne.numberOne)")

print("Виводимо getter. Коли присвоюємо число до suma - \(homeOne.suma)")

print("Виводимо setter. Коли присвоюємо число до suma - \(homeOne.numberOne)")
    
class Account {
    var balance: Int {
        willSet {
            print("Баланс буде змінено з \(balance) на \(newValue)")
        }
        didSet {
            print("Новий баланс \(balance). Було \(oldValue)")
        }
    }
    init(balance: Int) {
        self.balance = balance
    }
}
var balanceOne = Account(balance: 3500)
print(balanceOne.balance)
balanceOne.balance = 15
balanceOne.balance = 20000
print("Зараз ваш балан складає - \(balanceOne.balance)")

var homeTwo = Home()

class ExampleClass {
    var numbers: [Int] = []
    init() {
        for i in 1...5 {
            numbers.append(i)
        }
    }
}
var newExample = ExampleClass()
print(newExample.numbers)

class NumberOfPhone {
    var phoneNumbers : [String: Int] = ["Віктор": 323222233, "Діана": 42342342, "Христина": 423454655]
    
    subscript (phone: String) -> Int {
        get {
            return phoneNumbers[phone]!
        }
        set {
            phoneNumbers[phone] = newValue
        }
    }
}
var newContact = NumberOfPhone()
print(newContact["Віктор"])
newContact["Іван"] = 986787766
print(newContact["Іван"])
print(newContact.phoneNumbers)

class Library {
    var bookInLibrary: [String: Int] = ["Весна": 5, "Чарівний капелюх": 8]
    
    subscript (book: String) -> Int {
        get {
            return bookInLibrary[book]!
        }
        set {
            bookInLibrary[book] = newValue
        }
    }
}
var bookOne = Library()
bookOne["Весна"]
bookOne["Весна"] = 90
bookOne["Марвел Місячний рицарь"] = 3
bookOne.bookInLibrary["Чарівний капелюх"]
print(bookOne.bookInLibrary)
var nameThree = "Viktoria"

class Father {
    var name : String
    var yearOld : UInt8
    var number1: Int
    var number2: Int
    
    init() {
        self.name = "Віктор"
        self.yearOld = 21
        self.number1 = 0
        self.number2 = 0
    }

    init(number1: Int, number2: Int) {
        self.name = "Віктор"
        self.yearOld = 21
        self.number1 = number1
        self.number2 = number2
    }
    
    func suma(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
}

class Son : Father {
    var surname: String
    
   override init() {
       surname = "Kizera"
       super.init()
    }
    
}

var studentOne = Father()
print(studentOne.name, studentOne.yearOld)
var studentTw0 = Son()
studentTw0.name = "Олег"
studentTw0.surname = "Джус"
studentTw0.yearOld = 23
print(studentTw0.name, studentTw0.surname, studentTw0.yearOld)

studentOne.suma(number1: 56, number2: 44)
print("\n")

var anyTypes : [Any] = [14, "Ukraine", [57:56]]

for types1 in anyTypes {
    if let typeInt = types1 as? Int {
        print("Належить до Int \(typeInt)]")
    } else if let typeString = types1 as? String {
        print("Належить до Int \(typeString)")
    } else if let typeDictionary = types1 as? [Int:Int] {
        print("Належить до Int \(typeDictionary)")
    } else if let typeDouble = types1 as? Double {
        print("Належить до Int \(typeDouble)")
    } else {
        print("НЕ належить до жодного типу \(types1)")
    }
}
enum TemperatureUnit: Character {
case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}
let fahrenheitUnit = TemperatureUnit(rawValue: "і")

if let notNill = fahrenheitUnit {
    print(notNill)
} else {
    print("Немає заданого числа")
}

private class House {
    var door: Int = 0
    var countOfRoom: Int = 0
    init(door: Int, countOfRoom: Int) {
        self.door = door
        self.countOfRoom = countOfRoom
    }
    convenience init(door: Int) {
        self.init(door: door, countOfRoom: 45)
    }
}

private class HouseOne : House {
    var windows: Int
    init (door:Int, countOfRoom: Int, windows: Int) {
        self.windows = windows
        super.init(door: door, countOfRoom: countOfRoom)
    }
    deinit {
        print("Екземпляр класу видалений")
    }
}
private var humanHomeTwo = House(door: 4, countOfRoom: 32)
print("\n\(humanHomeTwo.countOfRoom)")
private var humanHome = HouseOne.init(door: 2, countOfRoom: 2, windows: 2)
print("\n\(humanHome.windows) \(humanHome.door), \(humanHomeTwo.countOfRoom)")


class NoNil {
    init? (isNil: Bool) {
        if isNil == true {
            return nil
        } else {
            print("Екземпляр створений")
        }
    }
    deinit {
        print("Екземплятор класа видалений")
    }
}
var noNillOne = NoNil.init(isNil: false )

var s : String? = nil

if let sOptional = s?.uppercased().first{
    print(sOptional)
} else {
    print("Return nil or false")
}

var a = 5
var b = 5
 
func suma(a: Int, b: Int) -> Int {
    return a + b
}

print(suma(a: a, b: b))

var surnameAndName = "Viktor Kizera"

var text = """
зараз будемо вчитися налаштовувати
git
"""

//@main
//struct Application {
//    static func main() throws {
//        
//    }
//}
protocol Shape {
    var area: Double {get}
}

class RectangleOne: Shape {
    var width: Double
    var heigth: Double
    init(width: Double, heigth: Double) {
        self.width = width
        self.heigth = heigth
    }
    var area: Double  {width * heigth}
}
var squareRectangle = RectangleOne(width: 5, heigth: 5)
squareRectangle.area

class Circle: Shape {
    var r: Int
    init(r: Int) {
        self.r = r
    }
    var area: Double {
        3.14 * pow(Double(r), 2)
    }
}
var squareCircle = Circle(r: 5)
squareCircle.area

var numberP = Double.pi
print(numberP)

protocol Vehicle {
    var speed: Double {get set}
    var fuelLevel: Double {get set}
}

class Car2: Vehicle {
    var speed: Double
    var fuelLevel: Double
    var brand: String
    init(speed: Double, fuelLevel: Double, brand: String) {
        self.speed = speed
        self.fuelLevel = fuelLevel
        self.brand = brand
    }
}
class Bicycle: Vehicle {
    var speed: Double
    var fuelLevel: Double
    var numberOfGears: Int
    init(speed: Double, fuelLevel: Double, numberOfGears: Int) {
        self.speed = speed
        self.fuelLevel = fuelLevel
        self.numberOfGears = numberOfGears
    }
}
var myCar = Car2(speed: 80, fuelLevel: 45, brand: "Mazda")
var myBicycle = Bicycle(speed: 100, fuelLevel: 75, numberOfGears: 2)

protocol Animal {
    var name: String {get}
    func makeSound()
}

class Dog: Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
    func makeSound() -> Void {
        print("\n\(name) - Гав гав")
    }
    
}
class Cat: Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
    func makeSound() -> Void {
        print("\(name) - Мʼяв мʼяв")
    }
}
var myDog = Dog(name: "Циган")
myDog.makeSound()
var myCat = Cat(name: "Мурчик")
myCat.makeSound()

protocol Online {
    var name: [String] {get}
    var adress: String {get}
    var typeDelivery: String {get}
}
protocol Offline {
    var name: [String] {get}
    var adressStore: String {get}
}
protocol Order {
    var identificator: Int {get}
    var status: String {get}
    var sumOfOrder: Int {get}
}

class OnlineOrder: Order, Online {
    var name: [String]
    var adress: String
    var typeDelivery: String
    var identificator: Int
    var status: String
    var sumOfOrder: Int
    init(name: [String], adress: String, typeDelivery: String, identificator: Int, status: String, sumOfOrder: Int)
    {
        self.name = name
        self.adress = adress
        self.typeDelivery = typeDelivery
        self.identificator = identificator
        self.status = status
        self.sumOfOrder = sumOfOrder
    }
}

class OfflineOrder: Order, Offline {
    var name: [String]
    var adressStore: String
    var identificator: Int
    var status: String
    var sumOfOrder: Int
    init(name: [String], adressStore: String, identificator: Int, status: String, sumOfOrder: Int) {
        self.name = name
        self.adressStore = adressStore
        self.identificator = identificator
        self.status = status
        self.sumOfOrder = sumOfOrder
    }
}
var deliveryOrderOne = OfflineOrder(name: ["Молоко", "Вода"], adressStore: "Коновальця 35", identificator: 45, status: "Замовлення прийнято", sumOfOrder: 145)
var deliveryOrderTwo = OnlineOrder(name: ["Піца 4 сири"], adress: "Франка 51", typeDelivery: "Швидка доставка", identificator: 32, status: "Замовлення в дорозі", sumOfOrder: 432)
print("\nНазва продуктів: \(deliveryOrderOne.name)\nАдреса доставки: \(deliveryOrderOne.adressStore)\nСтатус замовлення: \(deliveryOrderOne.status)")

enum TypeDelivery: String {
    case car = "Автомобілем"
    case bike = "Мотоциклом"
    case bycicle = "Велосипедом"
}

protocol EnumProtocol {
    var enumPro: TypeDelivery {get}
}

class OrderBike: EnumProtocol {
    var enumPro: TypeDelivery
    init(enumPro: TypeDelivery) {
        self.enumPro = enumPro
    }
}
var numberOneWithenum = OrderBike(enumPro: .bycicle)
print(numberOneWithenum.enumPro.rawValue)


extension Int {
    subscript(digitIndex: Int) -> Int {
        var base = 1
        var index = digitIndex
        while index > 0 {
            base *= 10
            index -= 1
        }
        return (self / base) % 10
    }
}
var number = 123[0]
print(number)


struct Person {
  var name: String
  var age: Int

    mutating func setName(newName: String) {
    self.name = newName
  }
}
var personOne = Person(name: "Viktor", age: 21)
print(personOne.name)
personOne.setName(newName: "Inna")
print(personOne.name)
var personTwo = Person(name: "Nina", age: 57)
var personThree = Person(name: "Sasha", age: 19)

var printStrind: (String) -> Void = {print("Вас звати - \($0)")}
printStrind("Ulia")

var suma: (Int, Int ) -> Int = {$0 + $1}
func myFunc(a: Int, b: Int, mathfunc: (Int, Int) -> Int) -> Void {
    let result = mathfunc(a, b)
    print(result)
}

myFunc(a: 12, b: 10, mathfunc: {$1 - $0})
myFunc(a: 12, b: 6) { a, b in
    a - b
}

protocol Transport {
    associatedtype Element
    var UID: Element {get set}
}

struct CarOne: Transport {
    var UID: Int = 0
}
struct Truck: Transport {
    var UID: String = ""
}
func getCar() -> some Transport {
    return CarOne(UID: 32)
}
