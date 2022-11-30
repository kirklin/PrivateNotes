# 第04章_Groovy快速入门

## Groovy 简介

Groovy是用于Java虚拟机的一种敏捷的动态语言，它是一种成熟的面向对象编程语言，既可以用于面向对象编程，又可以用作纯粹的脚本语言。使用该种语言不必编写过多的代码，同时又具有闭包和动态语言中的其他特性。

Groovy是JVM的一个替代语言（替代是指可以用 Groovy 在Java平台上进行 Java 编程），使用方式基本与使用 Java代码的方式相同，该语言特别适合与Spring的动态语言支持一起使用，设计时充分考虑了Java集成，这使 Groovy 与 Java 代码的互操作很容易。（注意：不是指Groovy替代java，而是指Groovy和java很好的结合编程。

## 基本特点

1. 构建在强大的Java语言之上 并 添加了从Python，Ruby和Smalltalk等语言中学到的 诸多特征，例如动态类型转换、闭包和元编程（metaprogramming）支持。
2. 为Java开发者提供了 现代最流行的编程语言特性，而且学习成本很低（几乎为零）。
3. 支持DSL（Domain Specific Languages领域定义语言）和其它简洁的语法，让代码变得易于阅读和维护。
4. 受检查类型异常(Checked Exception)也可以不用捕获。
5. Groovy拥有处理原生类型，面向对象以及一个Ant DSL，使得创建Shell Scripts变得非常简单。
6. 在开发Web，GUI，数据库或控制台程序时 通过 减少框架性代码 大大提高了开发者的效率。
7. 支持单元测试和模拟（对象），可以 简化测试。
8. 无缝集成 所有已经存在的 Java对象和类库。
9. 直接编译成Java字节码，这样可以在任何使用Java的地方 使用Groovy。
10. 支持函数式编程，不需要main函数。
11. 默认导入常用的包。
12. 支持对对象进行布尔求值。
13. 类不支持default作用域，且默认作用域为public。
14. groovy中基本类型也是对象，可以直接调用对象的方法。

# Grade中必须要学的语法

## 属性存取器

Groovy 自动将一个属性的引用转换为相应的 getter 或 setter 方法.

```groovy
// 使用 getter 方法
println project.buildDir
println getProject().getBuildDir()

// 使用 setter 方法
project.buildDir = 'target'
getProject().setBuildDir('target')
```

## 可有可无的圆括号

在调用方法时，圆括号可有可无，是个可选的.

**build.gradle**

```groovy
test.systemProperty 'some.prop', 'value'
test.systemProperty('some.prop', 'value')
```

## List 和 Map 集合

Groovy 为预定义的 List 和 Map 集合提供了一些操作捷径，这两个字面值都比较简单易懂，但是 Map 会有一些不同.

例如，当您使用 "apply" 方法使用 plug 时，apply 会自动加上 Map 的一个参数，当您这样写 " apply plugin: 'java' "时，实际上使用的是 name 参数(name-value)，只不过在 Groovy 中 使用 Map 没有 < > ,当方法被调用的时候，name 参数就会被转换成 Map 键值对，只不过在 Groovy 中看起来不像一个 Map.

**build.gradle**

```groovy
// List 集合
test.includes = ['org/gradle/api/**', 'org/gradle/internal/**']

List<String> list = new ArraryList<String>()
list.add('org/gradle/api/**')
list.add('org/gradle/internal/**')
test.includes = list

// Map 集合
Map<String,String> map = [key1:'value1', key2:'valu2']

// Groovy 会强制将Map的键值对转换为只有value的映射
apply plugin: 'java'
```

## 闭包作为方法的最后一个参数

Gradle DSL 在很多地方使用闭包，这里我们将讨论更多关于闭包的使用. 当一个方法的**最后一个参数**是一个闭包时，您可以在方法调用后放置一个闭包.

**build.gradle**

```groovy
repositories {
    println "in a closure"
}
repositories() { println "in a closure" }
repositories({println "in a closure" })
```



## 闭包委托对象

每个闭包都有一个委托对象，当闭包既不是局部变量也不是作为方法参数时，Groovy 使用委托对象查找变量和方法引用. 当委托对象被用来管理时，Gradle 使用它来管理闭包.

