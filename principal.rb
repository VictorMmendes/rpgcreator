Dir["./racas/*.rb"].each {|file| require file }
Dir["./classes/*.rb"].each {|file| require file }

array = Array.new
hash = %w[Construtor Curandeiro Ferreiro Guerreiro]
racas = %w[Anao Elfo Humano Orc]

loop do
  puts "RPGchar creator"
  puts "1- Criar personagem"
  puts "2- Treinar personagem"
  puts "3- Listas personagens"
  puts "4- Filtrar por raça"
  puts "5- Filtrar por classe"
  puts "6- Sair"
  print "Op: "
  op = gets.strip.to_i

    case op
      when 1
        system "clear"
        puts "RPGchar creator"
        print "Nome: "
        nome = gets.strip

        raca = -1
        until raca.between?(0,3) do
          puts "RAÇA: "
          puts "0- Anão"
          puts "1- Elfo"
          puts "2- Humano"
          puts "3- Orc"
          print "Op: "
          raca = gets.strip.to_i

          if !raca.between?(0,3)
            puts "Digite uma opção válida!"
          end
        end

        array.push(Object.const_get("#{racas[raca]}").new nome, array.length)
        puts "#{nome} criado!"
        gets.strip
        system "clear"

      when 2
        system "clear"
        puts "TREINAR PERSONAGEM"
        print "Digite o ID: "
        id = gets.strip.to_i

        if id < array.length
          person = array[id]
          aux = hash - person.get_classes_as_array
          puts person.get_all_info

          if aux.length > 0
            puts "\nO que deseja treinar para ser?"
            aux.each_with_index do |value, index|
              puts "#{index}- #{value}"
            end
            print "Op: "
            op = gets.strip.to_i

            if op < hash.length
              array[id] << Object.const_get("#{aux[op]}").new
              puts "#{aux[op]} treinado!"
            else
              puts "Opção Inválida!"
            end
          else
            puts "\nVocê já possui todas as classes!"
          end
        else
          puts "\nID inválido!"
        end
        gets.strip

      when 3
        system "clear"
        puts "LISTA DE PERSONAGENS"
        for person in array
          puts person.get_all_info
        end
        gets.strip

      when 5
        break
    end
  system "clear"
end
