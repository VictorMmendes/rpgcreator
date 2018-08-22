require_relative '../character'

class Humano < Character
  def initialize nome, id
    super(20, 8, 8, 10, 10, nome, id)
  end
end
