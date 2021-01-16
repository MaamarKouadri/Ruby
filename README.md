# Ruby


4.1 Multi-Paradigm Programming with Ruby

This section consists of three parts that are related, but may be implemented independently.

Q 1. Classes in Ruby

Dene the following class hierarchy in Ruby

1. Shape

(a) : the class constructors receives no parameter.

(b) : method print(): prints the name of the shape, perimeter, and area of the shape.

The name of the shape is the class name (i..e Shape for this class).

(c) : method perimeter(): default method to be implemented by child classes; return-

ing nil by default.

(d) : method area(): default method to be implemented by child classes; returning

nil by default.

2. Circle

(a) : the class constructor receives the radius as the only parameter.

(b) : method perimeter(): overridden, returns the perimeter of the circle.

(c) : method area(): overridden, returns the area of the circle.

3. Rectangle


(a) : the class constructor receives the height and width of the rectangle.

(b) : method perimeter(): overridden, returns the perimeter of the rectangle.

(c) : method area(): overridden, returns the area of the rectangle.

4. Ellipse

(a) : the class constructor receives the semi-major and semi-minor axes (a and b).

(b) : method perimeter(): not to be implemented.

3

(c) : method area(): overridden, returns the area of the ellipse (A = ab).

(d) : method eccentricity(): additional method that returns the eccentricity of the

ellipse (e =

p

a2 􀀀 b2).

Q 2. File / Text Processing

Write a Ruby program that reads text le that contains the shape information (see previous

question). Every line in the text le consist of shape name and parameters to construct the

shape. The program create every shape and calls the print method and displays the result

on the screen. In case of errors (i.e. having negative values for sides, radius, etc.), and error

message may be displayed. An example given below:

Input:

shape

rectangle 10 20

rectangle 0 10

circle 2

ellipse 2 4

ellipse -1 4

Output:

Shape, perimeter: undefined, area: undefined

Rectangle, perimeter: 60, area: 200

Rectangle, perimeter: 20, area: 0

Circle, perimeter: 12.5663706144, area: 12.5663706144

Ellipse, perimeter: undefined, area: 25.1327412287

Error: Invalid Ellipse

4

Q 3. Arrays and Hash

Extend the above program to display a statistics of the shapes after the text le is processes.

An example is given in the following

Output:

Statistics:

Shape(s): 5

Rectangle(s): 2

Circle(s): 1

Ellipse(s): 1

Use hashes to implement the above structure in memory.

Note that rectangles, circles, and ellipses are counted as shapes as well.
