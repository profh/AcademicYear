class AcademicYear 
  require 'date'  # no penalty for missing this
  
  def initialize(start_year=nil)
    start_year ||= find_default_start_year
    @start_date = Date.new(start_year,8,1)
    @end_date   = Date.new((start_year + 1),7,31)
  end
  
  attr_reader :start_date, :end_date
  attr_accessor :start_of_classes
  
  def includes?(date)
    # having used .include? in phases, we apply it here:
    (start_date..end_date).include?(date)
    
    #.cover? faster is faster than .include? so:
    # (start_date..end_date).cover?(date)
    
    # this basic approach also works:
    # start_date <= date && end_date >= date
  end

  private
  def find_default_start_year
    Date.today.month < 8 ? (Date.today.year - 1) : Date.today.year
  end
end
