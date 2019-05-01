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





