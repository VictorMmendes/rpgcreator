class Guerreiro
  attr_reader :vida, :ataque, :defesa, :inteligencia, :forca, :habilidade

  def initialize
    @vida = 0
    @ataque = 3
    @defesa = 2
    @inteligencia = 0
    @forca = 2
    @habilidade = "Atacar e defender"
  end
end
