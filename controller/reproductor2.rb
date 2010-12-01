def caragarlista()
  file = File.new("list.txt")
  songList = file.readlines
  file.close
  return v
end

def mostralista()  
  for i in 0...songList.size
    print i.to_s+") "
    print songList[i]    
  end
  puts ""  
end

def agrega_a_lista(url)
  file = File.new("list.txt","a")
  file.puts url 
  file.close
end

def reproducir(url)
  system "mpg123 #{url}"  
end


def menu()
  puts "1.mostrarlista"  
  puts "3.salir"
end

opcion = ''


menu()
opcion = gets.chomp
while not (opcion == '3')
  if opcion=="1"
    puts "1"
  elsif opcion == "2"
    puts "2"
  elsif opcion == "3"
    puts "3"
  else
    puts "opcion incorrecta"
  end
  #system "clear"
  menu()
  opcion = gets.chomp
end

