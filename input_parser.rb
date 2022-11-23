# frozen_string_literal: true

require_relative 'plateau'
require_relative 'rover'

class InputParser < Base
  def call(input)
    lines = input.split("\n")
    plateau = parse_plateau(lines[0])
    rovers = parse_rovers(lines[1..-1])
    [plateau, rovers]
  end

  private

  def parse_plateau(line)
    x, y = line.split(' ').map(&:to_i)
    Plateau.new(x, y)
  end

  def parse_rovers(lines)
    rovers = []
    lines.each_slice(2) do |position, instructions|
      x, y, direction = position.split(' ')
      rover = Rover.new(x.to_i, y.to_i, direction)
      rovers << [rover, instructions]
    end
    rovers
  end
end