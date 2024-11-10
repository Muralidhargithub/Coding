// leet 1.Check if a Given String is Palindrome or Not Without Finding the Reverse

//import Foundation
//public class Reverse{
//    public static func reversed(_ arr:String) -> String{
//        var charr=Array(arr)
//        var left=0
//        var right=charr.count-1
//        while(left<right){
//            var temp = charr[left]
//            charr[left] = charr[right]
//            charr[right] = temp
//            left += 1
//            right -= 1
//        }
//        let reversedstring=String(charr)
//        if reversedstring == arr{
//            return reversedstring
//        }
//        else{
//            return "not same"
//        }
//    }
//}
//
//let original="moom"
//let reve = Reverse.reversed(original)
//print("the out put is \(original) and reversed \(reve)")


// leet2 2.Remove Characters from the First String Which Are Present in the Second String


//////func remove(from str1:String, second str2:String)->String{
//////    var str3:String=""
//////    for char in str1{
//////        if !str2.contains(char){
//////            str3.append(char)
//////        }
//////    }
//////    return str3
//////}
//////
//////let first="murali"
//////let second="dhar"
//////print(remove(from:first, second:second))
///
///
///
////
//////classes
////
//////class Session2 {
//////    var topic: String
//////    var programming: String
//////    
//////    init(topic: String, programming: String) {
//////        self.topic = topic
//////        self.programming = programming
//////    }
//////    func printMemory(){
//////            print("classes stored in \(programming) memory")
//////        }
//////}
//////var ses = Session2(topic: "classes", programming: "swift")
//////var ses2 = ses
//////ses2.topic = "struct"
//////
//////print(ses.topic)
//////print(ses2.topic)
//////var ses5 = ses
//////print(ses5.topic)
////
////
////
//////------------------------------------------------------deinit------------------------------------------------
////
////class Session2 {
////    var topic: String
////    var programming: String
////    
////    init(topic: String, programming: String) {
////        self.topic = topic
////        self.programming = programming
////    }
////
////    func printMemory() {
////        print("classes stored in \(programming) memory")
////    }
////    
////    deinit {
////        print("\(topic) topic and \(programming) programming is deinitialized.")
////    }
////}
////
//////var ses:Session2? = Session2(topic: "classes", programming: "swift")
//////var ses2 = ses
//////
//////ses2?.topic = "struct"
//////print(ses?.topic ?? "nil")
//////
//////ses = nil
//////ses2 = nil
////
//////-------------or---------------------//
////do{
////    var ses=Session2(topic: "classes", programming: "swift")
////}
////
////
////
////
////
//////-----------------------------------------------Struct---------------------------------------------------//
//////struct Session2 {
//////    var topic: String
//////    var programming: String
//////}
//////var ses = Session2(topic: "classes", programming: "swift")
//////var ses2 = ses
//////ses2.topic = "struct"
//////
//////print(ses.topic)
//////print(ses2.topic)
////
////
////
//////------------------------------------------------------class inheritence--------------------------------------------//
//////class Session3:Session2{
//////    var memory:String
//////    
//////    init(memory:String, topic:String, programming:String){
//////        self.memory = memory
//////        super.init(topic:topic, programming:programming)
//////    }
//////    
//////    override func printMemory(){
//////        print("programming used \(programming) classes stored in \(memory) memory that is why slow")
//////    }
//////}
//////
//////let sess = Session2(topic:"class", programming: "Swift")
//////ses.printMemory()
//////let ses3 = Session3(memory:"heap", topic: "classes", programming: "object c")
//////ses3.printMemory()
//////
///
///leet3 Count the Number of Occurrences of Each Char in the Input String
///
//func charCount(_ str1:String){
//    var chardict = [Character:Int]()
//    for char in str1{
//        chardict[char,default:0] += 1
//    }
//    for (char,count) in chardict{
//        print("\(char) occurs \(count) times")
//    }
//    
//}
//
//charCount("muralidhar")

//leet4  Find the Most Recurring Char in the Input String