**build.gradle**

```groovy
dependencies {
    assert delegate == project.dependencies
    testCompile('junit:junit:4.11')
    delegate.testCompile('junit:junit:4.11')
}
```

# 以下为扩展内容，有疑惑时可查阅



## 基本语法

创建一个以 .groovy 为后缀的文件，我们可以在这文件中像开发 java 代码一样简单的去使用 groovy，并且 groovy 提供的语法更加简洁。

我们可以完全像开发 Java 代码一样去编写 Groovy，也可以根据 Groovy 的语法来简化编写。

### 第一个 Hello world 程序

```groovy
class Hello {
   static void main(String[] args) {
      // 使用 println 就可打印输出，并且类和方法默认就是public，可以不用写
      println('Hello KK');
   }
}
```

运行

```groovy
Hello KK
```



### Groovy 的导入语句

和 Java 一样，都是使用 Import 进行导入

```groovy
import groovy.xml.MarkupBuilder 	// Import 进行导入需要的类
def xml = new MarkupBuilder() 		// def 就是动态类型，在Groovy可以不用指定具体的类型，就像js中的var一样
```



在编译的 Groovy 字节码文件中，Groovy 已经默认帮我们导入了一些 jar 包，这些 jar 包可以不用再显示的导入

```groovy
import java.lang.* 
import java.util.* 
import java.io.* 
import java.net.* 

import groovy.lang.* 
import groovy.util.* 

import java.math.BigInteger 
import java.math.BigDecimal
```



### Groovy 的注释

和 Java 一样，支持单行 `//` 和多行注释 `/**/`

```groovy
// Using a simple println statement to print output to the console

/* This program is the first program
      This program shows how to display hello world */
```



### Groovy 的分号

`;` 分号，可以用来区分不同的代码块。

在 Groovy 编写中可以省略分号符



### Groovy 的标识符

和 Java 一样，标识符就是变量名，声明规则和 Java 一样，可以以字母开头，美元或下划线。但不能以数字开头。



### Groovy 的关键字

大部分关键字和 Java 中的用法一样

| as         | assert      | break          | case           |
| ---------- | ----------- | -------------- | -------------- |
| **catch**  | **class**   | **const**      | **continue**   |
| **def**    | **default** | **do**         | **else**       |
| **enum**   | **extends** | **false**      | **Finally**    |
| **for**    | **goto**    | **if**         | **implements** |
| **import** | **in**      | **instanceof** | **interface**  |
| **new**    | **pull**    | **package**    | **return**     |
| **super**  | **switch**  | **this**       | **throw**      |
| **throws** | **trait**   | **true**       | **try**        |
| **while**  |             |                |                |



## 数据类型

Groovy 的内置数据类型和 Java 一样有 8 种。`byte、short、int、long、float、double、char、boolean`

字符串：`String`

并且都有其对应的封装类



## 变量

变量也和 Java 一样，除了使用基本数据类型和引用类型，还可以使用`def`动态数据类型来声明变量。

```
// 和java的区别就是多了,def动态类型
def a = 1; // 在编译时会自动转化为int
def a = 'aa';
```



## 运算符

大部分运算符和 Java 一样，如：算术运算符、关系运算符、逻辑运算符、位运算符、赋值运算符

与 Java 不同点在于，新增了 **范围运算符**

```
def range = 0..5 
```

范围运算符通过`..`来指定其开始和结束的范围。

上面示例就简单的定义了一个，从 0 到 5 的范围。

```
class Example { 
   static void main(String[] args) { 
      def range = 5..10; 	// 定义一个5~10的范围
      println(range); 	// 打印范围
      println(range.get(2)); 	// 取范围中是数据
   } 
}
```

运行

```
[5, 6, 7, 8, 9, 10] 
7
```

可以发现，范围变量，本质就是封装了一层数组。在操作时，通过其下标进行存取。

**运算符优先级**

