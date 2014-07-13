## VectorArithmetic

### Overview
Extending  ```CGPoint```, ```CGSize``` and ```CGVector``` with the protocols 
```VectorOperatable``` &  ```VectorArithmetic```

Handles some of the Swift bugs related to architecture differences.


### Dependency
>To get better interoperability between 32 and 64-bit numerical types use 
* [ScalarArithmetic](https://github.com/seivan/ScalarArithmetic)

### Usage

##### Operators

```swift
var vector = CGVector(20, 5.5)
let point = CGPoint(x: 5, y: 5)

//Add
point + vector
point += vector

//Subtract
point - vector
point -= vector

//Multiply
point * vector
point *= vector

//Divide
point / vector
point /= vector

//Multiply with scalar
point * 2.0
point *= 2.0

//Divide with scalar
point / 2.0
point /= 2.0
```

##### Equatable and Comparable
```swift
point == vector
point != vector
point < vector
point <= vector
point > vector
point >= vector
```

##### Math Functions
```swift
let vector = CGVector(20, 5.5)
let point = CGPoint(x: 5, y: 5)

vector.angleInRadians // -1.30243011588899
vector.magnitude // 20.7424685126915
vector.length // synonym to magnitude
vector.lengthSquared // 430.25
vector.dotProduct(point) // 127.5
vector.crossProduct(point) // -72.5
vector.distanceTo(point) // 15.0083310198036
vector.reversed  // {dx -20.0, dy -5.5}
vector.normalized  // {dx 0.96420539280379, dy 0.265156483021042} 
vector.limited(20) // {dx 19.2841078560758, dy 5.30312966042085}
vector.scaled(20) // synonym to limited()
vector.angled(90) // {dx -9.29415287392715, dy 18.5436976451859}
``` 


##### Generic initializer
```swift
let point = CGPoint(horizontal:2.0,vertical:2.0)
let vector = CGVector(horizontal:2.0,vertical:2.0)
let yourStruct = YourStruct(horizontal:2.0,vertical:2.0)
```

##### Type constraints
```swift
class Boid<T:VectorOperatable, U:VectorOperatable> {
  var position = T(horizontal: 2.0, vertical: 2.5)
  var velocity = U(horizontal: 2.0, vertical: 2.5)
}

let boid = Boid<CGPoint, CGVector>()
boid.position = CGPointZero
boid.velocity = CGVectorMake(20, 20)
boid.velocity > boid.position // True
```

### Extending

#### To enable operator conform to the protocol ```VectorOperatable```

##### Equatable and Comparable
```swift
protocol VectorOperatable  {
  init(horizontal:Double,vertical:Double)
  var horizontal:Double { get set }
  var vertical:Double { get set }
}
```

##### Math Functions
```swift
protocol VectorArithmetic : VectorOperatable {
  var angleInRadians:Double {get}
  var magnitude:Double {get}
  var length:Double {get}
  var lengthSquared:Double {get}
  func dotProduct <T : VectorArithmetic>(vector:T) -> Double
  func distanceTo <T : VectorArithmetic>(vector:T) -> Double
  var reversed:Self {get}
  var normalized:Self {get}
  func limited(scalar:Double) -> Self
  func scaled(scalar:Double) -> Self
  func angled(scalar:Double) -> Self 
}
``` 


###Contact


If you end up using VectorArithmetic in a project, I'd love to hear about it.

email: [seivan.heidari@icloud.com](mailto:seivan.heidari@icloud.com)  
twitter: [@seivanheidari](https://twitter.com/seivanheidari)

***

### License

VectorArithmetic is © 2014 [Seivan](http://www.github.com/seivan) and may be freely
distributed under the [MIT license](http://opensource.org/licenses/MIT).
See the [`LICENSE.md`](https://github.com/seivan/VectorArithmetic/blob/master/LICENSE.md) file.

*** 