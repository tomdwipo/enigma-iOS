import UIKit

var greeting = "Hello, playground"


// #contant variable

var testing = true
let testing2 = "test2"


var testing3 = testing2 + " test"
print(testing3)
// \()
testing3 = "\(testing2) testin"
testing3 = "\(testing)"
print(testing3)


var tuple = (angka: 3, variable: "test", gds: "gdsgdf")

var test = tuple.angka

func namafungsi() -> (boolean: Bool, testing: String) {
    return (true, "trd")
}

print(namafungsi().testing)
print(tuple.angka)
print(tuple.variable)


var optionals: String?

if let opt = optionals {
    print(opt)
}else{
    print("ga ada")
}

func test5() {
    guard let opt2 = optionals else {
        print("else")
        return }
    
    
    print ("ggdfgdf")
    print(opt2)
}
test5()

var array: [Int] = [0,1]

array.append(5)
print(array)

var dict: [Int: Any] = [0: "value", 5:true]

dict[56] = "gdfg"



func seu(angka: Int){
    print(angka)
}

func seu2(_ angka: Int = 6) {
    print(angka)
}


seu(angka: 56)
seu2()

var tuple5 = (angka: 5, angk3: 4)


var dict7: [String: Any] = ["angka": ["trdt", "tsdgtds"], "angk3": 4]
dict7["angkA"] = "80"

print(dict7)

tuple5.angka


var force: String? = ""

print(force ?? "optional binding")

print(force == nil ? true : false)

if force == nil {
    print(true)
}else if (force == "gdfg"){
    print(false)
}else {
    print("")
}

switch force {
case nil:
    print("gd")
default:
    print("")
}

let array4 = [60,7,8,8,6,5,7,8]

for value in array4 {
    print(value)
}

for index in 0..<array4.count {
    print(array4[index])
}

for index in stride(from: 0, to: 10, by: 1) {
    print("index \(index)")
}

let dict45 = ["k0":0, "k1": 1]

for (key , value) in dict45 {
    print("\(key): \(value)")
}

let tuple77 = (key: ["keY" : 21], vale:7)


print(tuple77.key["keY"] ?? "kosong")


"""
{
"json" : "46",
"test": 65
"""

//value type
struct Model {
    let json: String
    let test: Int
}

struct B {
    var b: Int
    init(b: Int) {
        self.b = b
    }
}

//value reference type
class A {
    var a: Int
    init(a: Int){
        self.a = a
    }
}

var a = A(a: 6)

var b = a

b.a = 9

print(a.a)
print(b.a)

var c = B(b: 6)

var d = c

d.b = 9

print(d.b)
print(c.b)




