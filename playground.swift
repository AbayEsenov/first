import Foundation
// ?? - заменяет nill
let defaultName = "abay"
let name: String? = nil
let myName = name ?? defaultName // myName = name (если есть значение,если значение nil, то используется defaultName)
// унарный и тернарный оператор
var a = 7
var b = -a //унарный оператор

let c = false
let d = c ? 9: 10//тернарный оператор , d равно = если с - true то 9, если с - false то 10

// логические операторы && (и) || (или) ! (меняет булево значение на противоположное)
let e = 5
let f = 6
if e >= 5 && f <= 3 { // для выведения print необходимо соблюдение обоих условий
   // print("OK")
} 
if e >= 5 || f >= 7 { // для выведения print необходимо выполнение хотя бы одного условия
    //print("OK")
}
if (e == 5 && f <= 3) || f == 6 { // для выведения print необходимо выполнение одной из части СОСТАВНОГО условия
    //print("Ok")
}
let g = true
let i = !g // i будет false
let n = !i // n будет true

// операторы диапазона 
1...10 //  значения от 1 до 10 включительно
1..<10 // значения от 1 до 9, 10 не включается

// массивы УПОРЯДОЧЕННО хранят данные ОДНОГО типа которые могут иметь ОДИНАКОВОЕ значение
let array1: [Int] = [] //пустой массив
var array12 = [Int]() // тоже пустой массив
let array2 = [1,2,3,4] // массив со значениями
let array3 = [Int] (repeating: 25, count: 7) //массив повторяющие значение устпновленное количество раз
array12 += array2 // сложение массивов возможно
//array12[1] // вызов элемента массива по индексу
//array12.append(5)// добавление элемента к массиву
//array12.removeLast() // удаление последнего элемента массива
array12.reverse() // расположение элементов массива в обратном порядке
//print(array12.count) // считает кличество элементов
array12.insert(99, at:3)//вставляет новый элемент в указанное место

//словари хранят НЕУПОРЯДОЧЕННО пары ключ(уникальный)/ значение(может быть неуникальным) одного типа
var dict = [Int: String]() // пустой словарь
dict = [1:"Abay", 2:"Olga"]
//print(dict.count) //покажет кол-во пар ключ/значение
//print(dict.isEmpty)// вернет true или false в зависимости от того пустой словарь или нет
dict[1] = "Abay Esenov"// обращение/ изменение  значений возможно по ключам
let oldValue = dict.updateValue ("abay", forKey:1)// изменение значения с сохранением старого
let oldValue2 = dict.removeValue (forKey:2)//удаление значения с сохранением в константу
dict[1] = nil //удаление значения по ключу без сохранения удаленного значения
dict = [:] //очистка словаря

//множества хранят НЕУПОРЯДОЧЕННО только УНИКАЛЬНЫЕ значения
let someSet = Set<Int>() //пустой сет
let someSet2: Set<Int> = []// пустой сет
var someSet3: Set = [1,2,3,4,5,6]// содание сета со значениями
someSet3.insert(3) // добавление значений
//print(someSet3.isEmpty)// возвращает булево значение в зависимости от того пуст сет или нет
//print(someSet3.count)// показывает количество значение в сете
someSet3.remove(2)// удаляет значение
let boolValue = someSet3.contains(1)//возвращает булево значение в зависимости от наличия/отсутсвия элемента
var someSet4: Set = [4,6,7,8,9,10]
let allSet = someSet3.union(someSet4).sorted() // union объединяет ВСЕ значения обих сетов + sorted() сортирует по порядку
let commonSet = someSet3.intersection(someSet4) // intersection выбирает  ОБЩИЕ для обоих сетов значения
let notRepeatedSet = someSet3.symmetricDifference(someSet4).sorted() // [1, 3, 5, 7, 8, 9, 10] symmetricDifference выбирает УНИКАЛЬНЫЕ значения в ОБОИХ сетах
let subtractedSet = someSet3.subtracting(someSet4).sorted() //[1, 3, 5] subtracting выбирает УНИКАЛЬНЫЕ значения в ОДНОМ сете по отношению к другому

// if 
// ~= означает принадлженость диапазону
let x = 6
if 1...7 ~= x {
    //print("\(x) in diaposon between 1 to 7") // print сработает т.к. x находится в диапазоне
}

