using ArgParse

# Transliteration systems and standards
	
eng_default = Dict("ა" => "a", "ბ" => "b", "გ" => "g", "დ" => "d", "ე" => "e", "ვ" => "v", "ზ" => "z", "თ" => "t'", "ი" => "i", "კ" => "k", "ლ" => "l", "მ" => "m", "ნ" => "n", "ო" => "o", "პ" => "p", "ჟ" => "zh", "რ" => "r", "ს" => "s", "ტ" => "t", "უ" => "u", "ფ" => "p'", "ქ" => "k'", "ღ" => "r'", "ყ" => "q'", "შ" => "sh", "ჩ" => "ch", "ც" => "ts'", "ძ" => "dz", "წ" => "ts", "ჭ" => "ch'", "ხ" => "kh", "ჯ" => "j", "ჰ" => "h")
	
eng_ISO_9984 = Dict("ა" => "a", "ბ" => "b", "გ" => "g", "დ" => "d", "ე" => "e", "ვ" => "v", "ზ" => "z", "ჱ" => "ē", "თ" => "t̕ ", "ი" => "i", "კ" => "k", "ლ" => "l", "მ" => "m", "ნ" => "n", "ჲ" => "y", "ო" => "o", "პ" => "p", "ჟ" => "ž", "რ" => "r", "ს" => "s", "ტ" => "t", "ჳ" => "w", "უ" => "u", "ფ" => "p'", "ქ" => "k'", "ღ" => "ġ", "ყ" => "q", "შ" => "š", "ჩ" => "č'", "ც" => "c'", "ძ" => "ż", "წ" => "c", "ჭ" => "č", "ხ" => "x", "ჴ" => "x̣", "ჯ" => "j", "ჰ" => "h", "ჵ" => "ō")
	
ru_custom = Dict("ა" => "а", "ბ" => "б", "გ" => "г", "დ" => "д", "ე" => "э", "ვ" => "в", "ზ" => "з", "თ" => "т'", "ი" => "и", "კ" => "к", "ლ" => "л", "მ" => "м", "ნ" => "н", "ო" => "о", "პ" => "п", "ჟ" => "ж", "რ" => "р", "ს" => "с", "ტ" => "т", "უ" => "у", "ფ" => "п'", "ქ" => "к'", "ღ" => "г'", "ყ" => "к''", "შ" => "ш", "ჩ" => "ч", "ც" => "ц'", "ძ" => "дз", "წ" => "ц", "ჭ" => "ч", "ხ" => "х", "ჯ" => "дж", "ჰ" => "х")

eng_national = Dict("ა" => "a", "ბ" => "b", "გ" => "g", "დ" => "d", "ე" => "e", "ვ" => "v", "ზ" => "z", "თ" => "t", "ი" => "i", "კ" => "k'", "ლ" => "l", "მ" => "m", "ნ" => "n", "ო" => "o", "პ" => "p", "ჟ" => "zh", "რ" => "r", "ს" => "s", "ტ" => "t'", "უ" => "u", "ფ" => "p'", "ქ" => "k", "ღ" => "gh", "ყ" => "q'", "შ" => "sh", "ჩ" => "ch'", "ც" => "ts", "ძ" => "dz", "წ" => "ts'", "ჭ" => "ch'", "ხ" => "kh", "ჯ" => "j", "ჰ" => "h")
	
	
# https://en.wikipedia.org/wiki/Romanization_of_Georgian

# Parsing arguments from command line
function parse_commandLine()
	s = ArgParseSettings()
	
	@add_arg_table! s begin
		"--file"
			help = "your name"
			required = true

		#required = true
		"--mode"
			help = "transliteration system"
			required = true
	end
	return parse_args(s)
end


# Parsing parameters
parsed_args = parse_commandLine()
file_to_transliterate = parsed_args["file"]
transliteration_mode = "eng_default"

# Choosing file in georgian
io = open(file_to_transliterate,"r")
buffer = read(io,String)
buffer = rsplit(buffer,"")


# Function for transliterating (geo-ru by default)
function transliterate()
	
	# name for transliterated file (the same as source file, but UPPERCASed)	
	result_file_name = uppercase(file_to_transliterate)
	transliterated = open(result_file_name,"w")
	
	
	if parsed_args["mode"] == "1"
		for i in buffer
			if haskey(eng_default,i)
				for (key, value) in eng_default
					if key == i
						#print(value)
						print(transliterated,value)
					end
				end
			else
				print(transliterated,i)
			end
		end	
	elseif parsed_args["mode"] == "2"
		for i in buffer
			if haskey(eng_ISO_9984,i)
				for (key, value) in eng_ISO_9984
					if key == i
						#print(value)
						print(transliterated,value)
					end
				end
			else
				print(transliterated,i)
			end
		end
		
	elseif parsed_args["mode"] == "3"
		for i in buffer
			if haskey(ru_custom,i)
				for (key, value) in ru_custom
					if key == i
						#print(value)
						print(transliterated,value)
					end
				end
			else
				print(transliterated,i)
			end
		end
		
	else
		for i in buffer
			if haskey(eng_national,i)
				for (key, value) in eng_national
					if key == i
						#print(value)
						print(transliterated,value)
					end
				end
			else
				print(transliterated,i)
			end
		end
	end

	close(transliterated)
end
transliterate()
	


















	

