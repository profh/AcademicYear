#require './academic_year_solution'
require './academic_year'
require 'minitest/autorun'

class TestAcademicYear < Minitest::Test
  def test_accessor_methods_work
    assert AcademicYear.new.respond_to? :start_date
    assert !AcademicYear.new.respond_to?(:start_date=)
    assert AcademicYear.new.respond_to? :end_date
    assert !AcademicYear.new.respond_to?(:end_date=)
    assert AcademicYear.new.respond_to? :start_of_classes
    assert AcademicYear.new.respond_to?(:start_of_classes=)
  end
  	
  def test_initialize_works_with_no_args
    this_year = AcademicYear.new
    assert_equal Date.new(2018,8,1), this_year.start_date
    assert_equal Date.new(2019,7,31), this_year.end_date
  end
    	
  def test_initialize_works_with_args
    last_year = AcademicYear.new(2016)
    assert_equal Date.new(2016,8,1), last_year.start_date
    assert_equal Date.new(2017,7,31), last_year.end_date
  end
    	
  def test_for_current_year_method_includes?
    this_year = AcademicYear.new
    assert this_year.includes? Date.today
    assert this_year.includes?(Date.new(2019,1,5))
    assert !this_year.includes?(Date.new(2018,4,5))
    assert !this_year.includes?(Date.new(2019,12,5))
  end
  	
  def test_for_past_years_method_includes?
    past_year = AcademicYear.new(2011)
    assert past_year.includes?(Date.new(2011,10,1))
    assert past_year.includes?(Date.new(2012,2,1))
    assert !past_year.includes?(Date.new(2013,10,1))
  end
    	
  def test_for_future_years_method_includes?
    upcoming_year = AcademicYear.new(2019)
    assert upcoming_year.includes?(Date.new(2019,10,1))
    assert upcoming_year.includes?(Date.new(2020,2,1))
    assert !upcoming_year.includes?(Date.new(2018,10,1))
  end
end
