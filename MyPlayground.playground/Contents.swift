import UIKit //加载类库
var str = "Hello, playground"

/*声明方式*/
//命名可以用字母、数字、下划线，不能以数字开头，区分大小写（同oc）    swift强类型语言，自动判断类型

/*var 变量*/
var varConstant = 2
var varx = 1, vary = 2, varz = 3
var varString: String = "varString"
var varx1, varx2, varx3: Int //这种声明比较少见

/*常见数据类型*/
//Int、String、UInt、Float（表示32位浮点数）、Double（表示64位浮点数）、Bool、Character、Optional（使用可选类型来处理值可能缺失的情况。可选类型表示有值或没有值。）Array, Dictionary, Struct, 和 Class
//Double精确度很高，至少有15位数字，而 Float 最少只有6位数字
//在 32 位系统上, Int 和 Int32 长度相同。
//在 64 位系统上, Int 和 Int64 长度相同。
//在 32 位系统上, UInt 和 UInt32 长度相同。
//在 64 位系统上, UInt 和 UInt64 长度相同。
//Int8, Int16, Int32, Int64 分别表示 8 位, 16 位, 32 位, 和 64 位的有符号整数形式。
//UInt8, UInt16, UInt32, UInt64 分别表示 8 位, 16 位, 32 位 和 64 位的无符号整数形式。
Int.max//Int最大值
Int.min
print("\(varConstant)")     //在字符串中可以使用括号与反斜线来插入变量

/*let 常量一旦设定，在程序运行时就无法改变其值*/
let letConstant = "letConstantString"//let声明格式同var

/*类型别名*/
//语法格式：typealias newname = type, 如定义了 Int 的类型别名为 Feet
typealias Feet = Int
var distance: Feet = 100

/*类型安全*/
var varA = 42
//varA = "This is hello", 报错varA已经是Int类型，再给赋String类型，报错

/*类型推断*/
let meaningOfLife = 42      // meaningOfLife 会被推测为 Int 类型
let pi = 3.14159        // pi 会被推测为 Double 类型
//当推断浮点数的类型时，Swift 总是会选择Double而不是Float。如果表达式中同时出现了整数和浮点数，会被推断为Double类型
let anotherPi = 3 + 0.14159     // anotherPi 会被推测为 Double 类型
//1.3   Optional可选类型，用于处理值缺失的情况,可选表示"那儿有一个值，并且它等于 x "或者"那儿没有值"。
//语法格式：类型后缀加？作为命名类型Optional的简写，类型和?之间没有空格
var optionalInteger: Int?       //简写
var optionalInteger1: Optional<Int>     //或者这么写
//在这两种情况下，变量 optionalInteger 都是可选整数类型。注意，在类型和 ?之间没有空格。Optional 是一个含有两种情况的枚举，None 和 Some(T)，用来表示可能有或可能没有值。任何类型都可以明确声明为（或者隐式转换）可选类型。当声明一个可选类型的时候，要确保用括号给 ? 操作符一个合适的范围。例如，声明可选整数数组，应该写成 (Int[])? 写成 Int[]? 会报错。
//当你声明一个可选变量或者可选属性的时候没有提供初始值，它的值会默认为 nil。
//可选项遵照 LogicValue 协议，因此可以出现在布尔环境中。在这种情况下，如果可选类型T?包含类型为T的任何值（也就是说它的值是 Optional.Some(T) ），这个可选类型等于 true，反之为 false。
//如果一个可选类型的实例包含一个值，你可以用后缀操作符 ！来访问这个值，如下所示：
optionalInteger = 42
optionalInteger! // 42

/*强制解析*/
//当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。这个感叹号表示"我知道这个可选有值，请使用它。"这被称为可选值的强制解析（forced unwrapping）。
var myString:String?
    myString = "Hello, Swift!"
if myString != nil {
    //print(myString)     //Optional("Hello, Swift!")
    // 强制解析
    print( myString!)       //Hello, Swift!
}else{
    print("字符串为 nil")
}

/*自动解析*/
//你可以在声明可选变量时使用感叹号（!）替换问号（?）。这样可选变量在使用时就不需要再加一个感叹号（!）来获取值，它会自动解析。
//var myString:String!

/*可选绑定*/
//使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。
//可选绑定可以用在if和while语句中来对可选类型的值进行判断并把值赋给一个常量或者变量。
//格式：
//if let constantName = someOptional {
//    statements
//}
//例如上面
if let yourString = myString {
    print("你的字符串值为 - \(yourString)")
}else{
    print("你的字符串没有值")
}

/*浮点型字面量*/
//十进制浮点型字面量由十进制数字串后跟小数部分或指数部分（或两者皆有）组成。十进制小数部分由小数点 . 后跟十进制数字串组成。指数部分由大写或小写字母 e 为前缀后跟十进制数字串组成，这串数字表示 e 之前的数量乘以 10 的几次方。例如：1.25e2 表示 1.25 ⨉ 10^2，也就是 125.0；同样，1.25e－2 表示 1.25 ⨉ 10^－2，也就是 0.0125。
//十六进制浮点型字面量由前缀 0x 后跟可选的十六进制小数部分以及十六进制指数部分组成。十六进制小数部分由小数点后跟十六进制数字串组成。指数部分由大写或小写字母 p 为前缀后跟十进制数字串组成，这串数字表示 p 之前的数量乘以 2 的几次方。例如：0xFp2 表示 15 ⨉ 2^2，也就是 60；同样，0xFp-2 表示 15 ⨉ 2^-2，也就是 3.75。
//负的浮点型字面量由一元运算符减号 - 和浮点型字面量组成，例如 -42.5。
//浮点型字面量允许使用下划线 _ 来增强数字的可读性，下划线会被系统忽略，因此不会影响字面量的值。同样地，也可以在数字前加 0，并不会影响字面量的值
var varFloat = 1000_000_000 //增加可读性
let decimalDouble = 12.1875       //十进制浮点型字面量
let exponentDouble = 1.21875e1    //十进制浮点型字面量
let hexadecimalDouble = 0xC.3p0   //十六进制浮点型字面量

/*字符串型字面量*/
//字符串型字面量中不能包含未转义的双引号 （"）、未转义的反斜线（\）、回车符或换行符。
//字符串型字面量由被包在双引号中的一串字符组成，形式如下：
"characters"
//转义字符    含义
//\0    空字符
//\\    反斜线 \
//\b    退格(BS) ，将当前位置移到前一列
//\f    换页(FF)，将当前位置移到下页开头
//\n    换行符
//\r    回车符
//\t    水平制表符
//\v    垂直制表符
//\'    单引号
//\"    双引号
//\000    1到3位八进制数所代表的任意字符
//\xhh...    1到2位十六进制所代表的任意字符

/*布尔型字面量*/
//布尔型字面量的默认类型是 Bool。
//布尔值字面量有三个值，它们是 Swift 的保留关键字：
//true 表示真。false 表示假。nil 表示没有值。

/*运算符*/
//算术运算符：+、-、*、/、%       //swift3 中已经取消了++、--。
//比较运算符：==、!=、>、<、>=、<=
//赋值运算符：=、+=、-=、*=、/= 、%=、<<=（按位左移后再赋值C <<= 2 相当于 C = C << 2）、>>=、 &=（按位与运算后赋值C &= 2相当于C = C & 2）、^=（按位异或运算符后再赋值C ^= 2相当于C = C ^ 2）、|=（按位或运算后再赋值C |= 2相当于C = C | 2）
//逻辑运算符：&&、||、！
//位运算符：位运算符用来对二进制位进行操作，~，&，|，^分别为取反，按位与与，按位与或，按位与异或运算
//区间运算符：闭区间运算符（a...b）如：1...5 区间值为 1, 2, 3, 4 和 5；半开区间运算符（a.. 如：1..< 5 区间值为 1, 2, 3, 和 4
//三元运算符：condition ? X : Y 如果 condition 为 true ，值为 X ，否则为 Y

/*条件语句: if、if else、white、switch等*/
/*循环语句*/
//for-in、repeat...while(类似 while 语句区别在于判断循环条件之前，先执行一次循环的代码块。)
/*循环控制语句*/
//continue     告诉一个循环体立刻停止本次循环迭代，重新开始下次循环迭代。
//break       中断当前循环。
//fallthrough        如果在一个case执行完后，继续执行下面的case，需要使用fallthrough(贯穿)关键字。

/*字符串   String*/
// 使用字符串字面量创建空字符串
var stringA = ""
// 实例化 String 类来创建空字符串
let stringB = String()
stringA += "http://www.runoob.com"
//isEmpty、count、append、hasPrefix(prefix: String)、hasSuffix(suffix: String)、Int(String)、utf8、utf16、unicodeScalars（通过遍历String值的unicodeScalars属性来访问它的 Unicode 标量编码）、
//比较
if stringA == stringB {//<、>对两个字符串的字母逐一比较
}
/*Unicode 字符串*/
//Unicode 是一个国际标准，用于文本的编码，Swift 的 String 类型是基于 Unicode建立的。你可以循环迭代出字符串中 UTF-8 与 UTF-16 的编码
for code in stringA.utf8 {//nicodeScalars
    print("\(code) ")
}

