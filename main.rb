require_relative 'Shape.rb'
require_relative 'Circle.rb'
require_relative 'Eclipse.rb'
require_relative 'Rectangle.rb'

ShapeArray = Array.new

line_num=0
currentline=""
text=File.open("File.txt").read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|
  
  currentline =  line.split
 
    if(currentline[0] == "rectangle")
        
        rectangle = Rectangle.new(currentline[1].to_i,currentline[2].to_i)
    
        
        rectangle.print
    end


    if(currentline[0] == "circle")
        
        circle = Circle.new(currentline[1].to_i)
          
        circle.print
    end


    if(currentline[0] == "ellipse")
        
        eclipse = Eclipse.new(currentline[1].to_i,currentline[2].to_i)
         
        eclipse.print
    end

    if(currentline[0] == "shape")
        Shape.increase
        shape = Shape.new()
           
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


 