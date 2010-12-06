require "../controllers/reproductor"

def menu()
puts "1.Mostrar lista"
puts "2.Salir"
end

r = Reproductor.create

opcion = '0'

while opcion!='2'
menu()
puts "escoja una opcion"
opcion = gets.chomp
  if(opcion=='1')
    r.mostrarlista()
    print "escoja el numero de la cancion q desea reproducir"
    i = gets.chomp.to_i
    r.play_song(i-1)
  end
end