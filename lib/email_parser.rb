require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email

  def initialize(email)
    @email = email
  end
  
  def parse
    #new_all = @email.split(", ")
    #new_new_all = new_all.map {|email| email.gsub(/\s/, ', ')}
    #new_new_all.join(", ").split(", ").uniq
    @email.split(", ").map {|email| email.gsub(/\s/, ', ')}.join(", ").split(", ").uniq
  end
  
end