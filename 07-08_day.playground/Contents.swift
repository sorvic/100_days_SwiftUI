import Cocoa

//MARK: - day-07 functions, parameters, and return values
//MARK: - day-08 default values, throwing functions, and checkpoint 4

//MARK: - functions

// Функции -позволяют нам обертывать фрагменты кода,
// чтобы их можно было использовать во многих местах

// isMultiple(of:) - которую мы использовали ранее - это функция
let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}
//Odd



//MARK: - parameters
// random() - это функция, а (in: 1...20) - параметры
let roll = Int.random(in: 1...20)


// Функция вычисления таблицы умножения от 1 до 12
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)

// Можно передавать несколько параметров
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end: 20)

// ВНИМАНИЕ! Любые данные, которые вы создаете внутри функции,
// автоматически уничтожаются после завершения функции.



//MARK: - return values
// Входные и Выходные параметры функций
// Функция sqrt() принимает один параметр, который является числом,
// из которого мы хотим вычислить квадратный корень,
// а затем отдась обратно квадратный корень.
let root = sqrt(169)
print(root) //13.0

// Если вы хотите вернуть свое собственное значение из функции, вам нужно сделать две вещи:
// - поставьте стрелку, а затем тип данных перед открывающей фигурной скобкой
// то есть какие данные будут отправлены обратно
// - Используйте ключевое слово return для возврата ваших данных
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result) //5


//попробуем более сложный пример: содержат ли две строки одни и те же буквы,
// независимо от их порядка?
// Вспоминаем, что sorted() - примененная к строке, отсортирует все буквы по алфавиту
func areLettersIdentical(string1: String, string2: String) -> Bool {
    // return string1.sorted() == string2.sorted()
    // если функция содержит всего одну строчку кода - то слова return можно опускать
    string1.sorted() == string2.sorted()
}

// Теорема Пифагора
func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c) //5.0

// можно написать в одну строку
func pythagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

// в SwiftUI очень часто в функция используется тернарный оператор
func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

// это тоже самое, что - но функция выше более краткая и локоничная
func greet2(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}


// Если мы хотим вернуть два или более значений из функции - используем массив
func getUser() -> [String] {
    ["Taylor", "Swift"]
}
let user = getUser()
print("Name: \(user[0]) \(user[1])") //Name: Taylor Swift
// но тут сложность в восприятие кода - что у нас в user[0] и user[1]

// Можно использовать словарь
func getUser2() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")
// здесь нам нужно прописывать значение по-умолчанию (default)


// Самый УДОБНЫЙ способ через КОРТЕЖ
// КОРТЕЖ - имеют фиксированный размер и могут содержать  разные типы данных
func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")
//Name: Taylor Swift

// Отличие Кортежа от Словаря
/*
 1) Когда вы получаете доступ к значениям в словаре, Swift не может заранее узнать,
 присутствуют они или нет. Да, мы знали, что пользователь ["имя"] будет там,
 но Swift не может быть уверен, и поэтому нам нужно указать значение по умолчанию
 2) Когда вы получаете доступ к значениям в кортежа, Swift заранее знает,
 что он доступен, потому что кортеж говорит, что он будет доступен.
 3)Мы получаем доступ к значениям с помощью user.firstName: это не строка,
 поэтому также нет никаких шансов на опечатки.
 4) Наш словарь может содержать сотни других значений наряду с "Именем",
 но наш кортеж не может - мы должны перечислить все значения,
 которые он будет содержать, и в результате он гарантированно будет содержать
 их все и ничего больше.
 */

// Есть еще три вещи, которые важно знать при использовании кортежей.
// 1) Если вы возвращаете кортеж из функции, Swift уже знает имена,
// которые вы даете каждому элементу в кортежа,
// поэтому вам не нужно повторять их при использовании return
func getUser4() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

// 2)Если вам дают кортежи, где элементы не имеют названий.
// Вы можете получить доступ к элементам кортежа, используя числовые индексы, начинающиеся с 0
func getUser5() -> (String, String) {
    ("Taylor", "Swift")
}

let user5 = getUser5()
print("Name: \(user5.0) \(user5.1)")

// 3) Если функция возвращает кортеж, вы можете разобрать кортеж на отдельные значения
func getUser6() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user6 = getUser6()
let firstName = user6.firstName
let lastName = user6.lastName

print("Name: \(firstName) \(lastName)")


// Мы можем записать так - сразу инициализировать несколько констант
let (firstName1, lastName1) = getUser6()
print("Name: \(firstName1) \(lastName1)")
//Name: Taylor Swift


//  если вам не нужны все значения из кортежа, вы можете пойти еще дальше, используя _,
// чтобы сказать Swift игнорировать эту часть кортежа:
let (firstName2, _) = getUser6()
print("Name: \(firstName2)") //Name: Taylor


// Можно указывать имя вхоядщего параметра
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result1 = isUppercase(string: string) //true