/*字符    Character*/
//不能创建空的 Character（字符） 类型变量或常量
//let char1: Character = ""     error: cannot convert value of type 'String' to specified type 'Character'
//便利字符串中的字符
for ch in "Runoob" {
    print(ch)
}

/*数组*/
//构造语法来创建一个由特定数据类型构成的空数组：
//var someArray = [SomeType]()
var someArray = [String]()
someArray = ["aaa", "bbb", "ccc"]
//创建一个初始化大小数组的语法：
//var someArray = [SomeType](repeating: InitialValue, count: NumbeOfElements)
//类型为 Int ，数量为 3，初始值为 0 的空数组
var someInts = [Int](repeating: 0, count: 3)
var someInt:[Int] = [10, 20, 30]
var someAny = Array<Any>()
someAny = ["aaa", 2]
var someAnyObjectArray = [AnyObject]()

/*修改数组*/
//可以使用 append() 方法或者赋值运算符 += 在数组末尾添加元素
someInt.append(20)
someInt += [40]
someInt[3] = 50
for item in someInt {
    print(item)
}
//如果我们同时需要每个数据项的值和索引值，可以使用 String 的 enumerate() 方法来进行数组遍历。实例如下：
var someStrs = [String]()
someStrs.append("Apple")
someStrs.append("Amazon")
someStrs.append("Runoob")
someStrs += ["Google"]

for (index, item) in someStrs.enumerated() {
    print("在 index = \(index) 位置上的值为 \(item)")
}
var someStrings = [String]()
someStrings = ["ali"]
//合并数组,同类型才能合并
var someS = someStrs + someStrings

/*字典*/
//var someDict =  [KeyType: ValueType]()
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
//访问字典
var someVar = someDict[1]
//修改
//updateValue(forKey:) 增加或更新字典的内容；updateValue(_:forKey:)方法返回Optional值
//removeValueForKey()
var oldVal = someDict.updateValue("One 新的值", forKey: 1)
print( "key = 1 旧的值 \(oldVal)" )
print( "key = 1 旧的值 \(oldVal ?? "可选值")" )
print( "key = 1 旧的值 \(String(describing: oldVal))" )
for (key, value) in someDict {
    print("字典 key \(key) -  字典 value \(value)")
}
for (key, value) in someDict.enumerated() {
    print("字典 key \(key) -  字典 (key, value) 对 \(value)")
}
//key、value数组
let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)
for (key) in dictKeys {
    print("\(key)")
}
//isEmpty、count

/*函数*/
//语法
//func funcname(参数名：类型) -> returntype
//{
//    Statement1
//    Statement2
//        ……
//    Statement N
//    return parameters
//}
//无参无返回
func function1() {
    
}
//有参有返回
func function2(para1: String, para2: Int) -> String {
    let intStr = para2
    let str = String(intStr)
    return para1 + str
}

//调用
print(function2(para1: "name", para2: 1))

/*元组作为函数返回值*/
//返回的不是一个值，是多个值，oc没有，Python有这个特性
//如果你不确定返回的元组一定不为nil，那么你可以返回一个可选的元组类型。
//你可以通过在元组类型的右括号后放置一个问号来定义一个可选元组，例如(Int, Int)?或(String, Int, Bool)?
//可选元组类型如(Int, Int)?与元组包含可选类型如(Int?, Int?)是不同的.可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("最小值为 \(bounds.min) ，最大值为 \(bounds.max)")
//func minMax(array: [Int]) -> (min: Int, max: Int)? {
//    if array.isEmpty { return nil }       //此时数组可能是空，判断
//
//}

/*外部参数名*/
//你可以在局部参数名前指定外部参数名，中间以空格分隔，外部参数名用于在函数调用时传递给函数的参数,如果你提供了外部参数名，那么函数在被调用时，必须使用外部参数名。
func sampleNumber(number: Int) {
    print(number)
}
sampleNumber(number: 2)

func sampleNum(intNum a: Int, strNum b: String) {
    
}
func pow(firstArg a: Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    print(res)
    return res
}
pow(firstArg:5, secondArg:3)

/*可变参数*/
//可变参数可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数，其数量是不确定的。
//可变参数通过在变量类型名后面加入（...）的方式来定义
func vari<N>(members: N...){
    for i in members {
        print(i)
    }
}
vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Google", "Baidu", "Runoob")

/*常量，变量及 I/O 参数*/
//一般默认在函数中定义的参数都是常量参数，也就是这个参数你只可以查询使用，不能改变它的值。
//如果想要声明一个变量参数，可以在参数定义前加 inout 关键字，这样就可以改变这个参数的值了。
func  getName(_ name: inout String){
    
}
//实例：
//func swapTwoInts(a: Int, b: Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//error: cannot assign to value: 'a' is a 'let' constant
//a = b
//^
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var x = 1
var y = 5
swapTwoInts(&x, &y)
print("x 现在的值 \(x), y 现在的值 \(y)")

/*使用函数类型*/
//使用函数类型就像使用其他类型一样。例如，你可以定义一个类型为函数的常量或变量，并将适当的函数赋值给它：
func sum(a: Int, b: Int) -> Int {
    return a + b
}
var addition: (Int, Int) -> Int = sum
print("输出结果: \(addition(40, 89))")
//sum 和 addition 有同样的类型，所以以上操作是合法的

/*函数类型作为参数类型、函数类型作为返回类型*/
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {     //函数类型作为参数类型
    print("输出结果: \(addition(a, b))")
}
another(addition: sum, a: 10, b: 20)

func stepForward(a: Int, b: String) -> String {
    let str = a
    return String(str)
}

func stepBackForward(b: Int, a: String) -> String {
    let str = b
    return String(str)
}

func chooseStepFunction(isBack: Bool) -> (Int, String) -> String {     //函数类型作为返回类型
    return isBack ? stepForward : stepBackForward
}
print(chooseStepFunction(isBack: true))

/*函数嵌套*/
//函数嵌套指的是函数内定义一个新的函数，外部的函数可以调用函数内定义的函数。
func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement += total
//        func de() -> Int {
//            return 2
//        }
        return overallDecrement //de()
    }
    return decrementer
}

let decrem = calcDecrement(forDecrement: 30)
print(decrem())
//返回值是一个()-> Int的函数。
//函数题内，声明了变量overallDecrement 和一个函数decrementer。decrementer函数并没有获取任何参数，但是在函数体内访问了overallDecrement和total变量。这是因为其通过捕获在包含它的函数体内已经存在的overallDecrement和total变量而实现。由于没有修改total变量，decrementer实际上捕获并存储了该变量的一个副本，而该副本随着decrementer一同被存储。
//所以我们调用这个函数时会累加：
let incrementByTen = calcDecrement(forDecrement: 10)
// 返回的值为10
print(incrementByTen())
// 返回的值为20
print(incrementByTen())
// 返回的值为30
print(incrementByTen())


/*闭包Closures*/
//闭包的形式有：
//全局函数    嵌套函数    闭包表达式
//有名字但不能捕获任何值。    有名字，也能捕获封闭函数内的值。    无名闭包，使用轻量级语法，可以根据上下文环境捕获值。
//Swift中的闭包有很多优化的地方:
//根据上下文推断参数和返回值类型
//从单行表达式闭包中隐式返回（也就是闭包体只有一行代码，可以省略return）
//可以使用简化参数名，如$0, $1(从0开始，表示第i个参数...)
//提供了尾随闭包语法(Trailing closure syntax)
//语法
//以下定义了一个接收参数并返回指定类型的闭包语法：
//{(parameters) -> return type in
//        statements
//}
//以下闭包形式接收两个参数并返回布尔值：
//    {(Int, Int) -> Bool in
//        Statement1
//        Statement 2
//            ---
//        Statement n
//}

let closure = {(a: Int, b: String) -> Bool in
    return a > 0 ? true : false
}
print(closure(2, "aaa"))

/*闭包表达式*/
//Swift 标准库提供了名为 sorted(by:) 的方法，会根据您提供的用于排序的闭包函数将已知类型数组中的值进行排序。
//排序完成后，sorted(by:) 方法会返回一个与原数组大小相同，包含同类型元素且元素已正确排序的新数组。原数组不会被 sorted(by:) 方法修改。
//sorted(by:)方法需要传入两个参数：
//已知类型的数组
//闭包函数，该闭包函数需要传入与数组元素类型相同的两个值，并返回一个布尔类型值来表明当排序结束后传入的第一个参数排在第二个参数前面还是后面。如果第一个参数值出现在第二个参数值前面，排序闭包函数需要返回 true，反之返回 false

