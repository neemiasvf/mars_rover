# frozen_string_literal: true

class OutputFormatter < Base
  def call(rovers)
    rovers.map(&:to_s).join("\n")
  end
end