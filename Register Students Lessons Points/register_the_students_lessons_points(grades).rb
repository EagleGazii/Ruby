students_arr = []
students = File.read("./students.txt")   #student dosyasini acip okuyor
students_arr = students.split(" ")	    #student dosyasini actiktan sonra student dizisinde attiyor

students_hash = {}
i = 0
students_arr.each do |key|
	students_hash[students_arr[i].split(",")[0]] = students_arr[i].split(",")[1]  #student dizisinden hash`a ceviriyor
	i +=1
end


login_arr = []                       
teacher = File.read("./loginteacher.txt")       #giris dosyasini acip okuyor
login_arr = teacher.split(" ")                #giris dosyasini actiktan sonra giris dizisinde attiyor


login_hash = {}
i = 0
login_arr.each do |key|
	login_hash[login_arr[i].split(",")[0]] = login_arr[i].split(",")[1]     #giris dizisinden hash`a ceviriyor
	i +=1
end


lesson_arr = []
lesson = File.read("./lessonCodes.txt")    #dersler dosyasini acip okuyor
lesson_arr = lesson.split(" ")            #dersler dosyasini actiktan sonra dersler dizisinde attiyor

lesson_hash = {}
i = 0
lesson_arr.each do |key|
	lesson_hash[lesson_arr[i].split("-")[0]] = lesson_arr[i].split("-")[1]     #dersler dizisinden hash`a ceviriyor
	i +=1
end



def giris(a,giris_hash)     
		
		kontrol = true

		while(kontrol != false)
			print "Kullanıcı adınız :"
		
			username = gets.chomp											
			print "Parolanız :"
			password = gets.chomp
			giris_hash.each do |key,value|
				if(key == username && value ==	password)
					username = true
					password = true
					puts "Sisteme giris yapıldı."
					kontrol = false
				end
		end
		if(username != true &&	password != true)
			puts "Sisteme giris yapılmadı.\nKullanıcı adınızı veya parolanızı yalnıştır.\nBir daha deneyiniz. "
			kontrol = true
		end
		
	end
end



def not_Ekle(ogrenci_no,dersler)  #student_hash,lesson_hash gonderilmis
	kontrol = true
	while(kontrol != false)
		print "Öğrenci numarasını giriniz : "
		student_no = gets.chomp
		a = false
			
			ogrenci_no.each do |key,value|
				if(student_no == key)
					a = true
					kontrol = false
				end
			
			end		
		if(a != true)
		puts "Olmayan bir öğrenci numarasini girdiniz."
		kontrol = true
		end
	end
	a = false
	kontrol = true
	while(kontrol != false)

		printf "Ders kodunu giriniz : "
	    lesson_code = gets.chomp
			dersler.each do |key,value|
				if(lesson_code == value)
					print "Not giriniz : "
					points = gets.chomp
					

						open_file = File.open("./#{student_no}.txt","a")
						open_file.puts("#{lesson_code},#{points}")
						open_file.close
					a = true
					kontrol = false
				end

			end
			if(a != true)
				puts "Olmayan bir ders girdiniz."
				kontrol = true
			end
	end	
end


def not_gor(student)
kontrol = true
while(kontrol != false)
	print "Öğrenci numaranızı giriniz : "
	student_no = gets.chomp
	print "Parolanız :"
	student_password = gets.chomp

	student.each do |key,value|
			if(key == student_no && value ==	student_password)
				
				a = key
				puts "Sisteme giris yapıldı."
				
				kontrol = false
			end
	end
		if(kontrol == true)
		puts "Sisteme giris yapılmadı.\nBir daha deneyiniz. "
		kontrol = true
		end
	end
	begin
	b = File.read("./#{student_no}.txt")
rescue Exception
	puts "Bu ogrenci numarayla hic bir derste kayitli degil."
	exit

	end
	arr = []
	arr = b.split(" ")

	arr_hash = {}
	i = 0
	arr.each do |key|
	arr_hash[arr[i].split(",")[0]] = arr[i].split(",")[1]
	i +=1
	end
	print "Bütün dersleriniz görmek için 1'e,tek bir dersinize bakmak için 2'ye basınız : "
	komut = gets.chomp

	kontrol = true
	while(kontrol != false)
	
	case komut
	when '1'
		arr_hash.each do |key,value|
			puts "#{key},#{value}"
			
		end
		
			puts "Çıkış yapılıyor..."
			break
		
	when '2'
		print "Notunuzu öğrenmek istediğiniz dersin,kodunu giriniz : "
		lesson_code = gets.chomp
			_kontrol = true
			arr_hash.each do |key,value|
				if(key == lesson_code)
					_kontrol = false
					puts "#{key},#{value}"
				end
			end
			if(_kontrol == true)
				puts "#{lesson_code}'lu dersin notu girilmemiştir!."
			end	
		print "Başka dersinizin notu öğrennmek için 1,çıkış için herhangi bir tuşa basınız : "
		x = gets.chomp
		case x
		when '1'
			
		else
			puts "Çıkış yapılıyor..."
			break
		end
		

	end
	print "Bütün dersleriniz görmek için 1'e,tek bir dersinize bakmak için 2'ye basınız : "
	kontrol = true


end

end

puts "Sisteme hoşgeldiniz."
puts "Öğretmen girişi için 1'e basınız."
puts "Öğrenci girişi için 2'ye basınız."
puts "Çıkış yapmak için 0'a basınız."
print "Komut:"
komut = gets.chomp

while(komut != 0)
case komut
	when '1' 
		giris(1,login_hash)
		not_Ekle(students_hash,lesson_hash)

		print "Yeni bir öğrenciye not girmek için 1,çıkmak için herhangi bir tuşa basınız : "
		komut = gets.chomp
		kontrol = true
		while(kontrol != false)
				case komut
				when '1'
					not_Ekle(students_hash,lesson_hash)
				
				else
					puts "Çıkış yapılıyor..."
					break
			end
			print "Yeni bir öğrenciye not girmek için 1,çıkmak için herhangi bir tuşa basınız : "
			komut = gets.chomp
			kontrol = true
		end

	when '2'
		not_gor(students_hash)
		
	when '0'
		puts "Programdan çıkılıyor..."
		exit
	end
puts "Sisteme hoşgeldiniz."
puts "Öğretmen girişi için 1'e basınız."
puts "Öğrenci girişi için 2'ye basınız."
puts "Çıkış yapmak için 0'a basınız."
print "Komut:"
komut = gets.chomp
end
puts "Programdan çıkılıyor..."