| 运算符                                   | 名称                                   |
| ---------------------------------------- | -------------------------------------- |
| `++` ，`--` ，`+` ，`-`                  | 预增 / 减（自增 / 减），一元加，一元减 |
| `*`，` /`， `％`                         | 乘法，除法，取模                       |
| `+`，`-`                                 | 加法，减法（二元）                     |
| `==`，`！=`， `<=>`                      | 等于，不等于，比较运算符               |
| `＆`                                     | 二进制 / 位运算符与                    |
| `^`                                      | 二进制 / 位异或                        |
| `                                        | `                                      |
| ！                                       | 逻辑非                                 |
| `&&`                                     | 逻辑与                                 |
| `                                        |                                        |
| `=`，`+=`，`-=`，`*=`，`/=`，`%=`，`**=` | 各种赋值运算符                         |

## 循环

Groovy 中的循环和 Java 中一样，包含循环跳出和结束循环等

```
while、for、break、continue
```

**不同之处**

在 Java 中我们常常使用`foreach`来遍历

```
for(String str : strList){
    ...
}
```

而在 Groovy 中提供了`for in`语句，其使用方法和 Java 一样，只是关键字不同

```
for(def str in strList){
    println(str);
}
```



## 条件语句

Groovy 中的条件语句和 Java 中的一样，其关键字如下

`if、else、switch`等

包括其嵌套使用等



## 方法

在 Groovy 中，方法的返回类型可以是 def 类型，而且在定义方法参数时，可以不必显示的定义参数的具体类型。

其方法修饰符默认为 public，可以添加其它修饰符，和 Java 一样，默认 public 可以不用写

### 无参方法

```
def methodName() { 
   //Method code 
}
```



### 有参方法

```
def methodName(parameter1, parameter2, parameter3) { 
   // Method code goes here 
}
```

具体示例

```
class Example {
   static void sum(int a,int b) {
      int c = a+b;
      println(c);
   }  
	
   static void main(String[] args) {
      sum(10,5);
   } 
}
```

输出 `15`



### 默认参数值

在 Groovy 中，定义方法参数时，可以指定其参数的默认值，如果在调用此方法时有传入值，则使用传入值，否则使用默认值

```Groovy
class Example { 
   static void sum(int a,int b = 5) { 	// 参数b的默认值为5
      int c = a+b; 
      println(c); 
   } 
	
   static void main(String[] args) {
      sum(6); // 我们在调用时，只传入了一个参数
   } 
}
```

输出 `11`

因为参数 b 有默认值，所以我们在使用时，可以选择传或不传参数 b

如果调用时，传入参数 b，则在计算时，会使用我们传入的值

```Groovy
class Example {
   static void sum(int a,int b = 5) {
      int c = a+b;
      println(c);
   } 
	
   static void main(String[] args) {
      sum(6,6);	// 传入参数b
   } 
}
```

输出 `12`



**无参调用**

```Groovy
class test {

    static void main(String[] args){
        sun()	// 无参调用
    }

    static void sun(a = 1,b = 2){
        println(a+b)
    }
}
```

输出 `3`

**注意：** 如果方法没有默认值，在调用时，必须传入参数。



## 文件 I/O

Groovy 的 IO 除了使用 Java 的 API 以外，还提供了辅助类供我们使用

标准 Java 类

- java.io.File
- java.io.InputStream
- java.io.OutputStream
- java.io.Reader
- java.io.Writer



### 读取文件

可以使用 Groovy 提供的 File 类中的 eachLine 方法来快速读取文本文件的每一行

```Groovy
import java.io.File 
class Example { 
   static void main(String[] args) { 
      new File("E:/Example.txt").eachLine {  
         line -> println "line : $line" 
      } 
   } 
}
```



如果想将文件的整个内容作为字符串获取，可以使用文件类的 text 属性

```Groovy
class Example { 
   static void main(String[] args) { 
      File file = new File("E:/Example.txt") 
      println file.text 
   } 
}
```



### 写入文件

在写入文件时，也提供了对应的写入辅助

```Groovy
import java.io.File 
class Example { 
   static void main(String[] args) { 
      new File('E:/','Example.txt').withWriter('utf-8') { 
         writer -> writer.writeLine 'Hello World' 
      }  
   } 
}
```



### 获取文件大小

可以通过 File 类的 length 属性进行获取

```Groovy
class Example {
   static void main(String[] args) {
      File file = new File("E:/Example.txt")
      println "The file ${file.absolutePath} has ${file.length()} bytes"
   } 
}
```



### 测试文件是否为目录

```Groovy
class Example { 
   static void main(String[] args) { 
      def file = new File('E:/') 
      println "File? ${file.isFile()}" 
      println "Directory? ${file.isDirectory()}" 
   } 
}