let names = ["AT", "AE", "D", "S", "BE"]
// 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sorted(by: backwards)
print(reversed)     //["S", "D", "BE", "AT", "AE"]

/*参数名称缩写*/
//Swift 自动为内联函数提供了参数名称缩写功能，您可以直接通过$0,$1,$2来顺序调用闭包的参数
//let names = ["AT", "AE", "D", "S", "BE"]
//var reversed = names.sorted( by: { $0 > $1 } )
//print(reversed)
//如果你在闭包表达式中使用参数名称缩写, 您可以在闭包参数列表中省略对其定义, 并且对应参数名称缩写的类型会通过函数类型进行推断。in 关键字同样也可以被省略

/*运算符函数*/
//实际上还有一种更简短的方式来撰写上面例子中的闭包表达式。Swift 的String类型定义了关于大于号 (>)的字符串实现，其作为一个函数接受两个String类型的参数并返回Bool类型的值。而这正好与sort(_:)方法的第二个参数需要的函数类型相符合。 因此，您可以简单地传递一个大于号，Swift可以自动推断出您想使用大于号的字符串函数实现
//let names = ["AT", "AE", "D", "S", "BE"]
//var reversed = names.sorted(by: >)
//print(reversed)

/*尾随闭包,也就是函数作为参数*/
//尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。
func addStr(s1: String,s2: String, closure: (String,String) -> String) -> String{
    return closure(s1,s2);
}

let aaa = addStr(s1: "Hello", s2: "world", closure: {(c1:String,c2:String) -> (String) in return (c1) + (c2)})
//简化1
addStr(s1: "aaa", s2: "bbb") {(c1: String, c2: String) -> (String) in return (c1 + c2)}        //省略闭包名字
//简化2
addStr(s1: "aaa", s2: "bbb") { (c1, c2) -> (String) in return c1 + c2}      //省略闭包名、类型
//简化3
addStr(s1: "aaa", s2: "bbb") { (a, b) -> String in (a + b)}       //省略闭包名、类型、return
//简化4
addStr(s1: "Hello", s2: "world", closure: {($0) + ($1)})
//简化5
addStr(s1: "Hello", s2: "world"){($0) + ($1)}
func someFunctionThatTakesAClosure(closure: () -> Void) {
// 函数体部分
}
// 以下是不使用尾随闭包进行函数调用
someFunctionThatTakesAClosure {
}
// 以下是使用尾随闭包进行函数调用
someFunctionThatTakesAClosure() {
    // 闭包主体部分
}

/*闭包是引用类型*/
//函数和闭包都是引用类型,无论您将函数/闭包赋值给一个常量还是变量，您实际上都是将常量/变量的值设置为对应函数/闭包的引用
//意味着如果您将闭包赋值给了两个不同的常量/变量，两个值都会指向同一个闭包：

/*枚举*/
//Objective C 和 C 的结构，枚举的功能为:
//它声明在类中，可以通过实例化类来访问它的值。
//枚举也可以定义构造函数（initializers）来提供一个初始成员值；可以在原始的实现基础上扩展它们的功能。
//可以遵守协议（protocols）来提供标准的功能。
//语法
enum enumname {
    // 枚举定义放在这里
}
// 定义枚举
enum DaysofaWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}

var weekDay = DaysofaWeek.THURSDAY
weekDay = .THURSDAY
switch weekDay {
    case .Sunday:
    print("星期天")
    case .Monday:
    print("星期一")
    case .TUESDAY:
    print("星期二")
    case .WEDNESDAY:
    print("星期三")
    case .THURSDAY:
    print("星期四")
    case .FRIDAY:
    print("星期五")
    case .Saturday:
    print("星期六")
}
//和C和Objective-C不同，Swift的枚举成员在被创建时不会被赋予一个默认的整型值。在上面的DaysofaWeek例子中，Sunday，Monday，……和Saturday不会隐式地赋值为0，1，……和6。相反，这些枚举成员本身就有完备的值，这些值是已经明确定义好的DaysofaWeek类型。
enum Student{
    case Name(String)
    case Mark(Int,Int,Int)      //相关值
}
var studDetails = Student.Name("Runoob")
var studMarks = Student.Mark(98,97,95)
switch studMarks {
case .Name(let studName):
    print("学生的名字是: \(studName)。")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("学生的成绩是: \(Mark1),\(Mark2),\(Mark3)。")
}
/*原始值*/
//原始值可以是字符串，字符，或者任何整型值或浮点型值。每个原始值在它的枚举声明中必须是唯一的。
//在原始值为整数的枚举时，不需要显式的为每一个成员赋值，Swift会自动为你赋值。
//例如，当使用整数作为原始值时，隐式赋值的值依次递增1。如果第一个值没有被赋初值，将会被自动置为0。
enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

let yearMonth = Month.May.rawValue
print("数字月份为: \(yearMonth)。")

/*结构体*/
//我们可以为结构体定义属性（常量、变量）和添加方法，从而扩展结构体的功能。
//与 C 和 Objective C 不同的是：
//结构体不需要包含实现文件和接口。
//结构体允许我们创建一个单一文件，且系统会自动生成面向其它代码的外部接口。
//结构体总是通过被复制的方式在代码中传递，因此它的值是不可修改的。
//语法：
//struct nameStruct {
//Definition 1
//Definition 2
//    ……
//Definition N
//}
struct MarkStruct {
    var mark1: Int
    var mark2: Int
    var mark3: String
}
let mark = MarkStruct(mark1: 1, mark2: 2, mark3: "name")        //未初始化需要初始化
print(mark.mark3)
struct StudentMark {
    var mark1 = 100
    var mark2 = "name"
    var mark3 = 3.14
}
let marks = StudentMark()
print(marks.mark1)

/*结构体应用*/
//结构体实例总是通过值传递来定义你的自定义数据类型
//按照通用的准则，当符合一条或多条以下条件时，请考虑构建结构体：
//结构体的主要目的是用来封装少量相关简单数据值。
//有理由预计一个结构体实例在赋值或传递时，封装的数据将会被拷贝而不是被引用。
//任何在结构体中储存的值类型属性，也将会被拷贝，而不是被引用。
//结构体不需要去继承另一个已存在类型的属性或者行为。
//举例来说，以下情境中适合使用结构体：
//几何形状的大小，封装一个width属性和height属性，两者均为Double类型。
//一定范围内的路径，封装一个start属性和length属性，两者均为Int类型。
//三维坐标系内一点，封装x，y和z属性，三者均为Double类型。
struct markStruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}
let markSs = markStruct(mark1: 100, mark2: 200, mark3: 300)     //结构体值传递
print(marks.mark1)

/*类*/
//Swift 类是构建代码所用的一种通用且灵活的构造体。
//我们可以为类定义属性（常量、变量）和方法。
//与其他编程语言所不同的是，Swift 并不要求你为自定义类去创建独立的接口和实现文件。你所要做的是在一个单一文件中定义一个类，系统会自动生成面向其它代码的外部接口。
//类和结构体对比
//Swift 中类和结构体有很多共同点。共同处在于：
//定义属性用于存储值
//定义方法用于提供功能
//定义附属脚本用于访问值
//定义构造器用于生成初始化值
//通过扩展以增加默认实现的功能
//符合协议以对某类提供标准功能
//与结构体相比，类还有如下的附加功能：
//继承允许一个类继承另一个类的特征
//类型转换允许在运行时检查和解释一个类实例的类型
//解构器允许一个类实例释放任何其所被分配的资源
//引用计数允许对一个类的多次引用
//语法:
//class classname {
//    Definition 1
//    Definition 2
//    ……
//    Definition N
//}
class studentClass {
    var studentName: Int = 0        //区别结构体必须给个初始值,不给赋值报错，结构体可以在外面初始化
    var age: Int = 0
    var sex: String = ""
}
//实例化
let studentCord = studentClass()
class studentStruct {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

/*作为引用类型访问类属性*/
//恒等运算符
//因为类是引用类型，有可能有多个常量和变量在后台同时引用某一个类实例。
//为了能够判定两个常量或者变量是否引用同一个类实例，Swift 内建了两个恒等运算符：
//恒等运算符    不恒等运算符
//运算符为：===    运算符为：!==
//如果两个常量或者变量引用同一个类实例则返回 true    如果两个常量或者变量引用不同一个类实例则返回 true
class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}