// Если имя ВХОДЯЩЕГО параметра не важено - то ставим _
func isUppercase2(_ string: String) -> Bool {
    string == string.uppercased()
}
let string2 = "HELLO, WORLD"
let result2 = isUppercase2(string) //true


// Можно задавать разные имена для внешнего (for) и внутреннего (number) использования аргумента
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(for: 5)


// ПРИМЕРЫ
// Печать несколько раз
func bounceOnTrampoline(times: Int) {
    for _ in 1...times {
        print("Boing!")
    }
}
bounceOnTrampoline(times: 2)



//MARK: - default values, throwing functions, and checkpoint 4

//MARK: - default values
// можно выставлять значение по-умолчанию (end: Int = 12)
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8) // end - не указано => будет использоваться значение по-умолчанию

// ПРИМЕР - использования значения по-умолчанию
func parkCar(_ type: String, automatically: Bool = true) {
    if automatically {
        print("Nice - my \(type) parked itself!")
    } else {
        print("I guess I'll have to do it.")
    }
}
parkCar("Tesla") //Nice - my Tesla parked itself!



//MARK: - throwing functions
// ОБРАБОТКА ОЩИБОК
// Например, когда тот файл, который вы хотели прочитать, не существует
// или когда данные, которые вы пытались загрузить, не удались из-за того, что сеть была отключена
/*
 3 шага:
- Рассказать Swift о возможных ошибках, которые могут произойти.
- Написание функции, которая может помечать ошибки, если они происходят.
- Вызов этой функции и обработка любых ошибок, которые могут произойти.
*/


// Проверяем пароль пользователя - выводим ошибку, если он короткий или очевидный
// 1 - создаем перечисление с ошибками
enum PasswordError: Error { // : Error - помечаем что этол перечисление ошибок
    case short, obvious
}

// 2 - пишем функцию для проверки
func checkPassword(_ password: String) throws -> String {
    // throws - помечаем, что ф-ция может выдавать на вызоде ошибки

    if password.count < 5 {
        throw PasswordError.short
        // throw - указываем какую ошибку выдаем и немедленно выходим из ф-ции
    }

    if password == "12345" {
        throw PasswordError.obvious
        // throw - указываем какую ошибку выдаем и немедленно выходим из ф-ции
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// 3 - запуск ф-ции и проверка на ошибки
/*
 3.1) Запуск блока работы, который может выбрасывать ошибки, с помощью do.
 3.2) Вызов одной или нескольких функций броска с помощью try.
 3.3) Обработка любых выброшенных ошибок с помощью catch.

 do - try - catch (делать - пытаться - ловить)

 do {
     try someRiskyWork()
 } catch {
     print("Handle errors here")
 }
*/
let string1 = "12345"

do {
    let result = try checkPassword(string1)
    // Если функция работает правильно, она вернет значение в результат, которое распечатывается
    print("Password rating: \(result)")
} catch { // Но если будут выброшены какие-либо ошибки - выполнение перейдет к блоку catch
    print("There was an error.")
}
//There was an error.


// блок catch, способный обрабатывать любые ошибки.
// Тем не менее, вы также можете обрабатывать конкретные ошибки, если хотите:
do {
    let result = try checkPassword(string1)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
//I have the same combination on my luggage!

/*
 Большинство ошибок, выбрасываемых Apple, предоставляют содержательное сообщение,
 которое вы можете представить своему пользователю, если это необходимо.
 Swift делает это доступным, используя значение error, которое автоматически предоставляется
 внутри вашего блока catch, и обычно читается error.localizedDescription,
 чтобы точно увидеть, что произошло.
*/


// try - помогает указать какая конкретно ф-ция может выдавать ошибки - удобно когда их много
//do {
//    try throwingFunction1()
//    nonThrowingFunction1()
//    try throwingFunction2()
//    nonThrowingFunction2()
//    try throwingFunction3()
//} catch {
//    // handle errors
//}


// ПРИМЕР-1
enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}

// ПРИМЕР-2
enum BookErrors: Error {
    case tooFewPages
    case tooManyPages
}
func writeBook(title: String, pages: Int) throws {
    switch pages {
    case 0...50:
        throw BookErrors.tooFewPages
    case 51...400:
        print("Perfect! I'm going to write \(title)...")
    default:
        throw BookErrors.tooManyPages
    }
}



//MARK: - checkpoint 4
/*
 Напишите функцию, которая принимает целое число от 1 до 10 000 и возвращает
 целочисленный квадратный корень из этого числа
 - Вы не можете использовать встроенную функцию sqrt() Swift или аналогичнуюё
 - Если число меньше 1 или больше 10 000, вы должны выдать ошибку "вне границ".
 - Вы должны учитывать только целочисленные квадратные корни
 (не беспокойтесь о том, что квадратный корень из 3 равен 1,732).
 - Если вы не можете найти квадратный корень, выдайте ошибку "без корня".
*/

