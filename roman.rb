# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.

# roman_mapping = {
#   1000 => "M",
#   900 => "CM",
#   500 => "D",
#   400 => "CD",
#   100 => "C",
#   90 => "XC",
#   50 => "L",
#   40 => "XL",
#   10 => "X",
#   9 => "IX",
#   5 => "V",
#   4 => "IV",
#   1 => "I"
}
def integer_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

# a method named full_name that generates the full names of people given their first name, followed by some variable number of middle names, followed by their last name.

def full_name (*names)
  names.join(" ")
end


# def full_name(first, *last)
#   last.reduce(first){|full, name| full + " #{name}"}
# end


# a method convert_temp that helps in temperature conversion. The method will receive a number as an input (temperature), a named parameter input_scale (scale for input temperature), and an optional parameter output_scale (output temperature scale, defaults to Celsius) and return the converted temperature. It should perform interconversion between Celsius, Fahrenheit and Kelvin scale.
def convert_temp(temp, input_scale:, output_scale: 'Celsius')
  case input_scale.downcase
  when 'fahrenheit'
      return output_scale == 'kelvin' ? 
      ((temp - 32) / 1.8) + 273.15 : (temp - 32) / 1.8
  when 'celsius'
      return output_scale == 'kelvin' ? 
      temp + 273.15 : (temp * 1.8) + 32
  when 'kelvin'
      return output_scale == 'celsius' ? 
      temp - 273.15 : (temp - 273.15) * 1.8
  end
end