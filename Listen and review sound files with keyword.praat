## Listen and review sound files with keyword
##
## This script allows you to quickly go through the audio files of your interest
##
## Dr Cong Zhang @SPRINT
## 23 July 2020

form Enter the directory for your audio files:
	sentence audio_dir C:\Users\
	comment Only show files containing:
	sentence Word
	comment What is the format of your audio file?
	sentence Filetype wav
	comment Play automatically?
	boolean auto_play 1
	 
endform

Create Strings as file list... list 'audio_dir$'*'Word$'*'filetype$'
pause Would you like to chang the file list?
number_of_files = Get number of strings
for x from 1 to number_of_files
     select Strings list
     current_file$ = Get string... x
     Read from file... 'audio_dir$''current_file$'
     object_name$ = selected$ ("Sound")
	 if auto_play =1
		Play
	endif
     pause  Make any changes then click Continue. 
     select all
     minus Strings list
     Remove
endfor

select Strings list
Remove