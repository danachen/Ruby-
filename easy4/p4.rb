# Prob 4: Leap Years (Part 2)

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur 
# in any year that is evenly divisible by 4.

# what's changed here? After 1752, the new leap year calculation is adopted
# before 1752, only %4 is considered



def leap_year?(year)
  
  if year < 1752
    year % 4 == 0 
  else  
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  end

end


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true