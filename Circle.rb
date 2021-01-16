require_relative 'Shape.rb'
class Circle < Shape
    @@Circle = 0
    def initialize(radius)

        if(radius >= 0) 
           @@Circle+=1
           Shape.increase

        end
        super()
      
    super()
        @radius= radius
    end
    def perimeter()
        return  2*@radius*3.14159
    end

    def area()
return @radius*@radius * 3.14159
    end

    def Circle.getCount() 
        
        return @@Circle
    end

    def print()

        if(@radius < 0  )
          
            puts "Error : Invalid Circle"
      
        else
 
         puts "Circle ,  perimeter : " + perimeter.to_s    + ", area: "  + area.to_s

        end
    end

end