func == (lhs: SampleClass, rhs: SampleClass) -> Bool {
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

if spClass1 === spClass2 {// false
    print("引用相同的类实例 \(spClass1)")
}

if spClass1 !== spClass2 {// true
    print("引用不相同的类实例 \(spClass2)")
}

/*属性*/
//Swift 属性将值跟特定的类、结构或枚举关联。
//属性可分为存储属性和计算属性:
//存储属性    计算属性
//存储常量或变量作为实例的一部分    计算（而不是存储）一个值
//用于类和结构体    用于类、结构体和枚举
//存储属性和计算属性通常用于特定类型的实例。
//属性也可以直接用于类型本身，这种属性称为类型属性。
//另外，还可以定义属性观察器来监控属性值的变化，以此来触发一个自定义的操作。属性观察器可以添加到自己写的存储属性上，也可以添加到从父类继承的属性上。

/*存储属性*/
//简单来说，一个存储属性就是存储在特定类或结构体的实例里的一个常量或变量。
//存储属性可以是变量存储属性（用关键字var定义），也可以是常量存储属性（用关键字let定义）。
//可以在定义存储属性的时候指定默认值
//也可以在构造过程中设置或修改存储属性的值，甚至修改常量存储属性的值
struct Number{
    var digits: Int
    let pi = 3.1415
}
var n = Number(digits: 12345)
n.digits = 67
print("\(n.digits)")
print("\(n.pi)")
//代码中 pi 在定义存储属性的时候指定默认值（pi = 3.1415），所以不管你什么时候实例化结构体，它都不会改变。
//如果你定义的是一个常量存储属性,如果尝试修改它就会报错       error: cannot assign to property: 'numbers' is a 'let' constant

/*延迟存储属性*/
//延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。
//在属性声明前使用 lazy 来标示一个延迟存储属性。
//注意：必须将延迟存储属性声明成变量（使用var关键字），因为属性的值在实例构造完成之前可能无法得到。而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延迟属性。
//延迟存储属性一般用于：
//延迟对象的创建。
//当属性的值依赖于其他未知类
class sample {
    lazy var no = number()      // `var` 关键字是必须的
}

class number {
    var name: String = "swift"
}

var firstSample = sample()
print(firstSample.no.name)
/*实例化变量*/
//如果您有过 Objective-C 经验，应该知道Objective-C 为类实例存储值和引用提供两种方法。对于属性来说，也可以使用实例变量作为属性值的后端存储。
//Swift 编程语言中把这些理论统一用属性来实现。Swift 中的属性没有对应的实例变量，属性的后端存储也无法直接访问。这就避免了不同场景下访问方式的困扰，同时也将属性的定义简化成一个语句。
//一个类型中属性的全部信息——包括命名、类型和内存管理特征——都在唯一一个地方（类型定义中）定义。

/*计算属性*/
//除存储属性外，类、结构体和枚举可以定义计算属性，计算属性不直接存储值，而是提供一个 getter 来获取值，一个可选的 setter 来间接设置其他属性或变量的值。C

class sampleCalculate {
    var no1 = 0.0, no2 = 0.0, no3 = 6.0
    var length = 300.0, breath = 150.0
    var middle: (Double, Double) {
        get {
            return (length / 2, breath / 2)
        }
        set (axis) {        //axis新值的参数名,指的是middle，axis.0第一个参数，axis.1第二个参数
            no1 = axis.0 - (length / 2)
            no2 = axis.1 - (breath / 2)
        }
    }
}
//如果计算属性的 setter 没有定义表示新值的参数名，则可以使用默认名称 newValue。

var result = sampleCalculate()
print(result.middle)        //get
result.middle = (0.0, 10.0)

print(result.no1)
print(result.no2)

/*只读计算属性(只有 getter)*/
class film {
    var head = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "head": self.head,
            "duration":"\(self.duration)"
        ]
    }
}

var movie = film()
movie.head = "Swift 属性"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)
//注意：必须使用var关键字定义计算属性，包括只读计算属性，因为它们的值不是固定的。let关键字只用来声明常量属性，表示初始化后再也无法修改的值。

/*属性观察器*/
//属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，甚至新的值和现在的值相同的时候也不例外。
//可以为除了延迟存储属性之外的其他存储属性添加属性观察器，也可以通过重载属性的方式为继承的属性（包括存储属性和计算属性）添加属性观察器。
//注意：
//不需要为无法重载的计算属性添加属性观察器，因为可以通过 setter 直接监控和响应值的变化。
//可以为属性添加如下的一个或全部观察器：
//willSet在设置新的值之前调用
//didSet在新的值被设置之后立即调用
//willSet和didSet观察器在属性初始化过程中不会被调用
class Samplepgm {
    var counter: Int = 0{
        willSet(newTotal){
            print("计数器: \(newTotal)")
        }
        didSet{
            if counter > oldValue {
                print("新增数 \(counter - oldValue)")
            }
        }
    }
}
let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800

/*全局变量和局部变量*/
//计算属性和属性观察器所描述的模式也可以用于全局变量和局部变量。
//局部变量                          全局变量
//在函数、方法或闭包内部定义的变量。     函数、方法、闭包或任何类型之外定义的变量。
//用于存储和检索值。                  用于存储和检索值。
//存储属性用于获取和设置值。            存储属性用于获取和设置值。
//也用于计算属性。                    也用于计算属性。

/*类型属性*/
//类型属性是作为类型定义的一部分写在类型最外层的花括号（{}）内。
//使用关键字 static 来定义值类型的类型属性，关键字 class 来为类定义类型属性。
struct Structname {
    static var storedTypeProperty = " "
    static var computedTypeProperty: Int{
        get {
            return Int(storedTypeProperty)!     //参考707行计算属性
        }
        set (compute) {
            storedTypeProperty = String(compute)
        }
    }
}

enum Enumname {
    static var storedTypeProperty = " "
//    static var computedTypeProperty: Int {        //同上
//        // 这里返回一个 Int 值
//    }
}

class Classname {
//    class var computedTypeProperty: Int {     //同上
//        // 这里返回一个 Int 值
//    }
}
//注意：例子中的计算型类型属性是只读的，但也可以定义可读可写的计算型类型属性，跟实例计算属性的语法类似。

/*获取和设置类型属性的值*/
//类似于实例的属性，类型属性的访问也是通过点运算符(.)来进行。但是，类型属性是通过类型本身来获取和设置，而不是通过实例。实例如下：
struct StudMarks {
    static let markCount = 97
    static var totalCount = 0
    var InternalMarks: Int = 0 {
        didSet {
            if InternalMarks > StudMarks.markCount {        //目的是操作markCount、totalCount属性
                InternalMarks = StudMarks.markCount
            }
            if InternalMarks > StudMarks.totalCount {
                StudMarks.totalCount = InternalMarks
            }
        }
    }
}

var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()

stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks)

stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)
//总结：不同于oc直接getter、setter直接操作属性，swift通过类型本身获取和设置

/*方法*/
//在 Objective-C 中，类是唯一能定义方法的类型。但在 Swift 中，你不仅能选择是否要定义一个类/结构体/枚举，还能灵活的在你创建的类型（类/结构体/枚举）上定义方法。
//实例方法
//在 Swift 语言中，实例方法是属于某个特定类、结构体或者枚举类型实例的方法。
//实例方法提供以下方法：
//可以访问和修改实例属性
//提供与实例目的相关的功能
//实例方法要写在它所属的类型的前后大括号({})之间。
//实例方法能够隐式访问它所属类型的所有的其他实例方法和属性。
//实例方法只能被它所属的类的某个特定实例调用。
//实例方法不能脱离于现存的实例而被调用。
//语法
//func funcname(Parameters) -> returntype
//{
//    Statement1
//    Statement2
//        ……
//    Statement N
//    return parameters
//}
class Couter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount: Int, mount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
let counter = Couter()
counter.increment()
counter.incrementBy(amount: 2, mount: 11)
counter.reset()

/*方法的局部参数名称和外部参数名称*/
//Swift 函数参数可以同时有一个局部名称（在函数体内部使用）和一个外部名称（在调用函数时使用
//Swift 中的方法和 Objective-C 中的方法极其相似。像在 Objective-C 中一样，Swift 中方法的名称通常用一个介词指向方法的第一个参数，比如：with，for，by等等。
//Swift 默认仅给方法的第一个参数名称一个局部参数名称;默认同时给第二个和后续的参数名称为全局参数名称。
//以下实例中 'no1' 在swift中声明为局部参数名称。'no2' 用于全局的声明并通过外部程序访问。

/*是否提供外部名称设置*/
//我们强制在第一个参数添加外部名称把这个局部名称当作外部名称使用（Swift 2.0前是使用 # 号）。
//相反，我们呢也可以使用下划线（_）设置第二个及后续的参数不提供一个外部名称。
class multiplication {
    var count: Int = 0
    func incrementBy(first no1: Int, _ no2: Int) {
        count = no1 * no2
        print(count)
    }
}
let counterAMut = multiplication()
counterAMut.incrementBy(first: 3, 4)

