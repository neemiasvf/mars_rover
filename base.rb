# frozen_string_literal: true

class Base
  def self.call(*args)
    new.call(*args)
  end
end