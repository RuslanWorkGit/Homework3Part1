import Foundation

/*
 
 Домашнє завдання 3
 
 Частина 1
 
 */

/*
 
 Розділ 1 - Потік керування
 
 - Цикли
 
 */

// Псевдонім для зберігання деталей товару
typealias ProductInfo = (productName: String, price: Double, currency: String, socet: String, processor: String)

// Користувач в інтернет-магазині додав наступні товари у кошик,
// але ще не визначився, яку саме відеократу придбати:
let cart: [ProductInfo] = [
    (productName: "ASRock H310CV-HDV", price: 1717.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus Prime H310M-E R2.0", price: 2299.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte H310M H", price: 1939.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "ASRock Q270 PRO BTC+", price: 4599.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Biostar H310MHP", price: 1698.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "MSI H30M Pro-VDN", price: 1649.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Asus WS C246 Pro", price: 10979.0, currency: "₴", socet: "s1151", processor: "Intel"),
    (productName: "Gigabyte B550 AORUS Elite", price: 5599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus", price: 5798.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550M-Plus", price: 4799.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Gigabyte B550M Aorus Elite", price: 4446.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus TUF Gaming B550-Plus Wi-Fi II", price: 6599.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-A Gaming", price: 6999.0, currency: "₴", socet: "sAM4", processor: "AMD"),
    (productName: "Asus ROG Strix B550-E Gaming", price: 8703.0, currency: "₴", socet: "sAM4", processor: "AMD")
]

/*
 
 Пункт 1.1
 
 Викороистовуючи цикил For виведіть у консоль усю інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 Сокет: значення, Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
     Сокет: s1151, Процессор: Intel
    ------------------------------------------------------
 */

print("")
print("")
for (index, product) in cart.enumerated() {
    print("--------------------------\(index + 1)--------------------------")
    print("Product name: \(product.productName), Price: \(product.price) \(product.currency)")
    print("Socet: \(product.socet), Processor: \(product.processor)")
    print("------------------------------------------------------")
}


/*
 
 Пункт 1.2
 
 Викороистовуючи цикил For in виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Процессор: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD
     Процессор: Intel
    ------------------------------------------------------
 */

print("")
print("")
var index = 1
for product in cart {
    print("------------------- \(index) -------------------")
    print("Product name: \(product.productName)")
    print("Processor: \(product.processor)")
    index += 1
}



/*
 
 Пункт 1.3
 
 Викороистовуючи цикил While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Ціна: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Ціна: 1717.00 ₴
    ------------------------------------------------------
 */

print("")
print("")
var indexPart3 = 0
while indexPart3 < cart.count {
    print("------------------- \(indexPart3 + 1) -------------------")
    print("Product name: \(cart[indexPart3].productName)")
    print("Price: \(cart[indexPart3].price)")
    indexPart3 += 1
}



/*
 
 Пункт 1.4
 
 Викороистовуючи цикил Repeate While виведіть у консоль наступну інформацію про всі товари у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD
    Сокет: s1151
    ------------------------------------------------------
 */

print("")
print("")
var indexPart4 = 0
repeat {
    print("------------------- \(indexPart4 + 1) -------------------")
    print("Product name: \(cart[indexPart4].productName)")
    print("Socet: \(cart[indexPart4].socet)")
    indexPart4 += 1
} while indexPart4 < cart.count




/*
 
 Розділ 1 - Потік керування
 
 - If / if else
 
 */

/*
 
 Пункт 1.5
 
 Викороистовуючи будь-який з циклів та умовні оператори if else
 виведіть у консоль тільки ті товари
 - ціна яких менша 5000.00 грн.
 - значення socket є s1151
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: значення
 Сокет: значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
    Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    Сокет: s1151
    ------------------------------------------------------
 */

print("")
print("")
for (index, product) in cart.enumerated() {
    if product.price < 5000.0 && product.socet == "s1151" {
        print("------------------- \(index + 1) ------------------")
        print("Product name: \(product.productName), price: \(product.price) \(product.currency)")
        print("Socet: \(product.socet)")
    }
}



/*
 
 Розділ 1 - Потік керування
 
 - Switch
 
 */

/*
 
 Пункт 1.6
 
 Викороистовуючи будь-який з циклів та умовні оператор switch
 додати перевірку через case на відповідність процесору товару AMD чи Intel,
 значення процесору брати з опису товару
 (дивись Примітка після прикладу приклад switch) і
 вивести у консоль наступну інформацію про всі товари
 - назва товару
 - ціна товару
 у наступному форматі:
 ------------------- порядковий номер товару -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
    ------------------- 1 -------------------------------
     Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ------------------------------------------------------

 * Примітка
    
     let processorStringValue = "Значення процесору з продукту"
 
     switch processorStringValue {
     case "Intel":
         // друк інформації для товару з процесором Intel
     case "AMD":
         // друк інформації для товару з процесором AMD
     default:
         // друк пустої строки
     }
    
 */

print("")
print("")
for (index, product) in cart.enumerated() {
    switch product.processor {
    case "Intel":
        print("------------------- \(index + 1) -------------------")
        print("Product name: \(product.productName), price: \(product.price) \(product.currency)")
    case "AMD":
        print("------------------- \(index + 1) -------------------")
        print("Product name: \(product.productName), price: \(product.price) \(product.currency)")
    default :
        print()
    }
}


/*
 
 Розділ 2 - Функції
 
 */

/*
 
 Пункт 2.1
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію без параметрів,
 яка виведе інформацю про товари з кошика тільки з процесором Inetel
 у консоль у наступному форматі:
 
 ------------------- Inetel -------------------------------
 1 Назва товару: значення товару
 2 Назва товару: значення товару
 3 Назва товару: значення товару
 ...
 n Назва товару: значення товару // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Inetel -------------------------------
    1 Назва товару: ASRock H310CV-HD
    2 Назва товару: Asus Prime H310M-E R2.0
    ...
    n Назва товару: Asus WS C246 Pro // n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її
 
 */

print("")
print("")
func printIntelProducts() {
    var count = 1
    for product in cart {
        
        if product.processor == "Intel" {
            print("------------------- Intel -------------------")
            print("\(count) Product name: \(product.productName)")
            count += 1
        }
    }
}

printIntelProducts()



/*
 
 Пункт 2.2
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію з параметром максимальна ціна (maxPrice: Double),
 яка виведе інформацю про товари з кошика тільки з ціною, яка менше за значення maxPrice
 у консоль у наступному форматі:
 
 ------------------- Товари з ціною менше значення -------------------------------
 1 Назва товару: значення, Ціна: знак валюти і значення
 2 Назва товару: значення, Ціна: знак валюти і значення
 3 Назва товару: значення, Ціна: знак валюти і значення
 ...
 n Назва товару: значення, Ціна: знак валюти і значення // n - номер останнього товару
 ------------------------------------------------------
 
 наприклад:
    ------------------- Товари з ціною менше 4500.00 -------------------------------
    1 Назва товару: ASRock H310CV-HD, Ціна: 1717.00 ₴
    ...
    n Назва товару: Asus WS C246 Pro, Ціна: 2299.0// n - номер останнього товару
    ------------------------------------------------------
 
 !! не забудьте перевірити роботу функції викликавши її з максимальним значенням на свій розсуд для перевірки
 
 */

print("")
print("")
//@MainActor - спочатку без цього не працювало
func printPriceProduct(maxPrice: Double) {
    var count = 1
    for product in cart {
        if product.price < maxPrice {
            print(" ------------------- Products priced less than \(maxPrice) -------------------")
            print("\(count) Product name: \(product.productName), price: \(product.price) \(product.currency)")
            count += 1
        }
    }
}

printPriceProduct(maxPrice: 4500.0)



/*
 
 Пункт 2.3
 
 ! Для вирішення наступною задачі використовуйте будь-які цикли та інструменти.
 
 Зарезервувати (описати) функцію яка приймає параметром тип процесору (processor: String),
 та повертає найдорожчий товар (тобто поіністю елемент типу ProductInfo) з вказаним процесором processor
 
 результат записати у константу та вивести у консоль у форматі:
 ------------------- Найдорожчий товар за процесором значення -------------------------------
 Назва товару: значення, Ціна: знак валюти і значення
 ------------------------------------------------------
 
 наприклад:
 
     ------------------- Найдорожчий товар за процесором Intel -------------------------------
     Назва товару: Asus WS C246 Pro, Ціна: 10979.00 ₴
     -----------------------------------------------------------------------------------------
 
 */

print("")
print("")
func theMostExpensiveProductByProcessor(processor: String) -> ProductInfo {
    var productMaxPrice: ProductInfo? = nil
    var maxPrice: Double = 0

    for product in cart {
        if product.processor == processor {
            if product.price > maxPrice {
                maxPrice = product.price
                productMaxPrice = product
            }
        }
    }
    
    return productMaxPrice!
}

let maxPriceIntel = theMostExpensiveProductByProcessor(processor: "Intel")
print("------------------- The most expensive product with processor \(maxPriceIntel.processor) -------------------")
print("Product name: \(maxPriceIntel.productName), price: \(maxPriceIntel.price)")


/*
 
 Розділ 3 - Перечислення / Enum
 
 */

/*
 
 Пункт 3.1
 
 Зарезервувати (описати) enum для типу процесора ProcessorType, який матиме 2 випадки (cases) з тестовим описом
 - intel = "Intel"
 - amd = "AMD"
 
 створити змінну типу створенного enum з якимось із значень
 
 */

print("\n")
enum ProcessorType: String {
    case intel = "Intel"
    case amd = "AMD"
}

let myProcessor: ProcessorType = .intel
print(myProcessor.rawValue)


/*
 
 Пункт 3.2
 
 Зарезервувати (описати) enum для валюти (Currency), який матиме 3 випадки (cases) з тестовим описом
 - uah = "UAH"
 - usd = "USD"
 - eur = "EUR"
 
 створити змінну типу створенного enum з якимось із значень
 
 */

print("\n")
enum Currency: String {
    case uah = "UAH"
    case usd = "USD"
    case eur = "EUR"
}

let ukrainianCurrency: Currency = .uah
let usaCurrency: Currency = .usd
print("Ukraine have \(ukrainianCurrency.rawValue) currency")
print("USA have \(usaCurrency.rawValue) currency")

/*
 
 Розділ 4 - Структури і класи
 
 */

/*
 
 Пункт 4.1

 Описати структуру MotherBoard (Материньска плата)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - socet типу String
 - processor типу ProcessorType (enum, оголошений у розділі Перечислення)
 
 створити змінну типу MotherBoard і спробувати поміняти їй інші значення
 
 */






/*
 
 Пункт 4.2

 Описати клас Product (опис продукту)
 з наступними полями (змінними із будь-якими параметрами за замовчуванням):
 - name типу String
 - price типу Double
 - currency типу Currency (використати enum з розділу 3 пункт 3.2)
 - motherBoard типу MotherBoard (використати структуру MotherBoard з розділу 4 пункт 4.1)
 
 створити змінну типу Product і спробувати поміняти їй інші значення
 
 */