/*在实例方法中修改值类型*/
//Swift 语言中结构体和枚举是值类型。一般情况下，值类型的属性不能在它的实例方法中被修改。
//但是，如果你确实需要在某个具体的方法中修改结构体或者枚举的属性，你可以选择变异(mutating)这个方法，然后方法就可以从方法内部改变它的属性；并且它做的任何改变在方法结束时还会保留在原始结构中。
//方法还可以给它隐含的self属性赋值一个全新的实例，这个新实例在方法结束后将替换原来的实例。
struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        self.length *= res
        self.breadth *= res
        
        print(length)
        print(breadth)
    }
}

var val = area(length: 3, breadth: 5)
val.scaleBy(res: 3)
val.scaleBy(res: 30)

/*类型方法*/
//声明结构体和枚举的类型方法，在方法的func关键字之前加上关键字static。类可能会用关键字class来允许子类重写父类的实现方法。类型方法和实例方法一样用点号(.)语法调用。
class Math{
    class func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}

struct absno {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        }else {
            return number
        }
    }
}

let no = Math.abs(number: -35)
let num = absno.abs(number: -5)

print(no)
print(num)

/*下标脚本*/
//下标脚本可以定义在类（Class）、结构体（structure）和枚举（enumeration）这些目标中，可以认为是访问对象、集合或序列的快捷方式，不需要再调用实例的特定的赋值和访问方。
/*下标脚本语法及应用*/
//语法:下标脚本允许你通过在实例后面的方括号中传入一个或者多个的索引值来对实例进行访问和赋值。
//语法类似于实例方法和计算型属性的混合。
//与定义实例方法类似，定义下标脚本使用subscript关键字，显式声明入参（一个或多个）和返回类型。
//与实例方法不同的是下标脚本可以设定为读写或只读。这种方式又有点像计算型属性的getter和setter
//subscript(index: Int) -> Int {
//    get {
//        // 用于下标脚本值的声明
//    }
//    set(newValue) {
//        // 执行赋值操作
//    }
//}
struct subexample {
    let decrementer: Int
    subscript(index: Int) -> Int {
        return decrementer / index
    }
}
let division = subexample(decrementer: 100)

print("100 除以 9 等于 \(division[9])")

class daysofaweek {
    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
                        "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]   // 声明下标脚本的值
        }
        set(newValue) {
            self.days[index] = newValue   // 执行赋值操作
        }
    }
}
var p = daysofaweek()

print(p[0])

/*继承*/
/*子类*/
//子类指的是在一个已有类的基础上创建一个新的类。
//为了指明某个类的超类，将超类名写在子类名的后面，用冒号(:)分隔,语法格式如下
//class SomeClass: SomeSuperclass {
//    // 类的定义
//}
class StudDetails{
    var mark1: Int;
    var mark2: Int;
    
    init(stm1:Int, results stm2:Int){
        mark1 = stm1;
        mark2 = stm2;
    }
    
    func show(){
        print("Mark1:\(self.mark1), Mark2:\(self.mark2)")
    }
}

class Tom : StudDetails{
    init(){
        super.init(stm1: 93, results: 89)
    }
}

let tom = Tom()
tom.show()

/*重写（Overriding）*/
//子类可以通过继承来的实例方法，类方法，实例属性，或下标脚本来实现自己的定制功能，我们把这种行为叫重写（overriding）。
//我们可以使用 override 关键字来实现重写

/*访问超类的方法、属性及下标脚本*/
//你可以通过使用super前缀来访问超类的方法，属性或下标脚本。
//重写    访问方法，属性，下标脚本
//方法    super.somemethod()
//属性    super.someProperty()
//下标脚本    super[someIndex]

/*重写方法*/
class SuperClass {
    func show() {
        print("这是超类 SuperClass")
    }
}

class SubClass: SuperClass  {
    override func show() {
        print("这是子类 SubClass")
    }
}

let superClass = SuperClass()
superClass.show()

let subClass = SubClass()
subClass.show()

/*重写属性*/
//你可以提供定制的 getter（或 setter）来重写任意继承来的属性，无论继承来的属性是存储型的还是计算型的属性。
//子类并不知道继承来的属性是存储型的还是计算型的，它只知道继承来的属性会有一个名字和类型。所以你在重写一个属性时，必需将它的名字和类型都写出来。
//注意点：
//如果你在重写属性中提供了 setter，那么你也一定要提供 getter。
//如果你不想在重写版本中的 getter 里修改继承来的属性值，你可以直接通过super.someProperty来返回继承来的值，其中someProperty是你要重写的属性的名字。
//以下实例我们定义了超类 Circle 及子类 Rectangle, 在 Rectangle 类中我们重写属性 area：
class Circle {
    var radius = 0.0
    var area: String {
        return "矩形半径 \(radius) "
    }
}

class Reactangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " ，但现在被重写为 \(print)"
    }
}
let rect = Reactangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")

/*重写属性观察器*/
//你可以在属性重写中为一个继承来的属性添加属性观察器。这样一来，当继承来的属性值发生改变时，你就会监测到。
//注意：你不可以为继承来的常量存储型属性或继承来的只读计算型属性添加属性观察器。
class square: Reactangle {
    override var radius: Double {
        didSet {
            print = Int(radius/5.0)+1
        }
    }
}

/*防止重写*/
//我们可以使用 final 关键字防止它们被重写。
//如果你重写了final方法，属性或下标脚本，在编译时会报错。
//你可以通过在关键字class前添加final特性（final class）来将整个类标记为 final 的，这样的类是不可被继承的，否则会报编译错误。
final class Circles {
    final var radius = 12.5
    var area: String {
        return "矩形半径为 \(radius) "
    }
}

/*构造过程*/
//构造过程是为了使用某个类、结构体或枚举类型的实例而进行的准备过程。这个过程包含了为实例中的每个属性设置初始值和为其执行必要的准备和初始化任务。
//Swift 构造函数使用 init() 方法。
//与 Objective-C 中的构造器不同，Swift 的构造器无需返回值，它们的主要任务是保证新实例在第一次使用前完成正确的初始化。
//类实例也可以通过定义析构器（deinitializer）在类实例释放之前执行清理内存的工作。

/*存储型属性的初始赋值*/
//类和结构体在实例创建时，必须为所有存储型属性设置合适的初始值。
//存储属性在构造器中赋值时，它们的值是被直接设置的，不会触发任何属性观测器。
//存储属性在构造器中赋值流程：
//创建初始值。
//在属性定义中指定默认属性值。
//初始化实例，并调用 init() 方法。

/*构造器*/
//构造器在创建某特定类型的新实例时调用。它的最简形式类似于一个不带任何参数的实例方法，以关键字init命名。
//语法
//init()
//{
//    // 实例化后执行的代码
//}
struct rectangle {
    var length: Double
    var breadth: Double
    init() {
        length = 6
        breadth = 12
    }
}
var varReactangle = rectangle()
print("矩形面积为 \(varReactangle.length*varReactangle.breadth)")

/*构造参数*/
//你可以在定义构造器 init() 时提供构造参数，如下所示：
struct Rectangle {
    var length: Double
    var breadth: Double
    var area: Double
    
    init(fromLength length: Double, fromBreadth breadth: Double) {
        self.length = length
        self.breadth = breadth
        area = length * breadth
    }
    
    init(fromLeng leng: Double, fromBread bread: Double) {
        self.length = leng
        self.breadth = bread
        area = leng * bread
    }
}

/*内部和外部参数名*/
//跟函数和方法参数相同，构造参数也存在一个在构造器内部使用的参数名字和一个在调用构造器时使用的外部参数名字。
//然而，构造器并不像函数和方法那样在括号前有一个可辨别的名字。所以在调用构造器时，主要通过构造器中的参数名和类型来确定需要调用的构造器。
//如果你在定义构造器时没有提供参数的外部名字，Swift 会为每个构造器的参数自动生成一个跟内部名字相同的外部名。
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}

// 创建一个新的Color实例，通过三种颜色的外部参数名来传值，并调用构造器
let halfGray = Color(white: 0.5)
print("red 值为: \(halfGray.red)")

/*没有外部名称参数*/
//如果你不希望为构造器的某个参数提供外部名字，你可以使用下划线_来显示描述它的外部名。
struct Rectangles {
    var length: Double//?当存储属性声明为可选时，将自动初始化为空 nil。
    
    init(frombreadth breadth: Double) {
        length = breadth * 10
    }
    
    init(frombre bre: Double) {
        length = bre * 30
    }
    //不提供外部名字
    init(_ area: Double) {
        length = area
    }
}

// 调用不提供外部名字
let rectarea = Rectangles(180.0)
print("面积为: \(rectarea.length)")

// 调用不提供外部名字
let rearea = Rectangles(370.0)
print("面积为: \(rearea.length)")