//func recurring(_ str:String){
//    var cnt=0
//    
//    var charact=[Character]()
//    var charDict=[Character:Int]()
//    for char in str{
//        charDict[char,default:0] += 1
//    }
//    for (char,count) in charDict{
//        if count>cnt{
//            cnt=count
//            charact = [char]
//        }else if count == cnt{
//            charact.append(char)
//        }
//    }
//    print("\(charact) occurs \(cnt) times")
//    
//}
//
//recurring("muralidhar")


////
////
////
//////------------------------------------------Arc----------------------------------------------//
//practice problem Nov 7
//class Parent{
//    var name:String
//    var child:Child?
//    
//    init(name:String){
//        self.name=name
//        print("initializing the \(name)")
//    }
//    deinit{
//        print("\(name) get deinitialzed")
//    }
//}
//
//
//class Child{
//    var name:String
//    unowned var parent:Parent?
//    
//    init(name:String){
//        self.name=name
//        print("initializing the \(name)")
//    }
//    deinit{
//        print("\(name) get deinitialzed")
//    }
//}
//
//var mother: Parent? = Parent(name: "Mother")
//var kid: Child? = Child(name: "Kid")
//
//mother?.child = kid
//kid?.parent = mother
//
//mother=nil
//kid=nil
//


//------------------optionals---------------------------//
//var mybool:Bool=true
//var mybool1:Bool?=true
//
//var new:Bool=mybool1 ?? false
//print(new)
//
//var str:String?
//
//var string1=str ?? "string default"
//print(string1)

//func user() -> Bool{
//    var usp:Bool?=nil
//
//    if let newv = usp{
//        return newv
//    }
//    else{
//        return false
//    }
//}
//user()



//struct Automobile {
//    var make: String
//    var model: String
//    var year: Int?
//}
//
//var car1 = Automobile(make: "Toyota", model: "Corolla", year: 2020)
//var car2 = Automobile(make: "Ford", model: "Fiesta", year: nil)
//
//if let carYear = car1.year {
//    print("The car is from the year \(carYear)")
//} else {
//    print("The manufacturing year is unknown")
//}
//
//func printCarYear(car2:Automobile){
//    guard let carYear = car2.year else{
//        print("it will print nil")
//        return
//    }
//    print("the year of the car is \(car2.year ?? 0)") //nil coale
//}
//printCarYear(car2:car2)
//
//var yea=car1.year!
//print("the year of a car \(yea)")



//class Automobile {
//    var make: String
//    var model: String
//    var year: Int?
//
//    init(make: String, model: String, year: Int?) {
//        self.make = make
//        self.model = model
//        self.year = year
//    }
//}
//
//let car1 = Automobile(make: "Toyota", model: "Corolla", year: 2020)
//let car2 = Automobile(make: "Ford", model: "Fiesta", year: nil)
//
//if let carYear = car1.year {
//    print("The car is from the year \(carYear)")
//} else {
//    print("The manufacturing year is unknown")
//}
//
//func printCarYear(car: Automobile) {
//    guard let carYear = car.year else {
//        print("The manufacturing year is unknown")
//        return
//    }
//    print("The year of the car is \(carYear)")
//}
//
//printCarYear(car: car2)
//
//let year=car2.year ?? 0
//print("the year of car is \(year)")
//
//let year1=car1.year!
//print("the year of the car \(year1)")
//}
//
//leet 5 Remove Duplicate Chars from the Input String
//
//func removeDuplicateChars(_ inputString:String)->String{
//    var uniqueChars:Set<Character>=[]
//    for char in inputString{
//        if !uniqueChars.contains(char){
//            uniqueChars.insert(char)
//        }
//    }
//    return String(uniqueChars)
//}
//
//let res:String=removeDuplicateChars("muralidhar")
//print("the non dulpicated character string \(res)")

// order is missing with the above code

//lets try using char list

func removeDuplicateChars(_ inputString:String)->String{
    var uniqueList:[Character]=[]
    for char in inputString{
        if !uniqueList.contains(char){
            uniqueList.append(char)
        }
    }
    return String(uniqueList)
}

let res:String=removeDuplicateChars("muralidhar")
print("the non dulpicated character string \(res)")
