func bubblesort(test : inout [Int])-> [Int] {   //氣泡排序法  
//<-inout.jpg
    var temp:Int
    for _ in 0...test.count{
    for count in 0...test.count-2{   
       if(test[count]>test[count+1])
       {
           temp=test[count]
           test[count]=test[count+1]
           test[count+1]=temp
       }     
    }
    }
    return test
    }
var test1=[99,88,44,55,77,66,33,22,11]
print(bubblesort(test:&test1)) // {11,22,33,44,55,66,77,88,99}

  
func minMax(array:[Int])->(min:Int,max:Int){ //取最大最小
    var cmin = array[0]
    var cmax = array[0]
    for value in array[0..<array.count]
    {
if value < cmin{
    cmin=value
}
else if value > cmax
{

    cmax=value
}
    }
    return (cmin,cmax)
}
var bounds=minMax(array:[8,-7,28,33,45])
print("\(bounds.min) and \(bounds.max)")

varible(members:4,5,83,24)

func varible<N>(members: N...){
    for i in members{
        print(terminator:"\(i) ")
    }
}

func change(_ v1:inout Int , _ v2:inout Int)->(Int,Int){ //數值互換
        var temp:Int
        temp=v1
        v1=v2
        v2=temp
        return (v1,v2)
}
var v1=2
var v2=10
print(change(&v1,&v2))


//    ****/5*    
let str = "abcde"  //(String)
var number=[UInt32](repeating:0 ,count:str.count/*字串長度*/)// 有預設值的陣列   
var count = 0//計數陣列索引值

// <---unicode Scalars.jpg
for code in str.unicodeScalars {  //存取Unicode純量,重複str的字串長度次數  
    number[count] = code.value    
        switch number[count] {   //switch basic
    case  97,101,108,111,117 : //ASCII碼
    print("\(code) is a vowel")//母音
    default:
    print("\(code) is not a vowel")   
}    
count+=1
}

var arr7=["test1","test2","test3"]
for (index, value) in arr7.enumerated() {
    print("Item \(index + 1): \(value)")
}


var someset : Set<Int>=[10,20,30,40]
    
    print(someset.count)
    print(someset.isEmpty)
    someset=[50,40,30,20,10]


var zoo:Set = ["大老鷹","小烏龜","長頸鹿"]   //Set集合 沒有索引值,無法重複

if zoo.contains("大老鷹"){       //boooooooooooooooooooooooooooooooooooooooooooolean
    print("big eagle")
}
zoo.insert("眼鏡沒有蛇")

var  Eric : [ String : Any] = [     //字典,自訂索引值
    "髮色" :"黑色",
    "身高" :174,
    "體重" :73
]

var nums = [[Int]]()  //二維陣列

nums.append([1,2,3]) 

nums.append([4,5,6,7,8,9])

print(nums[0][1])


public struct Array2D<T> {
  public let columns: Int
  public let rows: Int
  private var array: [T]

  public init(columns: Int, rows: Int, initialValue: T) {
    self.columns = columns
    self.rows = rows
    array = .init(repeating: initialValue, count: rows*columns)
  }

  public subscript(column: Int, row: Int) -> T {
    get {
      return array[row*columns + column]
    }
    set {
      array[row*columns + column] = newValue
    }
  }
}
func addTen(number: Int) -> Int {
    let n = number + 10
    return n
}
//var mathFunction: (Int) -> Int = addTen  //  使用函式型別宣告


func addTwoInts(_ number1:Int,_ number2:Int) ->Int{
    return number1+number2
}
func printMathResult(
    _ mathFunction:(Int,Int)->Int ,_ a:Int,_ b:Int){   
    print("Result:\(mathFunction(a,b))")
}
printMathResult(addTwoInts,3,5)


func stepForward(input:Int)->Int{      //global
    return input+1
}
func stepBackward(input:Int)->Int{
    return input-1
}

func chooseStepFunction(_ backwards:Bool)->(Int)->Int{
    func stepForward(input:Int)->Int{           //nested
    return input+1
}
func stepBackward(input:Int)->Int{
    return input-1
}
    return backwards ? stepBackward : stepForward
}

let number3=3
let someFunction2 = chooseStepFunction(number3 < 0)
print(someFunction2(10))

printMathResult({number1:Int,number2:Int in 

return number1+number2
},12,85)








/*let  names=["Chris","Alex","Ewa","Barry","Daniel"]

var reversed = sorted(names,{(s1:String,s2:String)->Bool in
            return s1>s2}
            )*/
    

    

             
                