// 调用不提供外部名字
let recarea = Rectangles(110.0)
print("面积为: \(recarea.length)")

/*构造过程中修改常量属性*/
//只要在构造过程结束前常量的值能确定，你可以在构造过程中的任意时间点修改常量属性的值。
//对某个类实例来说，它的常量属性只能在定义它的类的构造过程中修改；不能在子类中修改。
//尽管 length 属性现在是常量，我们仍然可以在其类的构造器中设置它的值

/*默认构造器*/
//默认构造器将简单的创建一个所有属性值都设置为默认值的实例

/*值类型的构造器代理*/
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
// origin和size属性都使用定义时的默认值Point(x: 0.0, y: 0.0)和Size(width: 0.0, height: 0.0)：
let basicRect = Rect()
print("Size 结构体初始值: \(basicRect.size.width) ")

/*构造器代理规则*/
//值类型    类类型
//不支持继承，所以构造器代理的过程相对简单，因为它们只能代理给本身提供的其它构造器。 你可以使用self.init在自定义的构造器中引用其它的属于相同值类型的构造器。    它可以继承自其它类,这意味着类有责任保证其所有继承的存储型属性在构造时也能正确的初始化。

/*类的继承和构造过程*/
//Swift 提供了两种类型的类构造器来确保所有类实例中存储型属性都能获得初始值，它们分别是指定构造器和便利构造器。
//指定构造器    便利构造器
//类中最主要的构造器    类中比较次要的、辅助型的构造器
//初始化类中提供的所有属性，并根据父类链往上调用父类的构造器来实现父类的初始化。    可以定义便利构造器来调用同一个类中的指定构造器，并为其参数提供默认值。你也可以定义便利构造器来创建一个特殊用途或特定输入的实例。
//每一个类都必须拥有至少一个指定构造器    只在必要的时候为类提供便利构造器
//Init(parameters) {
//    statements
//}
//convenience init(parameters) {
//    statements
//}
class mainClass {
    var no1 : Int // 局部存储变量
    init(no1 : Int) {
        self.no1 = no1 // 初始化
    }
}

class subCla : mainClass {
    var no2 : Int
    init(no1 : Int, no2 : Int) {
        self.no2 = no2
        super.init(no1:no1)
    }
    // 便利方法只需要一个参数
    override convenience init(no1: Int)  {
        self.init(no1:no1, no2:0)
    }
}

/*构造器的继承和重载*/
//Swift 中的子类不会默认继承父类的构造器。
//父类的构造器仅在确定和安全的情况下被继承。
//当你重写一个父类指定构造器时，你需要写override修饰符。

class MainClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[匿名]")
    }
}
let main = MainClass(name: "Runoob")
print("MainClass 名字为: \(main.name)")

let main2 = MainClass()
print("没有对应名字: \(main2.name)")

/*类的可失败构造器*/
//如果一个类，结构体或枚举类型的对象，在构造自身的过程中有可能失败，则为其定义一个可失败构造器。
//变量初始化失败可能的原因有：
//传入无效的参数值。
//缺少某种所需的外部资源。
//没有满足特定条件。
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

//通过该可失败构造器来构建一个Animal的对象，并检查其构建过程是否成功
// someCreature 的类型是 Animal? 而不是 Animal
let someCreature = Animal(species: "长颈鹿")

enum TemperatureUnit {
    // 开尔文，摄氏，华氏
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}

class StudRecord {
    let studname: String!
    init?(studname: String) {
        self.studname = studname
        if studname.isEmpty { return nil }
    }
}
if let stname = StudRecord(studname: "失败构造器") {
    print("模块为 \(String(describing: stname.studname))")
}

/*覆盖一个可失败构造器*/
//就如同其它构造器一样，你也可以用子类的可失败构造器覆盖基类的可失败构造器。
//者你也可以用子类的非可失败构造器覆盖一个基类的可失败构造器。
//你可以用一个非可失败构造器覆盖一个可失败构造器，但反过来却行不通。
//一个非可失败的构造器永远也不能代理调用一个可失败构造器。
class Planet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "[No Planets]")
    }
}
let plName = Planet(name: "Mercury")
print("行星的名字是: \(plName.name)")

let noplName = Planet()
print("没有这个名字的行星: \(noplName.name)")

class planets: Planet {
    var count: Int
    
    init(name: String, count: Int) {
        self.count = count
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name: name, count: 1)
    }
}

/*可失败构造器 init!*/
//struct StudRecord {
//    let stname: String
//
//    init!(stname: String) {
//        if stname.isEmpty {return nil }
//        self.stname = stname
//    }
//}
//
//let stmark = StudRecord(stname: "Runoob")
//if let name = stmark {
//    print("指定了学生名")
//}
//
//let blankname = StudRecord(stname: "")
//if blankname == nil {
//    print("学生名为空")
//}

/*析构过程*/
//在一个类的实例被释放之前，析构函数被立即调用。用关键字deinit来标示析构函数，类似于初始化函数用init来标示。析构函数只适用于类类型。
//析构过程原理
//Swift 会自动释放不再需要的实例以释放资源。
//Swift 通过自动引用计数（ARC）处理实例的内存管理。
//通常当你的实例被释放时不需要手动地去清理。但是，当使用自己的资源时，你可能需要进行一些额外的清理。
//例如，如果创建了一个自定义的类来打开一个文件，并写入一些数据，你可能需要在类实例被释放之前关闭该文件。
//语法
//在类的定义中，每个类最多只能有一个析构函数。析构函数不带任何参数，在写法上不带括号：
//deinit {
//    // 执行析构过程
//}

/*可选链*/
//可选链（Optional Chaining）是一种可以请求和调用属性、方法和子脚本的过程，用于请求或调用的目标可能为nil。
//可选链返回两个值：
//如果目标有值，调用就会成功，返回该值
//如果目标为nil，调用将返回nil
//多次请求或调用可以被链接成一个链，如果任意一个节点为nil将导致整条链失效。

/*可选链可替代强制解析*/
//通过在属性、方法、或下标脚本的可选值后面放一个问号(?)，即可定义一个可选链。
//可选链 '?'    感叹号（!）强制展开方法，属性，下标脚本可选链
//    ? 放置于可选值后来调用方法，属性，下标脚本    ! 放置于可选值后来调用方法，属性，下标脚本来强制展开值
//当可选为 nil 输出比较友好的错误信息    当可选为 nil 时强制展开执行错误

/*自动引用计数（ARC）*/
//ARC 功能
//当每次使用 init() 方法创建一个类的新的实例的时候，ARC 会分配一大块内存用来储存实例的信息。
//内存中会包含实例的类型信息，以及这个实例所有相关属性的值。
//当实例不再被使用时，ARC 释放实例所占用的内存，并让释放的内存能挪作他用。
//为了确保使用中的实例不会被销毁，ARC 会跟踪和计算每一个实例正在被多少属性，常量和变量所引用。
//实例赋值给属性、常量或变量，它们都会创建此实例的强引用，只要强引用还在，实例是不允许被销毁的。

/*类实例之间的循环强引用*/
class Person {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) 被析构") }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    var tenant: Person?
    deinit { print("Apartment #\(number) 被析构") }
}

// 两个变量都被初始化为nil
var runoob: Person?
var number73: Apartment?

// 赋值
runoob = Person(name: "Runoob")
number73 = Apartment(number: 73)

// 意感叹号是用来展开和访问可选变量 runoob 和 number73 中的实例
// 循环强引用被创建
runoob!.apartment = number73
number73!.tenant = runoob

// 断开 runoob 和 number73 变量所持有的强引用时，引用计数并不会降为 0，实例也不会被 ARC 销毁
// 注意，当你把这两个变量设为nil时，没有任何一个析构函数被调用。
// 强引用循环阻止了Person和Apartment类实例的销毁，并在你的应用程序中造成了内存泄漏
runoob = nil
number73 = nil

/*解决实例之间的循环强引用*/
//Swift 提供了两种办法用来解决你在使用类的属性时所遇到的循环强引用问题：
//弱引用
//无主引用
//弱引用和无主引用允许循环引用中的一个实例引用另外一个实例而不保持强引用。这样实例能够互相引用而不产生循环强引用。
//对于生命周期中会变为nil的实例使用弱引用。相反的，对于初始化赋值后再也不会被赋值为nil的实例，使用无主引用。
class Module {
    let name: String
    init(name: String) { self.name = name }
    var sub: SubModule?
    deinit { print("\(name) 主模块") }
}

class SubModule {
    let number: Int
    
    init(number: Int) { self.number = number }
    
    weak var topic: Module?
    
    deinit { print("子模块 topic 数为 \(number)") }
}
//无主引用实例
//class Student {
//    let name: String
//    var section: Marks?
//
//    init(name: String) {
//        self.name = name
//    }
//
//    deinit { print("\(name)") }
//}
//class Marks {
//    let marks: Int
//    unowned let stname: Student
//
//    init(marks: Int, stname: Student) {
//        self.marks = marks
//        self.stname = stname
//    }
//
//    deinit { print("学生的分数为 \(marks)") }
//}