// 输出
File? 
Directory? True
```



### 创建目录

```Groovy
class Example {
   static void main(String[] args) {
      def file = new File('E:/Directory')
      file.mkdir()	// 如果文件夹不存在则创建
   } 
}
```



### 删除文件

```Groovy
class Example {
   static void main(String[] args) {
      def file = new File('E:/Example.txt')
      file.delete()
   } 
}
```



### 复制文件

```Groovy
class Example {
   static void main(String[] args) {
      def src = new File("E:/Example.txt")
      def dst = new File("E:/Example1.txt")
      dst << src.text
   } 
}
```

复制文件使用 `<<` 特殊符号即可进行复制，

代码解释：将创建文件 Example1.txt，并将文件 Example.txt 的所有内容复制到此文件。



### 获取目录所在驱动器

```Groovy
class Example { 
   static void main(String[] args) { 
      def rootFiles = new File("test").listRoots() // 获取驱动器列表
      rootFiles.each { 
         file -> println file.absolutePath // 遍历并打印
      }
   }
}
```



### 列出指定目录下的文件

```Groovy
class Example {
   static void main(String[] args) {
      new File("E:/Temp").eachFile() {  // 使用 eachFile 获取目录下的所有文件
         file->println file.getAbsolutePath()
      }
   } 
}
```



### 列出指定目录下的所有文件，包括递归处理子目录文件

```Groovy
class Example { 
   static void main(String[] args) {
      new File("E:/temp").eachFileRecurse() {	// 使用 eachFileRecurse 方法
         file -> println file.getAbsolutePath()
      }
   }
} 
```



## 字符串

Groovy 中的字符串可以用单引号（'），双引号（"）或三引号（" '）括起来。

```Groovy
class test {

    static void main(String[] args){
        String a = 'Hello Single';
        String b = "Hello Double";
        String c = "'Hello Triple' + 'Multiple lines'";	// 注意如果单引号在外则不是字符串拼接

        println(a);
        println(b);
        println(c);
    }
}
```



输出

```Groovy
Hello Single
Hello Double
'Hello TripleMultiple lines'
```



也可以使用占位符去拼接字符串

```Groovy
name = 'kk'
age = '18'

// 占位符拼接的用法
print("my name is ${name},my age is ${age}.")
```



### 字符串索引

可以直接使用字符下标获取字符串中的字符

```Groovy
class Example { 
   static void main(String[] args) { 
      String sample = "Hello world"; 
      println(sample[4]); // 打印第5个字符
		
      // 打印字符串最后一位字符
      println(sample[-1]); 
      println(sample[1..2]);// 打印索引 1 ~ 2 的字符 
      println(sample[4..2]);// 反向打印，从索引4到索引2
      
   } 
}
```



输出

```
o 
d 
el 
oll 
```



## 列表

Groovy 中的一个列表中的数据可以是任意类型。这 java 下集合列表有些不同，java 下的列表是同种类型的数据集合。

Groovy 列表可以嵌套列表。如 [1,2,[3,4,5],“aaa”]

Groovy 列表内置有反转方法 reverse()。调用 List.reverse() 可以实现列表反转。Groovy 列表内置有排序方法 sort()。调用 List.sort() 可以实现列表排序。

### 常用方法

**添加**

```Groovy
def list1 = [100, 101]
def list2 = [ 99,98,1]
println list2.plus(list1) //输出结果： [100, 101, 99, 98,1]
// list2.plus(list1) 也可以写成 list2 + list1
```



**删除**

```Groovy
def list1 = [12, 13]
def list2 = [11, 2, 33, 12, 13, 16]
println list2.minus(list1) //输出结果： [11, 2, 33, 16]
//list2.minus(list1) 也可以写成 list2 - list1
```



## 键值映射

在 Groovy 除了使用 Java 的 Map 集合，还可以显示的定义映射

```Groovy
['TopicName':'Lists','TopicName':'Maps'] //具有TopicName作为键的键值对的集合及其相应的值。
[:] // 空映射。
```



## 正则表达式

Groovy 中，使用正则表达式可以使用 `~` 符号来判断

```Groovy
'Groovy' =~ 'Groovy' 
'Groovy' =~ 'oo' 
'Groovy' ==~ 'Groovy' 
'Groovy' ==~ 'oo' 
'Groovy' =~ '∧G' 
'Groovy' =~ 'G$' 
'Groovy' =~ 'Gro*vy' 'Groovy' =~ 'Gro{2}vy'
```



## traits 特征

在 Groovy 中可以定义用 traits 修饰的类，表示特征类，它可以看作是有默认实现和状态的接口

```Groovy
trait Marks {
   void DisplayMarks() {
      println("Display Marks");
   } 
}
```



我们可以使用 implement 关键字以类似于接口的方式实现 trait

```Groovy
trait Marks { 
   void DisplayMarks() {	// 特征里有一个实现方法
      println("Display Marks");
   } 
} 

