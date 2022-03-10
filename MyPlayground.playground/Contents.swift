import Cocoa

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
