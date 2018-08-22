class Character
  attr_accessor :vida, :ataque, :defesa, :inteligencia, :forca, :classes, :nome, :id

  def initialize(vida, ataque, defesa, inteligencia, forca, nome, id)
    @vida = vida
    @ataque = ataque
    @defesa = defesa
    @inteligencia = inteligencia
    @forca = forca
    @classes = []
    @nome = nome
    @id = id
  end

  def << classe
    @classes << classe
  end

  def get_all_info
    array = %w[vida ataque defesa inteligencia forca]
    str = "\nNome: #{self.nome}\n"
    str += "ID: #{self.id}\n"
    str += "Raça: #{self.class.name}\n"
    array.each{|s| str += get_info(s)}
    str += get_classes
    str
  end

  def get_classes_as_array
    clas = Array.new
    for cls in @classes
        clas.push(cls.class.name)
    end

    clas
  end

  private
    def get_info atributo
      info = "#{atributo}: #{instance_variable_get('@'+atributo)}"
      for cls in @classes
        rel = cls.send("#{atributo}")
        if rel > 0
          info += "+#{rel}"
        elsif rel < 0
          info += "#{rel}"
        end
      end
      "#{info}\n"
    end

    def get_classes
      info = "Classes: "
      for cls in @classes
          info += "|#{cls.class.name}|"
      end
      "#{info}\n"
    end
end
