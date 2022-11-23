# frozen_string_literal: true

require_relative 'base'
require_relative 'input_parser'
require_relative 'rover_controller'
require_relative 'output_formatter'

class MissionControl < Base
  def call(input)
    _plateau, rovers_with_instructions = InputParser.call(input)
    rovers_with_instructions.each do |rover, instructions|
      RoverController.call(rover, instructions)
    end
    OutputFormatter.call(rovers_with_instructions.map(&:first))
  end
end