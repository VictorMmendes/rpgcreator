require_relative '../character'

class Elfo < Character
  def initialize nome, id
    super(25, 5, 6, 20, 10, nome, id)
  end
end
