class AcademicYear 
  require 'date'  # no penalty for missing this
  
  # INITIALIZE METHOD
  def initialize(start_year=Date.today.year)
    if in_year?(start_year)
      @start_date = Date.new((start_year - 1),8,1)
      @end_date   = Date.new((start_year),7,31)
    else
      @start_date = Date.new(start_year,8,1)
      @end_date   = Date.new((start_year + 1),7,31)
    end
    
  end
  
  # ACCESSORS
  # attr_reader :start_date, :end_date
  # attr_accessor :start_of_classes
  attr_reader :start_of_classes, :start_date, :end_date
  
  # INCLUDES? METHOD
  def includes?(date)
    # having used .include? in phases, we apply it here:
    # (start_date..end_date).include?(date)
    
    #.cover? faster is faster than .include? so:
    # (start_date..end_date).cover?(date)
    
    # this basic approach also works:
    start_date <= date && end_date >= date
    # check(some_date)
    # if (d >= @start_date) and (d <= @end_date)
    #   return true
    # else
    #   return false
    # end
    
  end


  private
  def in_year?(yr)
    return Date.today < Date.new(yr,7,31)
  end

  # def find_default_start_year
  #   Date.today.month < 8 ? (Date.today.year - 1) : Date.today.year
  # end
end
