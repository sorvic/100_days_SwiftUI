import Cocoa

//MARK: - Day 03 (Arrays, dictionaries, sets, and enums)
// Day 04 type annotations and checkpoint 2
//MARK: - Array - МАССИВЫ - упорядоченная коллекция однотипных элементов []
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0]) // John
print(numbers[1]) // 8
print(temperatures[2]) // 26.4

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// Создание пустого массива
var scores = Array<Int>()
// добавление элементов
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// 3 сспособа создания пустого массива
//var albums: [String] = []
//var albums = [String]()
var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums) // ["Folklore", "Fearless", "Red"]

// кол-во элементов
print(albums.count) // 3

// Удаление элементов
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count) // 4

// удаление по индексу
characters.remove(at: 2)
// remove(at: ) - удаляет и захватывает в память уджаленный элемент
let a = characters.remove(at: 2) // Ray
print(a)
print(characters.count) // 3

// удаление всех элемнтов массива
characters.removeAll()
print(characters.count) // 0

// содержит ли массив определенный элемент
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen")) // false

// отсортировать массив
// возвращает новый массив с элементами, отсортированными в порядке возрастания,
// в алфавитном порядке для строк
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) // ["Budapest", "London", "Rome", "Tokyo"]
// НО! исходный массив остается неизменным
print(cities) // ["London", "Tokyo", "Rome", "Budapest"]

// перевернуть массив
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
// ReversedCollection<Array<String>>(_base: ["Bush", "Obama", "Trump", "Biden"])
/*
Когда вы переворачиваете массив, Swift очень умный - он на самом деле не выполняет работу по перегруппировке всех элементов, а вместо этого просто помнит себе, что вы хотите, чтобы элементы были перевернуты.
 Поэтому, когда вы печатаете outreversedPresidents, не удивляйтесь, увидев, что это уже не просто массив!
*/


//MARK: - Dictionary - СЛОВАРИ - неупорядоченная коллекция элементов «ключ: значение»
let employee1 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
// более красивый вид записи
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Чтение данных
print(employee2["name"]) // Optional("Taylor Swift")
print(employee2["job"]) // Optional("Singer")
print(employee2["location"]) //Optional("Nashville")
// optionals - необязательные значения
// если мы попробуем получить несущнествующие значения
print(employee2["password"]) // nil
print(employee2["status"]) // nil

// при чтении из словаря вы можете указать значение по умолчанию, если ключ не существует
print(employee2["name", default: "Unknown"]) // Taylor Swift
print(employee2["job", default: "Unknown"]) // Singer
print(employee2["location", default: "Unknown"]) // Nashville
print(employee2["status", default: "Unknown"]) // Unknown


// мы можем использовать словарь для отсеживания  годов, когда проходили Олимпийские игры
var olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"]) // London
print(olympics[2010, default: "Unknown"]) // Unknown


// можете создать пустой словарь - а затем установить ключи один за другим
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// попытка записать в уже существующий ключ - перезапишет значение
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker" // The Joker
archEnemies["Superman"] = "Lex Luthor" // Lex Luthor

// count and removeAll() - работают также как и для Массивов (Array)
olympics.count // 3
olympics.removeAll() // [:]


//MARK: - Sets - МНОЖЕСТВО - неупорядоченная коллекция уникальных элементов []
let people1 = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people1)
// ["Denzel Washington", "Nicolas Cage", "Tom Cruise", "Samuel L Jackson"]

// создание пустого кортежа и добавление значений
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

//contains() - содержит ли массив заданный элемент
people.contains("Tom Cruise") // true
// count -  чтение количества элементов в наборе
people.count // 4
// sorted() - возврат отсортированного массива
people.sorted()

// из Массива (Array) можно сделать Множество (Set) - дубли отбрасываются
let numbArray = [4, 8, 2, 2, 1, 2, 4]
print(numbArray) // [4, 8, 2, 2, 1, 2, 4]
let numbSet = Set([4, 8, 2, 2, 1, 2, 4])
print(numbSet) // [4, 2, 1, 8]
let numbSet2 = Set(numbArray)
print(numbSet) // [2, 8, 1, 4] - вывод значений каждый раз разный, ПОТОМУ
// что Set - это неупорядоченная коллекция

//MARK: - tuples - КОРТЕЖИ - группирует значения различных типов ()
var name = (first: "Taylor", last: "Swift", age: 25)
name.0 // Taylor
name.first // Taylor
name.age // 25

// ОТЛИЧИЯ Кортежа от Массива
// кортеж
var website = (name: "Apple", url: "www.apple.com")
// массив
var website2 = ["Apple", "www.apple.com"]
// в одном кортеже могут быть разыне типы
var person = (name: "Paul", age: 40, isMarried: true)


//MARK: - Enums - перечисления
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// другой способ написания
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
day = .tuesday
day = .friday
