require 'pry'

def person_formatter_nested(person)
   yield person
end

def person_formatter(person,blk)
  #binding pry
  person_formatter_nested(person,&blk)
end

def person_generator(name, age, &blk)
   person= {name: name,age: age}
    
   if blk
      person_formatter(person,blk)
    else
      person
   end
end

david = person_generator('David',25)
puts david

cesar = person_generator('Cesar',25) do |person|
  person[:age] = person[:age] + 10
  person
end
puts cesar