// guard - аналог if но предназначен для использования внутри блока кода(функция, цикл итд)
// return используется внутри функций для продолжения исполнения кода (при соблюдении условия guard)
// continue позволяет продолжать исполнения кода при соблюдении условия guard
// guard как будто "защищает" код от исполнения без соблюдения условия
for i in 1...10 {
    guard i < 9 else {continue}
    print(i)
  }

//switch всегда требует default значение
let x = 10
// switch x {
//     case 10, 15: // возможно использование нельскольких значений в однм case
//         print("x is 10 or 15")
//     fallthrough //принудительное продолжение исполнения кода
//     case 20:
//          print("x is 20")
//     case 30...50:// возможно использование диапазонов
//          print("x between 30 and 50")
//     default:
//     break
// }


// for in цикл перебирающий значение в диапазоне, массиве и т.д.
let a = "Abay"
for char in a { // в данном случае,перебиратся значения строки
   // print(char)
}
let dictionary = ["Abay":1, "Olga":2,"Alvin":3] // для перебора словаря необходимо назвать ключ и значение (name,number в данном примере)
for (name, number) in dictionary.enumerated() { // enumerated() позволяет извлечь индекс и его значение
   // print(name, number)
}
for i in stride(from:1, through:9, by:2){ // stride позволяет перебирать значения с указанным шагом
   // print(i)
}

// while цикл выполняющий итерации пока соблюдается условие
var timer = 10
//while timer > 0 {  //пока timer > 0, будет происходить итерация цикла
    //print(timer)
   // timer -= 1
//}

// repeat -while
// repeat {
//     print(timer) // в данном случае сначала выполнится итерации а потом произойдет проверка условия,тогда как в while условия проверяется до первой итерации
//     timer -= 1
// } while timer > 0

//func функции
func sayHello() { // простая функиция,которая не принимает и не возвращает значений
}
func withOneParam(parametr:Int) { // функция,принимающая один параметр и не возварщающая значений 
    var parametr = parametr
    parametr += 1
}
func withReturn() -> Int { // функция, не принимающая параметров но возвращающая значение
    return 10
}
func withParamAndReturn(name:String, lastName:String) -> String {// функция,принимающая параметры и возвращающая значение
    return "\(name) \(lastName)"
}
func withArray (array:[Int]) -> Int {// функция принимающая массив
    var sum = 0 // обьявляем переменную
    func saySum() {// создаем функицю для выведения результата
        print(sum)
    }
    for i in array {//создаем цикл для перебора значений массива
        sum += i
    }
    saySum()// вызываем функию для выведения результата
    return sum              
 }
func withVarParam (Numbers: Int...) -> Int {//функция принимающая вариативные параметры(не установленное заранее количество)
    var sum = 0
    for i in Numbers {
        sum += i
    }
    return sum
}
// func someFunc (_:Int) -> Int{// функция с параметром без имени
// }

func playerCount (team:Bool) -> (Int) -> Int { //функция принимающая в качестве возвращаемого значения другую функцию
    func addPlayer(player:Int) -> Int { return player + 1 }
    func zeroPlayer(player:Int) -> Int { return player - 1 }
    return team ? addPlayer: zeroPlayer // в зависимости от значения team return примет результат одной из функций выше
}

 // closure функция без имени, closure можно поместить в константу, и часто используется для указания алгоритма исполнения кода
let closure = { // простой closure, помещенный в констану
    //print("Hi")
}
func repeat3Times(closure: () -> ()) { // функция принимающая в качестве параметра closure
    for i in 0...2 {
       closure()
    }
    
}
repeat3Times(closure:closure) // вызываем функция, передавая параметр closure
repeat3Times(closure: { // вызываем функцию и передаем ей closure без имени и не помещенный в константу
    () -> () in // явное указание типа closure
    //print("Hi")
}) //для последующего замыкания нужно удалить круглые скобки и слово closure
let someArray = [1,3,8,345,69,234,68] // создаем массив
let sortedArray = someArray.sorted { // создаем массив,куда помещаем someArray и применяем sorted с использованием closure
     (num1:Int, num2:Int) -> Bool in //closure принимает два числа
    return num1 < num2    
}
//print(sortedArray)

