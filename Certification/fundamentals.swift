/* Basic swift operators

- Assignment:
=

- Arithmethics
+, -, *, /

- Left Over:
%

- Increment / Decrement:
++, --

- Compison:
==, !=, <, >, <=, >=

- Identity:
==, !==

- Range:
a...¡b, a...b

- Logic:
!, &&, ||
*/

/* Characters & Strings
Concatenation -> +
String Mutability -> Interpolation
*/

/* Variables
1) String Literal
let string = "hello world"

2) Empty String
var StringA = ""
var stringB = String()

3) Mutability
var variableString = "hola"
variableString = "HolaMundo"
// now variableString is HolaMundo

4) Value type
String is a value type, if you create a value string, string value is copied when passing to a function or method, or when asigning a constant or variable.

5) All this works also with Characters

6) String Interpolation:
Create a new string from a mix of constants, variables, literals and expressions. Each element is wrapped in a parenthesis preceded by a "\":
var num = 10
var cadenaInter = "El precio es \(num)"
print("cadenaInter")

7) String comparison:
let primera = "cadena\u{E9}?"
let segunda = "cadena\u{65}\u{301}?"
if primera == segunda{
print("las dos son consideradas igual"
}

8) Colections
- Arrays: many same type values in an ordered list. Same value can be repeated many times in different positions.
Initialization: Array <Type> or [Type]
Emtpy Initialization: var edades = [Int]()
Many elements inside: var elementos: [String] = ["cloro", "magnesio", "aluminio"]

Add, delete or edit:
.append("Azufre") // Adds al last
.insert("Neon", at: 1)

.remove(at: 1)
.removeLast()

elementos[3] = "oro"

elementos[3..5] = ["oro", "litio", "cobalto"]

- Dictionaries:
Associations between a key/value pair, no defined order.
Initialization: Dictionary <Key, Value>

var nombreDeNumeros = [Int: String]() // Emtpy

Add, delete or modify
nombreDeNumeros[2] = "dos"

nombreDeNumeros = [:]

nombreDeNumeros[2] = "dos"
nombreDeNumeros[10] = "diez"
nombreDeNumeros[12] = "doce"
nombreDeNumeros[1] = "uno"
// [dos, diez, doce, uno]

nombreDeNumeros[2] = nil
// [diez, doce, uno]

nombreDeNumeros.removeValue(forKey: 1)
// [diez, doce]

nombreDeNumeros[12] = "doceInt"
// [diez, doceInt]

nombreDeNumeros.updateValue("doce", forKey: 12)
// [diez, doce]

- Set / conjunto
Unordered object colection, main usage: to decide if an object belongs to a set. Order isn't important.
HashTable

Initialization: Set<Element>

var letras = Set<Character>()
print("La cantidad de letras es \(letras.count).")

var vocales = Set(["a", "e", "i", "o", "u"])

HashValues for Set type
A type should be hashable with the objective of being stored in a set.  Which means, type should have a way to calculate a hash value for itself.
A hash value is an integer number that is the same for all objects which compare equivalently. This means: a==b -> a.hasValue == b.hasValue

All Swift basic types are hashable by default, you can use these value types in a Set or as Key Values in a dicrtionary

Add, delete and updateValue
letras.insert("a")
letras.insert("b")

letras.remove("c")
letras.removeAll()

BASIC OPERATIONS:
letras.intersection(vocales)
letras.symetricDifference(vocales)
letras.union(vocales)
letras.substracting(vocales)

EQUALITIES AND FATHERS
(letras == valores) -> Both sets have same values?

letras.isSuperset(of: vocales) -> All values are contained in other
letras.isSubset(of: vocales) -> All values are contained in other

letras.isStrictSubset(of: vocales) -> SubSet but not necessarily equal
letras.isStrictSuperset(of: vocales) -> SubSet but not necessarily equal

letras.isDisjoint(with: vocales) -> Determine if 2 sets have any value in common
*/

/* FLOW CONTROL
- for in
repeat a sequence many times
for index in 1...7{
print("\(index) times 7 is \(7*index)")
}
*/