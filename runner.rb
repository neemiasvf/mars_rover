# frozen_string_literal: true
# Constraints:
# • All inputs are valid
# • Rovers will not collide
# • Rovers will not move off the plateau
# • Rovers will not move backwards
# • Rovers will not move diagonally
# • Rovers will not move more than 1 space per move
# • Rovers will not turn more than 90 degrees per turn
# • Rovers will not turn backwards
# • Rovers will not turn diagonally

require_relative 'mission_control'

ARGV.each do |file|
  puts MissionControl.call(File.read(file))
end