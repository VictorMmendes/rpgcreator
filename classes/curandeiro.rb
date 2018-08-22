class Curandeiro
  attr_reader :vida, :ataque, :defesa, :inteligencia, :forca, :habilidade

  def initialize
    @vida = 0
    @ataque = -1
    @defesa = 3
    @inteligencia = 3
    @forca = 0
    @habilidade = "Curar outras unidades"
  end
end
