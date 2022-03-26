import Cocoa

//MARK: - Day 05 – if, switch, and the ternary operator

//MARK: - if
let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
} // Where we're going we don't need roads.

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
} //You're eligible to vote


// Можно сравнивать строки по Алфавиту
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
} //It's Arnold Rimmer vs Dave Lister


// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0) // 1
}

// Display the result
print(numbers) // [2, 3, 4]


// хотим проверить, является ли имя пользователя, введенное пользователем, пустым
// 1-й способ: Create the username variable
var username = "taylorswift13"

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!") // Welcome, taylorswift13!

// 2-й способ: мы могли бы сравнить количество в строке - сколько у нее букв
if username.count == 0 {
    username = "Anonymous"
}

// Подсчет строк очень долгитй в Swift, потому что он считается каждый символ всегда
// Поэтому есть более удобный метод isEmpty - проверить наличие - обратный true
if username.isEmpty {
    username = "Anonymous"
}


// Swift позволяет сравнивать многие виды значений из коробки
let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName) // false
print(firstName != secondName) // true
print(firstName < secondName) // true
print(firstName >= secondName) // false

print(firstAge == secondAge) // false
print(firstAge != secondAge) // true
print(firstAge < secondAge) // false
print(firstAge >= secondAge) // true
// Swift имеет специальный тип для хранения дат под названием Date
// вы можете сравнить даты с помощью тех же операторов


// Можно даже сравнивать перечисления!
enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second) // true
// Это напечатает «истину», потому что small приходит раньше large в списке enum


//
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else { // Code to run if a is false but b is true
    print("Code to run if both a and b are false")
}

// Можно использовать вложения if
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

// но есть более короткая альтернатива вложенным if
// используя Логические операторы
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}


// ,jktt
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

// Когда мы устанавливаем значение для transport,
// мы должны четко указать, что мы имеем в виду TransportOption.airplane.
let transport = TransportOption.airplane

// нам больше не нужно писать TransportOption, потому что Swift знает,
// что транспорт должен быть каким-то TransportOption
// мы можем проверить, равно ли это .airplane, а не TransportOption.airplane.
if transport == .airplane || transport == .helicopter {
    // Если мы едем куда-нибудь на самолете или вертолете, мы напечатаем "Давайте полетим!"
    print("Let's fly!") // Let's fly!
} else if transport == .bicycle {
    // Если мы поедем на велосипеде, мы напечатаем "Надеюсь, есть велосипедная дорожка..."
    print("I hope there's a bike path…")
} else if transport == .car {
    // Если мы поедем на машине, мы напечатаем "Время застрять в пробке".
    print("Time to get stuck in traffic.")
} else {
    // В противном случае мы напечатаем "Я собираюсь нанять скутер сейчас!"
    print("I'm going to hire a scooter now!")
}

//

// При использование нескольких логических операторов - принято разделять скобками порядок
//if (isOwner == true && isEditingEnabled) || isAdmin == true {
//print("You can delete this post")
//}

//MARK: - switch

// Допустим нам надо выводить прогноз погоды
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}
/*
 Этот способ имеет ряд неудобств
- Нам постоянно приходится писать forecast
- Я случайно проверил .rain дважды,
 хотя вторая проверка никогда не может быть верной,
 потому что вторая проверка выполняется только в том случае,
 если первая проверка не удалась.
- Я вообще не проверял .snow, поэтому нам не хватает функциональности
*/

// switch - позволяет нам проверять условия один за другим
// как только условие сработает - дальше не проверяется!
switch forecast {
case .sun:
    print("It should be a nice day.") //It should be a nice day.
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}
// switch сам отслеживает чтобы все условия были прописаны
// - если что-то пропустим - то он выдаст ошибку
// 05_day.playground:208:1: note: add missing case: '.wind'
// switch forecast {


// Можно использовать дефолтное условие (когда ни одно условие не сработает)
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}
//Who are you?

// fallthrough - после данного слова будут срабатывать условие ниже
// ПОЧТИ НЕ ИСПОЛЬЗУЕТСЯ в Swift!
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
//5 golden rings
//4 calling birds
//3 French hens
//2 turtle doves
//A partridge in a pear tree


//MARK: - ternary operator
// Тернарный оператор работают с тремя частями ввода
// "что ? правда : ложь"
// позволяет проверить условие и вернуть
// что-то, если условие истинно, и что-то, если оно ложно
let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No" //Yes

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon") //It's after noon

// проверка массива на наличие значений
let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount) //3 people
