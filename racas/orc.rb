require_relative '../character'

class Orc < Character
  def initialize nome,id
    super(15, 12, 5, 2, 25, nome, id)
  end
end
