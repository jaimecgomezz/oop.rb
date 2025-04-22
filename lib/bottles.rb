class Bottles

    def verse (n)
     if n>2
       "#{n} bottles of beer on the wall, " + 
       "#{n} bottles of beer.\n" +
       "Take one down and pass it around, " +
       "#{n-1} bottles of beer on the wall.\n"
     elsif n==2 
      "#{n} bottles of beer on the wall, " +
      "#{n} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{n-1} bottle of beer on the wall.\n"
     elsif n==1
      "#{n} bottle of beer on the wall, " +
      "#{n} bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
     elsif n==0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"

             
     end
    end

   def song
     verses(99,0)
   end

   def verses(x,y)
     x.downto(y).map {|n| verse(n)}.join("\n")  
   end


end



 
