require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
end

describe "decimal to binary" do
  it "From 0 decimal to 0 binary" do
    decimal = 0
    expected_binary_array = [0]
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 153 to 10011001" do
    decimal = 153
    expected_binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 13 to 00001101" do
    expected_binary_array = [1, 1, 0, 1]
    decimal = 13
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 128 to 10000000" do
    expected_binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    decimal = 128
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 255 to 11111111" do
    expected_binary_array = [1, 1, 1, 1, 1, 1, 1, 1]
    decimal = 255
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
end

