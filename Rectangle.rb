require_relative 'Shape.rb'
class Rectangle  < Shape
    @@Rectangle =0;
    def initialize(height, width)

        if(height >= 0 && width >= 0 )  
           @@Rectangle+=1
           Shape.increase

        end
        super()
       
        @height= height
        @width= width
    end
    def perimeter()
       
        return  2 * (@height + @width)
    end

    def area()
return  @height * @width
    end

    def Rectangle.getCount()
        
        return @@Rectangle
    end
    
    def print()
     

    if(@height < 0 ||@width < 0)
       
      puts "Error : Invalid Rectangle"
      
    else
        
      puts "Rectangle ,  perimeter : " + perimeter.to_s    + ", area: "  + area.to_s
    end
      
    end

end
