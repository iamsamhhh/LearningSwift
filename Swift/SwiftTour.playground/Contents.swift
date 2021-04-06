func helloWorld(){
    print("Hello world")
}

//helloWorld()

func simpleValue(){
    var myVariable = 42
    myVariable = 50
    let myConstant = 42

    let implicitInteger = 70
    let implicitDouble = 70.0
    let explicitDouble: Double = 70

    let label = "The width is "
    let width = 94
    let widthLabel = label + String(width)

    let apples = 3
    let oranges = 5
    let appleSummary = "I have \(apples) apples."
    let fruitSummary = "I have \(apples + oranges) pieces of fruit."

    let quotation = """
    I said "I have \(apples) apples."
    And then I said "I have \(apples + oranges) pieces of fruit."
    """


    var shoppingList = ["catfish", "water", "tulips"]
    shoppingList[1] = "bottle of water"

    var occupations = [
        "Malcolm": "Captain",
        "Kaylee": "Mechanic",
    ]
    occupations["Jayne"] = "Public Relations"

    shoppingList.append("blue paint")
    print(shoppingList)

    let emptyArray = [String]()
    let emptyDictionary = [String: Float]()

    shoppingList = []
    occupations = [:]
}

//simpleValue()

func controlFlow(){
    let individualScores = [75, 43, 103, 87, 12]
    var teamScore = 0
    for score in individualScores {
        if score > 50 {
            teamScore += 3
        } else {
            teamScore += 1
        }
    }
    print(teamScore)


    let optionalString: String? = "Hello"
    print(optionalString == nil)
    // Prints "false"

    let optionalName: String? = "John Appleseed"
    var greeting = "Hello!"
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }

    let nickname: String? = nil
    let fullName: String = "John Appleseed"
    // providing a default value using ??
    let informalGreeting = "Hi \(nickname ?? fullName)"

    let vegetable = "red pepper"
    switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
    }

    let interestingNumbers = [
        "Prime": [2, 3, 5, 7, 11, 13],
        "Fibonacci": [1, 1, 2, 3, 5, 8],
        "Square": [1, 4, 9, 16, 25],
    ]
    var largest = 0
    for (_, numbers) in interestingNumbers {
        for number in numbers {
            if number > largest {
                largest = number
            }
        }
    }
    print(largest)

    var n = 2
    while n < 100 {
        n *= 2
    }
    print(n)
    // Prints "128"

    var m = 2
    repeat {
        m *= 2
    } while m < 100
    print(m)

    var total = 0
    for i in 0..<4 {
        total += i
    }
    print(total)
}

//controlFlow()

func functionsAndClosures(){
    func greet(_ person: String, on day: String) -> String {
        return "Hello \(person), today is \(day)."
    }
    greet("John", on: "Wednesday")

    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0

        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }

        return (min, max, sum)
    }
    let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
    print(statistics.sum)
    // Prints "120"
    print(statistics.2)
    // Prints "120"

    func returnFifteen() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add()
        return y
    }
    returnFifteen()

    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    let increment = makeIncrementer()
    increment(7)

    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
    let numbers = [20, 19, 7, 12]
    hasAnyMatches(list: numbers, condition: lessThanTen)

    numbers.map({ (number: Int) -> Int in
        let result = 3 * number
        return result
    })

    let mappedNumbers = numbers.map({ number in 3 * number })
    print(mappedNumbers)
    // Prints "[60, 57, 21, 36]"

    let sortedNumbers = numbers.sorted { $0 > $1 }
    print(sortedNumbers)
    // Prints "[20, 19, 12, 7]"
}

//functionsAndClosures()

func objectsAndClasses(){
    class Shape {
        var numberOfSides = 0
        func simpleDescription() -> String {
            return "A shape with \(numberOfSides) sides."
        }
    }
    
    let shape = Shape()
    shape.numberOfSides = 7
    shape.simpleDescription()
    
    class NamedShape {
        var numberOfSides: Int = 0
        var name: String

        init(name: String) {
            self.name = name
        }

        func simpleDescription() -> String {
            return "A shape with \(numberOfSides) sides."
        }
    }
    
    class Square: NamedShape {
        var sideLength: Double

        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 4
        }

        func area() -> Double {
            return sideLength * sideLength
        }

        override func simpleDescription() -> String {
            return "A square with sides of length \(sideLength)."
        }
    }
    let test = Square(sideLength: 5.2, name: "my test square")
    test.area()
    test.simpleDescription()
    
    class EquilateralTriangle: NamedShape {
        var sideLength: Double = 0.0

        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 3
        }

        var perimeter: Double {
            get {
                return 3.0 * sideLength
            }
            set {
                sideLength = newValue / 3.0
            }
        }

        override func simpleDescription() -> String {
            return "An equilateral triangle with sides of length \(sideLength)."
        }
    }
    var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
    print(triangle.perimeter)
    // Prints "9.3"
    triangle.perimeter = 9.9
    print(triangle.sideLength)
    // Prints "3.3000000000000003"
    
    class TriangleAndSquare {
        var triangle: EquilateralTriangle {
            willSet {
                square.sideLength = newValue.sideLength
            }
        }
        var square: Square {
            willSet {
                triangle.sideLength = newValue.sideLength
            }
        }
        init(size: Double, name: String) {
            square = Square(sideLength: size, name: name)
            triangle = EquilateralTriangle(sideLength: size, name: name)
        }
    }
    var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
    print(triangleAndSquare.square.sideLength)
    // Prints "10.0"
    print(triangleAndSquare.triangle.sideLength)
    // Prints "10.0"
    triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
    print(triangleAndSquare.triangle.sideLength)
    // Prints "50.0"
    
    let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
    let sideLength = optionalSquare?.sideLength
}

objectsAndClasses()

func enumerationsAndStructures(){
    enum Rank: Int {
        case ace = 1
        case two, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king

        func simpleDescription() -> String {
            switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
            }
        }
    }
    let ace = Rank.ace
    let aceRawValue = ace.rawValue
    
    if let convertedRank = Rank(rawValue: 3) {
        let threeDescription = convertedRank.simpleDescription()
    }
    
    enum Suit {
        case spades, hearts, diamonds, clubs

        func simpleDescription() -> String {
            switch self {
            case .spades:
                return "spades"
            case .hearts:
                return "hearts"
            case .diamonds:
                return "diamonds"
            case .clubs:
                return "clubs"
            }
        }
    }
    let hearts = Suit.hearts
    let heartsDescription = hearts.simpleDescription()
}

enumerationsAndStructures()
