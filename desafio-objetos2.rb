class Carta
    attr_accessor :pinta ,:numero
    def initialize(pinta,numero)
        @pinta = pinta
        @numero = numero
        
    end 
    
    
end
puts " escribe “jugar” generar 5 cartas al azar"
puts "1. mostrar”: Mostrar las 5 cartas en pantalla"
puts "Si quieres jugar escribe jugar"
puts "2. “salir”: Terminar el programa"
opcion = 'jugar'
while opcion == 'jugar'
    opcion=gets.chomp.downcase
    if  opcion == "jugar"
        jugada = []
        5.times do
            jugada.push(Carta.new(["Corazon","Bastos","Espada","Bastados"].sample ,[1,2,3,4,5,6,4,5,6,7,8,9,10,11,12,13].sample))
            
        end 
    elsif opcion=='mostrar'
        5.times do |i|
            puts "#{jugada[i].pinta} #{jugada[i].numero}"
        end
    
    elsif opcion=='salir'
        puts "Hasta pronto"
    else
        "La opcion ingresada no es valida"    
    end

end


