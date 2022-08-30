require 'pry'

def badge_maker name 
    "Hello, my name is #{name}."    
end

def batch_badge_creator array
    batches = array.map{|name| "Hello, my name is #{name}."}
   
    batches
end

def assign_rooms array
    # array.each.with_index(1) do |value, index|
    #     "Hello,#{value} You'll be assigned to #{index}!"
    # end

    list = []

    array.length.times do |index|
       list << "Hello, #{array[index]}! You'll be assigned to room #{index + 1}!"
    end

    list
end

def printer array
   batch = batch_badge_creator(array)
   room = assign_rooms(array)

   batch.length.times do |index|
    puts batch[index]
   end

   room.length.times do |index|
    puts room[index]
   end
end

binding.pry