class Student implements Marks { 	// 可以像实现接口一样实现 trait 类
   int StudentID
   int Marks1;
}

class Example {
   static void main(String[] args) {
      Student st = new Student();
      st.StudentID = 1;
      st.Marks1 = 10; 
      println(st.DisplayMarks());
   } 
} 
```



### 实现接口

Traits 类可以实现接口

```Groovy
interface Total { 	//	接口
   void DisplayTotal() 
} 

trait Marks implements Total {	// trait实现接口
   void DisplayMarks() {
      println("Display Marks");
   }
	
   void DisplayTotal() {	// 实现接口的方法
      println("Display Total"); 
   } 
} 

class Student implements Marks { 	// 普通类实现trait类
   int StudentID
   int Marks1;  
} 

class Example {
   static void main(String[] args) {
      Student st = new Student();
      st.StudentID = 1;
      st.Marks1 = 10;
		
      println(st.DisplayMarks());
      println(st.DisplayTotal());
   } 
} 
```



### 属性

在 trait 类中也可以定义属性

```Groovy
interface Total {
    void DisplayTotal() 
} 
	
trait Marks implements Total {	//trait类
    int Marks1;

    void DisplayMarks() {
        this.Marks1 = 10;
        println(this.Marks1);
    }

    void DisplayTotal() {
        println("Display Total");
    } 
}
```



### 多重实现

```Groovy
trait Marks {
   void DisplayMarks() {
      println("Marks1");
   } 
} 

trait Total {
   void DisplayTotal() { 
      println("Total");
   } 
}  

class Student implements Marks,Total {	// 具体类可以实现多个 特征类
   int StudentID 
}  

class Example {
   static void main(String[] args) {
      Student st = new Student();
      st.StudentID = 1;
		
      println(st.DisplayMarks());
      println(st.DisplayTotal()); 
   } 
}
```



### 特征继承

特征类可以继承

```Groovy
trait Marks {
    void DisplayMarks() {
        println("Marks1");
    } 
} 

trait Total extends Marks {	//Total 继承 Marks
    void DisplayMarks() {
        println("Total");
    } 
}  

class Student implements Total {
    int StudentID 
}

class Example {
    static void main(String[] args) {
        Student st = new Student();
        st.StudentID = 1;
        println(st.DisplayMarks());
    } 
} 
```



## 闭包

Groovy 的闭包，就是一个匿名的代码块，并且可以作为参数

```Groovy
class Example {
   static void main(String[] args) {
      def clos = {println "Hello World"};	// 简单的闭包
      clos.call();
   } 
}

