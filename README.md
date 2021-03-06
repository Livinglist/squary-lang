# Squary
This is the repo for Squary programming language which is currently largely based on Lox with slightly changed syntax.

## Getting Started

### Build Squary from source

First check out Squary:

* `git clone https://github.com/Livinglist/squary-lang.git`
* `cd squary-lang`

Then build the binary:

* `make`

Finally you can run squary by either:

* `./squary`

or
* `./squary [some_file].sqr`

### Syntax

Operators:

| Operator | Info |
| ------------- | ------------- |
|  + | add  |
|  - | subtract  |
|  * | multiply  |
|  / | divide  |
|  = | assign  |
|  != | not equal to | 
|  == | equal to  |
|  < | less than  |
|  > | greater than  |
|  <= | less or equal to  |
|  >= | greater or equal to  |
|  or | or  |
|  and | and  |

Declare a variable:

```kotlin
var num = 123;
var anotherNum = 3.14;
var myStr = 'Hello World';
var myBool = true;
```

Declare and call a function:

```javascript
fun add[a,b][
  return a + b;
]

var result = add[1,2];

print result; //Prints 3
```

Control flow:

```c
//Prints always true
if[0 < 1][
  print 'always true';
]else[
  print 'never gonna be reached';
]

//Brackets can be omitted for single line statement
if[0 == 0] print '0 equals to 0';

//Prints 0,1,2,3,4
for[var i = 0; i < 5; i = i + 1][
  print i;
]

while[true][
  //This is a dead loop
]
```

Class:

```d
class Person[
  create[name][
    this.name = name;
  ]
  
  printName[][
    print this.name;
  ]
  
  changeName[name][
    this.name = name;
  ]
]

class Employee < Person[
  create[name,id][
    this.name = name;
    this.id = id;
  ]

  printInfo[][
    super.printName[];
    print this.id;
  ]
  
  changeId[id][
    this.id = id;
  ]
]

var me = Person['George'];
me.name = 'Tom';
me.changeName['Jerry'];
me.printName[]; //Prints Jerry

var employee = Employee['George', 123456];
employee.name = 'Tom';
employee.changeName['Jerry'];
employee.printName[]; //Prints Jerry
employee.printInfo[]; //Prints Jerry 123456
```
