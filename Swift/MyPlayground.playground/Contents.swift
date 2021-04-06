var str = "Hello, playground"

class Vector3 {
    init(x: Double, y: Double, z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    var x: Double
    var y: Double
    var z: Double
    
    static let zero: Vector3 = Vector3(x: 0, y: 0, z: 0)
    static let one: Vector3 = Vector3(x: 1, y: 1, z: 1)
    static let forward: Vector3 = Vector3(x: 0, y: 0, z: 1)
    static let back: Vector3 = Vector3(x: 0, y: 0, z: -1)
    static let up: Vector3 = Vector3(x: 0, y: 1, z: 0)
    static let down: Vector3 = Vector3(x: 0, y: -1, z: 0)
    static let right: Vector3 = Vector3(x: 1, y: 0, z: 0)
    static let left: Vector3 = Vector3(x: -1, y: 0, z: 0)
}

class Transform{
    
}

var v3 = Vector3(x: 3, y: 3, z: 4)

var x = v3.x
var y = v3.y
var z = v3.z

v3.x = x + 1
v3.y = y - 1
v3.z = z + 1

var lst : [Int] = []



print(lst)

func CatchValue(value: Double, onCatched: () -> Void, onNotCatched: ()->Void) ->Bool{
    if value != 0.0 {
        onCatched()
        return true
    }
    onNotCatched()
    return false
}

CatchValue(value: 3.0){
    print("value Catched, the value is \(y)")
}onNotCatched: {
    print("the value is 0")
}

func test(OnTest: (Int) -> Int)-> Int{
    let aNum = 3
    return OnTest(aNum)
}

test(){
    (a:Int)->Int in
    
    return a + 1
}

let a : (Int,Int)-> (Vector3) = {
    (a:Int,b:Int)->Vector3 in
    
    Vector3(x: 1.0, y: 2.0, z: 9.0)
}
