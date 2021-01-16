require_relative 'Shape.rb'
class Eclipse  < Shape
@@Eclipses = 0
    def initialize(aa, bb)
        
        if(aa >= 0 && bb >= 0 )       
          @@Eclipses+=1
          Shape.increase
    
        end
       # super()
     @a= aa
     @b= bb
   
    end

    def Eclipse.getCount() 
        
        return @@Eclipses
    end

    def area()


return  @a * @b*3.14159
    end

def eccentricity 
    if (@a*@a - @b*@b ) >=0
return  Math.sqrt(@a*@a - @b*@b)/@a

   
else
    return "undefined"
end 


end

def print()

    if(@a < 0 || @b < 0 )
        
      puts "Error : Invalid Elipse"

    else 
    puts "Eclipse ,  perimeter : " + eccentricity.to_s    + ", area: "  + area.to_s

    end 
end

end