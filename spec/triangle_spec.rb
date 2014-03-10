require 'triangle'
require 'rspec'

describe Triangle do
  describe 'initialize' do
    it 'creates a triangle and sets the lengths of three sides' do
      new_triangle = Triangle.new(2,3,4)
      new_triangle.should be_an_instance_of Triangle
    end
  end
  describe 'type' do
    it 'returns equalateral if all three sides are equal' do
      new_triangle = Triangle.new(3,3,3)
      new_triangle.type.should eq 'equilateral'
    end
    it 'returns isoceles if exactly two sides are equal' do
      new_triangle = Triangle.new(3,3,2)
      new_triangle.type.should eq 'isoceles'
    end
    it 'returns not a triangle if the sum of two sides is less than or equal to the third' do
      new_triangle = Triangle.new(2,3,5)
      new_triangle.type.should eq 'not a triangle'
    end
    it 'returns scalene if no sides are the same length' do
      new_triangle = Triangle.new(2,3,4)
      new_triangle.type.should eq 'scalene'
    end
  end
end
