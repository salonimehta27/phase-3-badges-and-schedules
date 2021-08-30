# Write your code here.
require 'pry'

list_of_speakers=["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker name 
 "Hello, my name is #{name}."
end

def batch_badge_creator array 
 array.map do |name|
  "Hello, my name is #{name}."
    end
end
batch_badge_creator list_of_speakers

def assign_rooms array
  array.map.with_index(1) do |name,room|
    "Hello, my name is #{name}."
    "Hello, #{name}! You'll be assigned to room #{room}!"
 end
end 
assign_rooms list_of_speakers

def printer array
 batch_badge_creator(array).each do |badge|
    puts badge
 end
 assign_rooms(array).each do |assignment|
    puts assignment 
 end
end
printer list_of_speakers