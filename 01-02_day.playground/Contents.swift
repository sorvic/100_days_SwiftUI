import Cocoa

//MARK: - Day 01
// variables = преременные
var greeting = "Hello, playground"

// let = "пусть" (константы)
let character = "Daphne"

var playerName = "Roy" // camel case
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Movhael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"


//Строки
let actor = "Danzel Washington"

let filename = "paris.jpg"
// Можно работать с эмодзи
let result = "⭐️ You win! ⭐️"

// для использования кавычек внутри строки 0 ставим обратный слеш
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Написание в нескольтко строк
let movie = """
A day in
the life of an
Apple engineer
"""

// Узнать длину строкиё
print(actor.count)

let nameLength = actor.count
print(nameLength)

// Перевод строки в ВЕРХНИЙ регистр
print(result.uppercased())

// hasPrefix - Начинается ли строка с символов, что мы указали
print(movie.hasPrefix("A day")) // true
print(movie.hasPrefix("day")) // false

// hasSuffix - проверяет, заканчивается ли строка каким-либо текстом
print(filename.hasSuffix(".jpg")) // true
print(filename.hasSuffix(".JPG")) // false


// Int = integer = целое (Целое число)
let score = 10

// можно отделять триады
let realyBig = 100_000_000

// Swift на самом деле игнорирует подчеркивание
let realyBig2 = 1_00__00___0_000

// арифметические действия
let lowerScore = score - 2 // 8
let higherScore = score + 10 // 20
let doubleScore = score * 2 // 20
let squaredScore = score * score // 100
let halvedScore = score / 2 // 5
print(score) // 10


// СОСТАВНЫЕ ОПЕРАТОРЫ
var counter = 10
counter = counter + 5 // 15
// запись выше можно записать так
counter += 5 // 20
print(score) // 10

counter *= 2 // 40
print(score) // 10

counter -= 10 // 30
print(score) // 10

counter /= 2 // 15
print(score) // 10


// isMultiple(of:) - позваляет узнать кратно ли наше число указаному
let number = 120
print(number.isMultiple(of: 3)) // true

print(121.isMultiple(of: 3)) // false


// Double - числа с плавающей точкой
let number2 = 0.1 + 0.2
print(number2) // 0.30000000000000004

let a = 1
let b = 2.0
// Приведение типов
let c = a + Int(b)
let c2 = Double(a) + b


//MARK: - Day 02
// Bool - логический тип данных
let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3) // isMultiple = true

// оператор ! переварачивает с true на false и наоборот
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated) //true
isAuthenticated = !isAuthenticated
print(isAuthenticated) // false

//toggle() - переварачивает значение (аналогично оператору !)
var gameOver2 = false
print(gameOver2) //false

gameOver2.toggle()
print(gameOver2) // true


// Конкатенация строк
let firstPart = "Hello, "
let secondPart = "world!"
let greeting1 = firstPart + secondPart // "Hello, world!"

// Интерполяция строк
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message) // Hello, my name is Taylor and I'm 26 years old.

// В интерполяцию можно помещать вычесления
print("5 x 5 is \(5 * 5)") // 5 x 5 is 25


//MARK: - Checkpoint 1
var temperature = 0
var tempF = temperature * 9 / 5 + 32
//Option+Shift+8, чтобы получить символ градусов: °
print("Температура \(temperature)°Целсия = \(tempF)°F") // 32
//Температура 0°Целсия = 32°F

temperature = 100
tempF = temperature * 9 / 5 + 32
print("Температура \(temperature)°Целсия = \(tempF)°F")// 212
//Температура 100°Целсия = 212°F
