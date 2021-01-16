class Shape 
    @@Shape = 0
    def initialize()
       
        @name,@perimeter,@area = "Shape","undefined","undefined"
    end

    def print()
        puts " #@name ,  perimeter : #@perimeter , area: #@area"
    end


    def Shape.increase() 
        
        @@Shape+=1
    end

    def Shape.Count() 
        
        return @@Shape
    end

    def perimeter()
        return  nil
    end

    def area()
        return nil 
    end 

end 