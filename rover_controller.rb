# frozen_string_literal: true

class RoverController < Base
  def call(rover, instructions)
    instructions.each_char do |instruction|
      rover.send(read_instruction(instruction))
    end
  end

  private

  def read_instruction(instruction)
    case instruction
      when 'L'
        :turn_left
      when 'R'
        :turn_right
      when 'M'
        :move
    end
  end
end