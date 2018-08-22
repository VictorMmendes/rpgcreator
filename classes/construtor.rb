class Construtor
  attr_reader :vida, :ataque, :defesa, :inteligencia, :forca, :habilidade

  def initialize
    @vida = -2
    @ataque = 0
    @defesa = 0
    @inteligencia = 1
    @forca = 1
    @habilidade = "Construir casas"
  end
end