// tuples - кортежи позволяют объединить некоторые значения
let exampleTuple = (name:"Name", lastName:"LastName", age: 34, temp: 36.6, male: true)// создали константу с tuple в которой содержатся значения разного типа
//let (name, lastName, age, temp, male) = exampleTuple // создали константы со значениями exampleTuple
exampleTuple.name //обращение к значениям константы
let nameAndNumber = ["Abay": 7, "Olga": 9, "Sveta": 3,"Olya": 5]
var name = " "
var number = 0
for (nameT, numberT) in nameAndNumber {
    if number < numberT {
        number = numberT
        name = nameT
    }
}

// опционалы,это переменные которые могут иметь значение nil
var fuel: Int? // создание опциональной переменной
fuel = 7
//fuel = nil
//print(fuel!) // знак ! позволяет убрать надпись optional, но нужно быть уверенным что значение есть всегда и оно никогда не будет nill

// опциональная привязка позволяет аккуратно извлечь значение, без ошибок
if let avFuel = fuel { // создали константу,которая принимает значение fuel 
    //print("available is \(avFuel)") //  print сработает только если значение НЕ nil
} else {
    //print("no available")// print сработает если значение nill
}

func checkFuel() { // пример использования опционала через guard в функции
guard let avFuel = fuel else {
print("no available") // если fuel nil сработает print
return
} 
print("available is \(avFuel)")
}

// классы,это шаблоны объектов
class Human {// называется класс с большой буквы
var name = "Abay" // переменные являются свойствами класса
var age:Int? = 27
var hairs = true

func description() -> String { // функция внутри класса - это метод класса
    if let ageOpt = age {// опциональная привязка
    return "My name is \(name), and I`am \(ageOpt) years old"
    } else {
    return "My name is \(name)"
    } 
}
}
let firstHuman = Human() //создаем экземпляр класса,т.е. он имеет все свойства и методы класса
firstHuman.name = "Who"
firstHuman.age = 5

let secondHuman = Human()
secondHuman.name = "Some"
secondHuman.age = 7

var array = [Human]() // создаем массив с типом класс Human
array.append(firstHuman) //добавляем в массив экземпляры классов
array.append(secondHuman)

// инициализаторы
class Player {
    var name: String // класс без default значений
    var health: Int

    func playerDesc() -> String{
        return "\(name) have \(health) point health"
    }

    init (name:String, health:Int){ // инициализация 
    self.name = name
    self.health = health
    }
}
let player1 = Player(name:"John", health:100)// при создании экземпляров инифиализация свойств происходит в ()

// наследование классов
class People {
    var name: String

    func showName()-> String{
        return "My name is \(name)"
    }
    init (name:String) {
        self.name = name
    }
}
class Child: People { // создаем класс Child который наследует от класса People
    var toy = "gun" //создаем новое свойство

    override func showName() -> String { // перезаписываем функцию
        let originText = super.showName() // сохраняем результат функции наследуемого класса
        return originText + " I have a \(toy)" // добавляем что-либо в результат *(self.toy) или (toy)?
    }
    init (toy:String, name:String) {
        self.toy = toy //инициализиурем свойство Child  
        super.init(name:name)// инициализируем свойство от наследуемого класса
    }
}
let child1 = Child(toy:"car",name:"Nigga")
print(child1.showName())
// добавление final перед class или func запрещает переопределение          
    

// вычисляемые значения, всегда определяются var
class Rectangular {
    let height: Int 
    let width: Int 
    let dept: Int 

    var volume: Int {// вычисляемое свойство, обязательно имеет return и тип
        return height * width * dept
    } 

    init(height:Int, width:Int, dept:Int) {
        self.height = height
        self.width = width
        self.dept = dept
    }
}
let rect = Rectangular (height:5, width:7, dept:4)

class Person {
    var name:String
    var secondName: String

    var fullName: String {
        get { // get это результат вычисляемой переменной
        return name + " " + secondName
        }
        set (newValue) {// переменная newValue устанавливается по умолчанию и принимает новое значение
            let array = newValue.components(separatedBy: " ") // новое значение помещаем в массив и применяя метод разделяем значения, идущие через пробел
            name = array[0] // свойствам массива присваиваются значения массива
            secondName = array[1]
        }
        }    
    init (name:String, secondName:String) {
        self.name = name
        self.secondName = secondName
    }
}
let person = Person(name:"Johny", secondName:"Boy")
person.fullName = "Jason Knight" // благодаря get и set теперь можно сразу поменять fullName

// свойства классов
class Car {
    let people: Int 
    let food: Int 
    let stuff: Int 
    class var carWeight: Int {return 1500} // определям свойства классов, данные свойства 
    class var maxWeight: Int {return 2000} // не будут доступны для инициализации и изменения