/*检查类型*/
//类型转换用于检测实例类型是否属于特定的实例类型。
//你可以将它用在类和子类的层次结构上，检查特定类实例的类型并且转换这个类实例的类型成为这个层次结构中的其他类型。
//类型检查使用 is 关键字。
//    操作符 is 来检查一个实例是否属于特定子类型。若实例属于那个子类型，类型检查操作符返回 true，否则返回 false。

/*向下h转型*/
//向下转型，用类型转换操作符(as? 或 as!)
//当你不确定向下转型可以成功时，用类型转换的条件形式(as?)。条件形式的类型转换总是返回一个可选值（optional value），并且若下转是不可能的，可选值将是 nil。
//只有你可以确定向下转型一定会成功时，才使用强制形式(as!)。当你试图向下转型为一个不正确的类型时，强制形式的类型转换会触发一个运行时错误。

/*Any和AnyObject的类型转换*/
//Swift为不确定类型提供了两种特殊类型别名：
//AnyObject可以代表任何class类型的实例。
//Any可以表示任何类型，包括方法类型（function types）。
//注意：只有当你明确的需要它的行为和功能时才使用Any和AnyObject。在你的代码里使用你期望的明确的类型总是更好的。

/*扩展*/
//扩展就是向一个已有的类、结构体或枚举类型添加新功能。
//扩展可以对一个类型添加新的功能，但是不能重写已有的功能。
//Swift 中的扩展可以：
//添加计算型属性和计算型静态属性
//定义实例方法和类型方法
//提供新的构造器
//定义下标
//定义和使用新的嵌套类型
//使一个已有类型符合某个协议
//语法
//扩展声明使用关键字 extension：
//extension SomeType {
//    // 加到SomeType的新功能写到这里
//}
//一个扩展可以扩展一个已有类型，使其能够适配一个或多个协议，语法格式如下：
//extension SomeType: SomeProtocol, AnotherProctocol {
//    // 协议实现写到这里
//}

/*计算型属性*/
//扩展可以向已有类型添加计算型实例属性和计算型类型属性。
//实例
//下面的例子向 Int 类型添加了 5 个计算型实例属性并扩展其功能：
//extension Int {
//    var add: Int {return self + 100 }
//    var sub: Int { return self - 10 }
//    var mul: Int { return self * 10 }
//    var div: Int { return self / 5 }
//}
//
//let addition = 3.add
//print("加法运算后的值：\(addition)")
//
//let subtraction = 120.sub
//print("减法运算后的值：\(subtraction)")

/*构造器*/
//扩展可以向已有类型添加新的构造器。
//这可以让你扩展其它类型，将你自己的定制类型作为构造器参数，或者提供该类型的原始实现中没有包含的额外初始化选项。
//扩展可以向类中添加新的便利构造器 init()，但是它们不能向类中添加新的指定构造器或析构函数 deinit() 。
//struct sum {
//    var num1 = 100, num2 = 200
//}
//
//struct diff {
//    var no1 = 200, no2 = 100
//}
//
//struct mult {
//    var a = sum(a: <#Int#>)
//    var b = diff()
//}
//
//
//extension mult {
//    init(x: sum, y: diff) {
//        _ = x.num1 + x.num2
//        _ = y.no1 + y.no2
//    }
//}
//
//
//let a = sum(num1: 100, num2: 200)
//let b = diff(no1: 200, no2: 100)
//
//let getMult = mult(x: a, y: b)
//print("getMult sum\(getMult.a.num1, getMult.a.num2)")


/*方法*/
//扩展可以向已有类型添加新的实例方法和类型方法。下面的例子向Int类型添加一个名为 topics 的新实例方法：
//extension Int {
//    func topics(summation: () -> ()) {
//        for _ in 0..<self {
//            summation()
//        }
//    }
//}
//
//4.topics({
//    print("扩展模块内")
//})
//
//3.topics({
//    print("内型转换模块内")
//})

/*可变实例方法*/
//通过扩展添加的实例方法也可以修改该实例本身。
//结构体和枚举类型中修改self或其属性的方法必须将该实例方法标注为mutating，正如来自原始实现的修改方法一样。
//实例
//下面的例子向 Swift 的 Double 类型添加了一个新的名为 square 的修改方法，来实现一个原始值的平方计算：
//extension Double {
//    mutating func square() {
//        let pi = 3.1415
//        self = pi * self * self
//    }
//}
//
//var Trial1 = 3.3
//Trial1.square()
//print("圆的面积为: \(Trial1)")

/*下标*/
//扩展可以向一个已有类型添加新下标。
//实例
//以下例子向 Swift 内建类型Int添加了一个整型下标。该下标[n]返回十进制数字
//extension Int {
//    subscript( multtable: Int) -> Int {
//        var no1 = 1
//        while multtable > 0 {
//            no1 *= 10
//            --multtable
//        }
//        return (self / no1) % 10
//    }
//}

/*嵌套类型*/
//嵌套类型
//扩展可以向已有的类、结构体和枚举添加新的嵌套类型：
extension Int {
    enum calc
    {
        case add
        case sub
        case mult
        case div
        case anything
    }
    
    var print: calc {
        switch self
        {
        case 0:
            return .add
        case 1:
            return .sub
        case 2:
            return .mult
        case 3:
            return .div
        default:
            return .anything
        }
    }
}

func result(numb: [Int]) {
    for i in numb {
        switch i.print {
        case .add:
            print(" 10 ")
        case .sub:
            print(" 20 ")
        case .mult:
            print(" 30 ")
        case .div:
            print(" 40 ")
        default:
            print(" 50 ")
            
        }
    }
}

//result([0, 1, 2, 3, 4, 7])

/*协议*/
//协议规定了用来实现某一特定功能所必需的方法和属性。
//任意能够满足协议要求的类型被称为遵循(conform)这个协议。
//类，结构体或枚举类型都可以遵循协议，并提供具体实现来完成协议定义的方法和功能。
//语法
//协议的语法格式如下：
//struct SomeStructure: FirstProtocol, AnotherProtocol {
//    // 结构体内容
//}

//如果类在遵循协议的同时拥有父类，应该将父类名放在协议名之前，以逗号分隔。
//class SomeClass: SomeSuperClass, FirstProtocol, AnotherProtocol {
//    // 类的内容
//}

/*对属性的规定*/
//协议用于指定特定的实例属性或类属性，而不用指定是存储型属性或计算型属性。此外还必须指明是只读的还是可读可写的。
//协议中的通常用var来声明变量属性，在类型声明后加上{ set get }来表示属性是可读可写的，只读属性则用{ get }来表示。
protocol classa {
    
    var marks: Int { get set }
    var result: Bool { get }
    
    func attendance() -> String
    func markssecured() -> String
    
}

protocol classb: classa {
    
    var present: Bool { get set }
    var subject: String { get set }
    var stname: String { get set }
    
}

class classc: classb {
    var marks = 96
    let result = true
    var present = false
    var subject = "Swift 协议"
    var stname = "Protocols"
    
    func attendance() -> String {
        return "The \(stname) has secured 99% attendance"
    }
    
    func markssecured() -> String {
        return "\(stname) has scored \(marks)"
    }
}

let studdet = classc()
studdet.stname = "Swift"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)

/*对 Mutating 方法的规定*/
//有时需要在方法中改变它的实例。
//例如，值类型(结构体，枚举)的实例方法中，将mutating关键字作为函数的前缀，写在func之前，表示可以在该方法中修改它所属的实例及其实例属性的值。
//protocol daysofaweek {
//    mutating func show()
//}
//
//enum days: daysofaweek {
//    case sun, mon, tue, wed, thurs, fri, sat
//    mutating func show() {
//        switch self {
//        case .sun:
//            self = .sun
//            print("Sunday")
//        case .mon:
//            self = .mon
//            print("Monday")
//        case .tue:
//            self = .tue
//            print("Tuesday")
//        case .wed:
//            self = .wed
//            print("Wednesday")
//        case .thurs:
//            self = .thurs
//            print("Wednesday")
//        case .fri:
//            self = .fri
//            print("Wednesday")
//        case .sat:
//            self = .sat
//            print("Saturday")
//        default:
//            print("NO Such Day")
//        }
//    }
//}
//
//var res = days.wed
//res.show()

/*对构造器的规定*/
//协议可以要求它的遵循者实现指定的构造器。
//你可以像书写普通的构造器那样，在协议的定义里写下构造器的声明，但不需要写花括号和构造器的实体，语法如下：
//protocol SomeProtocol {
//    init(someParameter: Int)
//}
//实例
//protocol tcpprotocol {
//    init(aprot: Int)
//}