// 输出
Hello World
```

上面的例子中，使用`{代码块}`声明的被称为闭包，变量标识符可以通过 call 方法执行代码块



### 闭包中的形式参数

闭包代码块中，可以包含形式参数

```Groovy
class Example {
   static void main(String[] args) {
      def clos = {param -> println "Hello ${param}"};
      clos.call("World");
   } 
}
```



还可以使用下面这种方式来进行定义，可以得到相同的结果

```Groovy
class Example {
   static void main(String[] args) {
      def clos = {println "Hello ${it}"};
      clos.call("World");
   } 
}
```

`it`参数，是 Groovy 定义的关键字，它被称为隐式单个参数



### 闭包和变量

在闭包代码块中，我们还可以使用变量，通过`${变量名}`来使用

```Groovy
class Example {     
   static void main(String[] args) {
      def str1 = "Hello";
      def clos = {param -> println "${str1} ${param}"}
      clos.call("World");
		
      // 改变star1的值
      str1 = "Welcome";
      clos.call("World");
   } 
}
```



输出

```
Hello World 
Welcome World
```

当我们改变 str1 变量值的时候，其内部的获取到的值，也会跟着改变。



### 闭包参数

闭包可以用作方法的参数

```Groovy
class Example { 
    def static Display(clo) {
        // 执行闭包并传入参数   
        clo.call("Inner");
    } 

    static void main(String[] args) {
        def str1 = "Hello";
        def clos = { param -> println "${str1} ${param}" }
        clos.call("World");

        // 将闭包传入到方法
        Example.Display(clos);
    } 
}
```

输出

```
Hello World
Hello Inner
```



### 集合和字符串中的闭包

集合中，我们可以通过`.each`函数来传入一个闭包，并将闭包应用于集合中每一个元素

```Groovy
class Example {
   static void main(String[] args) {
      def lst = [11, 12, 13, 14];
      lst.each {println it}	// 传入闭包，it为单个隐式参数
   } 
}
```

输出

```
11 
12 
13 
14
```



### 键值对映射示例

```Groovy
class Example {
   static void main(String[] args) {
      def mp = ["TopicName" : "Maps", "TopicDescription" : "Methods in Maps"]             
      mp.each {println it}
      mp.each {println "${it.key} maps to: ${it.value}"}
   } 
}
```

输出

```
TopicName = Maps 
TopicDescription = Methods in Maps 
TopicName maps to: Maps 
TopicDescription maps to: Methods in Maps
```



## 异常

在 Groovy 中对异常处理的写法更为宽松：如果没有在该代码块内通过 try-catch 处理异常，那么该异常就会自动地向上级抛出，且无需在函数声明中使用 `throws` 主动定义它们。



## 其它语法

### 非空则调用语法

在 java 中判断为空

```Groovy
String maybeNull = "I'm Java";
if(maybeNull != null){
    System.out.println(nullString.length());
}
```



而在 Groovy 中可以使用`?.`操作符来解决



```Groovy
String maybeNull = 'I\'m groovy'
print(maybeNull?.length())
```



### 精简的 Bean

在编写 bean 时，可以使用 def 来表明其属性，不推荐

```Groovy
class Student_{
	final name
	def age
	Student_(name,age){
		this.name = name 
		this.age = age
	}
}

s = new Student_('KK',23)	//在使用时，会自动推导其属性的类型
```



### 省略构造器

```Groovy
class Student_{
    String name
    Integer age
}

// 没有实现 Student_(name,age) 构造器，但是可以直接使用
stu1 = new Student_(name: "KK",age: 12)

// 同样，我们也没有手动实现 Student_(name) 构造器。
stu2 = new Student_(name:"KK")
```



在未指定构造器的情况下我们可以使用键值对的形式去构建对象。

如果没有提供构造器，我们不能使用下面的方式进行创建对象。

```Groovy
stu1 = new Student_("KK",12)
stu2 = new Student_("KK")
```

除非手动补上其对应的构造器



### 多重赋值

```Groovy
def swap(x, y) { 
    return [y, x] 
}

Integer a, b
a = 10
b = 50

// 通过多重赋值实现了两数交换
(a, b) = swap(a, b)
print("a=$a,b=$b")
```



如果方法 (函数) 返回的是一个数组，那么 Groovy 支持使用多个变量接收数组内的元素内容。

如果接收的变量和返回值个数不匹配时，Groovy 会进行如下操作

- 如果接收的变量更多，那么会将没有赋值的变量赋为 null 。
- 如果返回值更多，那么多余的返回值会被丢弃。



### 多方法接口实现

在 java 中实现一个接口方法可以通过匿名或者 Lambda 的方式来实现

```Groovy
Calculator<Integer> calculator = new Calculator<Integer>() {	// 匿名
    @Override
    public Integer add(Integer a, Integer b) {
        return a + b;
    }
};

