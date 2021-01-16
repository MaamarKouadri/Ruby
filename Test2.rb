require_relative 'Shape.rb'
require_relative 'Circle.rb'
require_relative 'Eclipse.rb'
require_relative 'Rectangle.rb'

#aFile = File.new("File.txt", "r")

ShapeArray = Array.new

line_num=0
currentline=""
text=File.open("File.txt").read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
  #print " #{line}"
  currentline =  line.split
 
    if(currentline[0] == "rectangle")
        
        rectangle = Rectangle.new(currentline[1].to_i,currentline[2].to_i)
    
        ShapeArray.push(rectangle)   
        rectangle.print
    end


    if(currentline[0] == "circle")
        
        circle = Circle.new(currentline[1].to_i)
        ShapeArray.push(circle)   
        circle.print
    end


    if(currentline[0] == "ellipse")
        
        eclipse = Eclipse.new(currentline[1].to_i,currentline[2].to_i)
        ShapeArray.push(eclipse)   
        eclipse.print
    end

    if(currentline[0] == "shape")
        
        shape = Shape.new()
        ShapeArray.push(shape)   
        shape.print
    end

end

hashName = { "Shape" => Shape.Count.to_s , "Rectangle" => Rectangle.getCount.to_s,"Circle" => Circle.getCount.to_s, "Eclipse" => Eclipse.getCount.to_s }

puts "-------------------------------------------------"
puts "Shape(s) " + hashName ["Shape"] 
puts "Rectangle(s) " + hashName ["Rectangle"]
puts "Circle(s) " + hashName ["Circle"]
puts "Eclipse(s) " + hashName ["Eclipse"]


puts "-------------------------------------------------"


 