    var totalWeight: Int {
        return people + food + stuff + Car.carWeight
    }

    init (people:Int, food:Int, stuff:Int) {
        self.people = people
        self.food = food
        self.stuff = stuff
    }
}
let car = Car(people:450, food:10, stuff:100)
 // для обращения к свойству класса пишем имя класса и свойство, в отличии от обращения к экземпляру класса
let carWeight = Car.carWeight
let maxWeight = Car.maxWeight
if maxWeight < car.totalWeight {
    //print("Car is overloaded on: \(car.totalWeight - maxWeight)")
} else {
   // print("Ok")
}

// ленивые свойства - lazy (только var) позвляеют не инициализировать свойства при создании экземпляра, т.е. дает возможность инициализировать
// тогда, когда это будет нужно

class Process {
    let firstProcess = "some process"
    lazy var secondProcess = "other process"
}
let process = Process() // lazy свойство не инициализировано
process.secondProcess // lazy свойство инициализировано


//наблюдатели свойств наблюдают за изменениям значений свойств
class Emploee {
    var accessLevel = 0 {
        willSet(newValue) { // willSet т.е. значение которое будет установлено, newValue - переменная по умолчанию
            //print("your new access level is \(newValue)")
        }
        didSet(oldValue) { // didSet т.е. старое значение, oldValue - переменная по умолчанию
            if accessLevel > 0 {
                accessToDB = true
            } else {
                accessToDB = false
            }
            //print("your last access level is \(oldValue)") 
    }
    }
    var accessToDB = false
}
let emploee = Emploee()
emploee.accessLevel = 1 // изменение accessLevel приводит к срабатыванию наблюдателей свойства 
//print(emploee.accessLevel)

// АЛИАСЫ ТИПОВ(ПСЕВДОНИМЫ)
typealias Santimetrs = Int // теперь можно определять тип значения используя Santimetrs 
let someInt: Santimetrs = 50

typealias Dictionary = [String: Int] // также можно определить использовать алиас для словаря
var dictionary: Dictionary = [:] // создаем словарь используя алиас
dictionary["Something"] = 1


// ENUM объединяет связанные значения и присваивает им общий тип

enum Movement: Int { // создаем энум и именуем его с большой буквы.
// Для энума возможно указать значения: если String то rawValue будет строкой, если Int то rawValue будет возвращать индекс(при отсутствии значения)
    case forward = 10   
    case backward = 14
    case left = 4
    case right = 5    
}
let movement = Movement.backward// присваиваем в константу свойство энума
//print(movement)// выведет backward, если в значении константы добавить rawValue, то выведется 14

enum Device {
    case Phone(color:String), Tablet // создаем кейсы а также для Phone устанавливаем доп.свойство

    var year: Int { // объявляем вычисляемую переменную
        switch self { // перебиваем self значения
        case .Phone(let color) where color == "white": return 2007 // один из кейсов создан с проверкой доп.условия
        case .Phone: return 2000 // это case сработает для Phone других цветов
        case .Tablet: return 2005
    }
    }
}
let yearDevice = Device.Phone(color:"white").year
//print(yearDevice)

enum Player { // создаем enum
    enum Role: Int { // создаем вложенный enum
        case sniper = 100
        case shooter = 80

        var accuracy: Int { // создаем выисляемое свойство,которое вовзращает результат операции с rawValue
            return rawValue * 1
        }
    }
}
let player1 = Player.Role.sniper.accuracy
//print(player1)

indirect enum Lunch { // добавление indirect позволяет использовать enum как свойство для case
    case salad
    case meat
    case dessert
    case meal(Lunch, Lunch)
}
let myLunch = Lunch.meal(.meat,.salad)
//print(myLunch)

//СТРУКТУРЫ занимают отдельные ячейки памяти в отличии от классов,
//которые явлются ссылочными типами, т.е.к классам применим знак === (тождественности), а к структурам нет
//структуры не могут наследовать

struct Site { // структура создается также как и класс
    var siteName = "website.com"
}

let site1 = Site()

func changeName (site:Site) -> Site {
    var site = site
    site.siteName = "6535636m"
    return site
}
changeName(site: site1)
print(site1.siteName)// в структуре siteName не поменяется а в классе поменяется

// проверка и приведение типов

class Furniture {
    let material: String