Calculator<Integer> calculator = (a, b) -> a + b;	// Lambda
```



在 Groovy 中使用如下方法来实现

```
def a = {a,b ->return a+b} as Calculator<Integer>
```



如果接口是多方法，则可以通过封装一层 Map 来实现

```Groovy
interface Calculator<T> {
    T add(T a, T b)
    T sub(T a, T b)
}

def cal = [	//不同方法提供不同实现，通过as关键字来指定接口
        add: { a, b -> a + b },	
        sub: { a, b -> a - b }
] as Calculator<Integer>

def c = cal.sub(1,2)	//调用方法
print(c)
```



### 其它注解



#### @Canonical 替代 toString

```Groovy
@Canonical
// 如果不想打印 id 和 score，可以：
// @Canonical(excludes="id,score")
class Student {
    Integer id
    String name
    Integer age
    String major
    Integer score
}

// 如果没有此注解，打印的则是 Student@Hashcode
// 如果有注解，打印的则是 Student(1,"KK",20,"CS","score")
print new Student(id: 1,name:"KK",age: 20,major: "CS",score: 90.0d)
```



#### @Delegate 实现委托

使用 `@Delegate` 注解，在 Groovy 中实现方法委托非常容易。委托是继承以外的另一种代码复用的思路。在下面的代码块中，Manager 通过注解将 `work()` 方法委托给了内部的 worker 属性：

```Groovy
class Worker{
    void work(){
        print("worker is working exactly.")
    }
}

// Manager 获得了 Worker 的公开方法，尽管 worker 属性本身是 private.
class Manager{
    @Delegate private Worker worker = new Worker()	// 委托类
}

// 检查 Manager 实例有没有 work 方法，没有就去委托 worker 执行此方法。
new Manager().work()	// 调用委托类的方法
```



#### @Immutable 不可变对象

在 java 中创建不可变对象得使用 final 关键字，Groovy 可以使用 @Immutable 注解来实现 final 修饰

```groovy
@Immutable		// 修饰student类为不可变
class Student_{
    String id
    String name
}

def stu = new Student_(id:"0001",name:"KK")

println stu
```



#### @Newify 注解

允许我们创建对象时，忽略 new 关键字

```groovy
class Student{
    String id
    String name
}

class Teacher{
    String id
    String name
}

@Newify(Student)
def getStudent(){
    // 在函数内部创建 Student 时，可以省略掉 new 关键字。
    Student(id:"0001",name: "KK")
}

// 多个类型使用数组的形式排列。
@Newify([Student,Teacher])
static def getStudentAndTeacher(){
    [Student(id:"0001",name:"KK"),Teacher(id: "0002",name:"FF")]
}
```



#### @Singleton 单例模式

```groovy
// 懒加载的单例模式，lazy 项是可选的。
@Singleton(lazy = true)
class TheUnique{
    {
        println "created only once"
    }
}

// 通过 .instance 调用这个单例对象。
TheUnique.instance
```



## 注意 Groovy 的 == 符号

在 Java 中，`==` 可以比较两个基本数据类型的值，或者比较两个引用类型的 HashCode。

而在 Groovy 当中，这两者的混乱程度有所加剧：Groovy 的 `==` 相当于是 Java 的 `.equals()` 方法或者是 `compareTo()` 方法 (见运算符重载的那个表格)，而 Java 原始的 `==` 语义在 Groovy 中变成了 `is()` 方法。

```
str1 = "111"
str2 = "222"

// 相当于是 Java 语义中的 str1 == str2
str1.is(str2)

// 相当于是 Java 语义中的 str1.equals(str2)
str1 == str2
```



如果比较的类实现了 `Compareble` 接口，那么 `==` 的语义优先会选择 `compareTo()` 方法而非 `equals()` 方法。