/*协议构造器规定在类中的实现*/
//你可以在遵循该协议的类中实现构造器，并指定其为类的指定构造器或者便利构造器。在这两种情况下，你都必须给构造器实现标上"required"修饰符：
//class SomeClass: SomeProtocol {
//    required init(someParameter: Int) {
//        // 构造器实现
//    }
//}
//
//protocol tcpprotocol {
//    init(aprot: Int)
//}
//
//class tcpClass: tcpprotocol {
//    required init(aprot: Int) {
//    }
//}

//使用required修饰符可以保证：所有的遵循该协议的子类，同样能为构造器规定提供一个显式的实现或继承实现。
//如果一个子类重写了父类的指定构造器，并且该构造器遵循了某个协议的规定，那么该构造器的实现需要被同时标示required和override修饰符：
//protocol tcpprotocol {
//    init(no1: Int)
//}
//
//class mainClass {
//    var no1: Int // 局部变量
//    init(no1: Int) {
//        self.no1 = no1 // 初始化
//    }
//}
//
//class subClass: mainClass, tcpprotocol {
//    var no2: Int
//    init(no1: Int, no2 : Int) {
//        self.no2 = no2
//        super.init(no1:no1)
//    }
//    // 因为遵循协议，需要加上"required"; 因为继承自父类，需要加上"override"
//    required override convenience init(no1: Int)  {
//        self.init(no1:no1, no2:0)
//    }
//}
//let res = mainClass(no1: 20)
//let show = subClass(no1: 30, no2: 50)
//
//print("res is: \(res.no1)")
//print("res is: \(show.no1)")
//print("res is: \(show.no2)")

/*协议类型*/
//尽管协议本身并不实现任何功能，但是协议可以被当做类型来使用。
//协议可以像其他普通类型一样使用，使用场景:
//作为函数、方法或构造器中的参数类型或返回值类型
//作为常量、变量或属性的类型
//作为数组、字典或其他容器中的元素类型

//protocol Generator {
//    associatedtype members
//    func next() -> members?
//}
//
//var items = [10,20,30].makeIterator()
//while let x = items.next() {
//    print(x)
//}
//
//for lists in [1,2,3].map( {i in i*5}) {
//    print(lists)
//}
//
//print([100,200,300])
//print([1,2,3].map({i in i*10}))

/*在扩展中添加协议成员*/
//我们可以可以通过扩展来扩充已存在类型( 类，结构体，枚举等)。
//扩展可以为已存在的类型添加属性，方法，下标脚本，协议等成员。

/*协议的继承*/
//协议能够继承一个或多个其他协议，可以在继承的协议基础上增加新的内容要求。
//协议的继承语法与类的继承相似，多个被继承的协议间用逗号分隔：
//protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
//    // 协议定义
//}

/*协议的继承*/

//协议能够继承一个或多个其他协议，可以在继承的协议基础上增加新的内容要求。
//协议的继承语法与类的继承相似，多个被继承的协议间用逗号分隔：
//protocol InheritingProtocol: SomeProtocol, AnotherProtocol {
//    // 协议定义
//}
//实例
//protocol Classa {
//    var no1: Int { get set }
//    func calc(sum: Int)
//}
//
//protocol Result {
//    func print(target: Classa)
//}
//
//class Student2: Result {
//    func print(target: Classa) {
//        target.calc(1)
//    }
//}
//
//class Classb: Result {
//    func print(target: Classa) {
//        target.calc(5)
//    }
//}
//
//class Student: Classa {
//    var no1: Int = 10
//
//    func calc(sum: Int) {
//        no1 -= sum
//        print("学生尝试 \(sum) 次通过")
//
//        if no1 <= 0 {
//            print("学生缺席考试")
//        }
//    }
//}

//class Player {
//    var stmark: Result!
//
//    init(stmark: Result) {
//        self.stmark = stmark
//    }
//
//    func print(target: Classa) {
//        stmark.print(target)
//    }
//}
//
//var marks = Player(stmark: Student2())
//var marksec = Student()
//marks.print(marksec)
//marks.print(marksec)
//marks.print(marksec)
//marks.stmark = Classb()
//marks.print(marksec)
//marks.print(marksec)
//marks.print(marksec)

/*类专属协议*/
//你可以在协议的继承列表中,通过添加class关键字,限制协议只能适配到类（class）类型。
//该class关键字必须是第一个出现在协议的继承列表中，其后，才是其他继承协议。格式如下：
//protocol SomeClassOnlyProtocol: class, SomeInheritedProtocol {
//    // 协议定义
//}
//实例
//protocol TcpProtocol {
//    init(no1: Int)
//}
//
//class MainClass {
//    var no1: Int // 局部变量
//    init(no1: Int) {
//        self.no1 = no1 // 初始化
//    }
//}
//
//class SubClass: MainClass, TcpProtocol {
//    var no2: Int
//    init(no1: Int, no2 : Int) {
//        self.no2 = no2
//        super.init(no1:no1)
//    }
//    // 因为遵循协议，需要加上"required"; 因为继承自父类，需要加上"override"
//    required override convenience init(no1: Int)  {
//        self.init(no1:no1, no2:0)
//    }
//}
//
//let res = MainClass(no1: 20)
//let show = SubClass(no1: 30, no2: 50)
//
//print("res is: \(res.no1)")
//print("res is: \(show.no1)")
//print("res is: \(show.no2)")
//以上程序执行输出结果为：
//res is: 20
//res is: 30
//res is: 50

/*协议合成*/
//Swift 支持合成多个协议，这在我们需要同时遵循多个协议时非常有用。
//语法格式如下：
//protocol Stname {
//    var name: String { get }
//}
//
//protocol Stage {
//    var age: Int { get }
//}
//
//struct Person: Stname, Stage {
//    var name: String
//    var age: Int
//}
//
//let studname = Person(name: "Priya", age: 21)
//print(studname)

/*检验协议的一致性*/
//你可以使用is和as操作符来检查是否遵循某一协议或强制转化为某一类型。
//is操作符用来检查实例是否遵循了某个协议。
//    as?返回一个可选值，当实例遵循协议时，返回该协议类型;否则返回nil。
//as用以强制向下转型，如果强转失败，会引起运行时错误。

/*泛型*/
//Swift 提供了泛型让你写出灵活且可重用的函数和类型。
//Swift 标准库是通过泛型代码构建出来的。
//Swift 的数组和字典类型都是泛型集。
//你可以创建一个Int数组，也可创建一个String数组，或者甚至于可以是任何其他 Swift 的类型数据数组。
//func swapTwoValues<T>(_ a: inout T, _ b: inout T)
//以下实例是一个泛型函数 exchange 用来交换两个 Int 和 String 值：
//实例
//// 定义一个交换两个变量的函数
//func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var numb1 = 100
//var numb2 = 200
//
//print("交换前数据:  \(numb1) 和 \(numb2)")
//swapTwoValues(&numb1, &numb2)
//print("交换后数据: \(numb1) 和 \(numb2)")
//
//var str1 = "A"
//var str2 = "B"
//
//print("交换前数据:  \(str1) 和 \(str2)")
//swapTwoValues(&str1, &str2)
//print("交换后数据: \(str1) 和 \(str2)")

/*类型约束*/
//类型约束指定了一个必须继承自指定类的类型参数，或者遵循一个特定的协议或协议构成。
//类型约束语法
//你可以写一个在一个类型参数名后面的类型约束，通过冒号分割，来作为类型参数链的一部分。这种作用于泛型函数的类型约束的基础语法如下所示（和泛型类型的语法相同）：
//func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
//    // 这里是泛型函数的函数体部分
//}

/*访问控制*/
//访问控制可以限定其他源文件或模块中代码对你代码的访问级别。
//你可以明确地给单个类型（类、结构体、枚举）设置访问级别，也可以给这些类型的属性、函数、初始化方法、基本类型、下标索引等设置访问级别。
//协议也可以被限定在一定的范围内使用，包括协议里的全局常量、变量和函数。
//访问控制基于模块与源文件。
//模块指的是以独立单元构建和发布的 Framework 或 Application。在 Swift 中的一个模块可以使用 import 关键字引入另外一个模块。
//源文件是单个源码文件，它通常属于一个模块， 源文件可以包含多个类和函数 的定义。
//Swift 为代码中的实体提供了四种不同的访问级别:public、internal、fileprivate、private。
//访问级别    定义
//public    可以访问自己模块中源文件里的任何实体，别人也可以通过引入该模块来访问源文件里的所有实体。
//internal    可以访问自己模块中源文件里的任何实体，但是别人不能访问该模块中源文件里的实体。
//fileprivate    文件内私有，只能在当前源文件中使用。
//private    只能在类中访问，离开了这个类或者结构体的作用域外面就无法访问。