    init (material:String) {
        self.material = material
    }
}
class Table: Furniture {
    let places: Int 

    init (places:Int, material:String) {
        self.places = places
        super.init(material:material)
    }
}
class Chairs: Furniture {
    let color: String

    init (color:String, material:String) {
        self.color = color
        super.init(material: material)
    }
}

var arrayOfFurniture = [Furniture]()
arrayOfFurniture.append(Table(places:5, material:"wood"))
arrayOfFurniture.append(Table(places:4, material:"wood"))
arrayOfFurniture.append(Table(places:2, material:"wood"))
arrayOfFurniture.append(Table(places:3, material:"wood"))
arrayOfFurniture.append(Table(places:8, material:"wood"))
arrayOfFurniture.append(Chairs(color:"black", material:"wood"))
arrayOfFurniture.append(Chairs(color:"white", material:"wood"))
arrayOfFurniture.append(Chairs(color:"yellow", material:"wood"))

var table = 0
var chairs = 0

// for item in arrayOfFurniture { // создаем цикл,который перебирает значение массива
//     if item is Table { // если item является Table
//         table += 1
//     } else {
//         chairs += 1
//     }
// }

// for item in arrayOfFurniture { // форма записи с приведением типа
//     if item is Table { // проверка условия выглядит также
//         let sureTable = item as! Table // при выполнении условия, приводим к типу (кастим) Table -принудительное приведение к типу
//         table += 1
//     } else {
//         chairs += 1
//     }
// }

for item in arrayOfFurniture {
    if let sureChairs = item as? Chairs { // альтернативная форма записи через опциональное приведение к типу
        chairs += 1
    } else {
        table += 1
    }
}


// опциональные цепочки
class Person {
    let job: Job? = Job()
    let worker: [Worker]? = [Worker()]
}
class Job {
    let salary: Salary? = Salary()
    
}
class Worker {
    let name = "Abay"
    func showName() -> String {
        return "\(name)"
    }
}
class Salary {
    let salary = 345345
    func showSalary() -> String {
       return  "\(salary)"
    }
}

let person = Person()
let salary = person.job?.salary?.salary// опциональная цепочка




// обработчик ошибок

struct Book { // создаем структуру книги
    let price:Int 
    var count: Int 
}

enum PosErrors: Error { // создаем enum (возможные ошибки)
    case NotInStock
    case NotEnoughMoney
    case NeverWasSoBook
}
class Library {
    var deposit = 1
    var libraryBooks = ["Book1": Book(price:10, count:3), "Book2": Book(price:15, count:1), "Book3": Book(price:20, count:0)] // создаем массив,где один из параметров принимает структуру
    func getBook(withName:String) throws { // создаем метод с throws (обработчик ошибок) 
        guard var book = libraryBooks[withName] else { // создаем переменную из элемента массива в инструкции 
           throw  PosErrors.NeverWasSoBook // если запрошенной книги не существует то сработает эта ошибка
        }
        guard  book.count > 0 else { // если книга закончилась сработает эта ошибка
            throw PosErrors.NotInStock
        }
        guard  book.price <= deposit else { // если стоимость книги превышает депозит то сработает ошибка
            throw PosErrors.NotEnoughMoney
        }
        deposit -= book.price // если все guard вернули true, то уменьшаем депозит на стоимость книги
        book.count -= 1 // уменьшаем количество книг
        libraryBooks[withName] = book // перезаписываем переменную
        print("You got the book: \(withName), your deposit is \(deposit)")
    }
}
let library = Library()
do { // do catch блок "ловит" возможную ошибку и выдает print
    try print(library.getBook(withName:"Book1"))
} catch PosErrors.NeverWasSoBook {
        print("never was so book")
} catch  PosErrors.NotInStock {
        print("not in stock")
} catch PosErrors.NotEnoughMoney {
        print("not enough money")
  }

// defer блоки (отложенное исполнение кода), т.е. данные блоки исполняются в последнюю очередь, если defer блоков несколько то выпоняются они с конца

var attempt = 50

func someFunc(param:Int) -> Int {
    defer { // defer блоки исполнятся после switch
        attempt += 2
    }
    defer {
        attempt *= 100// defer блоки исполняются с конца,поэтому сначал выполнится этот блок,потом верхний
    }
      switch param {
        case 1:
        return 1
        default:
        return 34
    }
 }

someFunc(param:0)







