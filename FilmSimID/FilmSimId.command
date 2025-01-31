#!/bin/bash
source "/Applications/FilmSimID/FilmSimConfig.command"

run=true

while $run; do
	read -p 'Select a mode: ' mode

	if [[ $mode != "s" && $mode != "m" && $mode != "x" && $mode != "h" ]]; then
		echo 'Please enter a valid mode or type (h) for help:'
		echo ''
	elif [[ $mode == "h" ]]; then
		echo '(s) - Single Photo Mode'
		echo '(m) - Multi Photo Mode'
		echo '(z) - Return to main menu'
		echo '(x) - Exit the application'
		echo ''
	elif [[ $mode == "s" ]]; then
		runSingleMode=true

		while $runSingleMode; do
			read -p 'Photo: ' path
			echo ''

			if [[ $path == "exit" || $path == "x" ]]; then
				runSingleMode=false
				run=false
			elif [[ $path == "z" ]]; then
				runSingleMode=false
			else
				output=$(exiftool $path | grep -E "Film Mode|Saturation|Grain Effect Roughness|Grain Effect Size|Color Chrome Effect|Color Chrome FX Blue|White Balance|White Balance Fine Tune|Dynamic Range|Development Dynamic Range|Highlight Tone|Shadow Tone|Noise Reduction|Clarity")
				#echo "$output"

				for i in ${!formulas[@]}; do
					if [[ "$output" == *"${formulas[$i]}"* ]]; then
						echo "$(basename $path) ${formula_fullnames[$i]}"
						break
					fi
				done

				echo ''
				echo ''
			fi
		done
	elif [[ $mode == "m" ]]; then
		runMultiMode=true

		while $runMultiMode; do
			read -p 'Folder: ' path rename
			echo ''

			if [[ $path == "exit" || $path == "x" ]]; then
				runMultiMode=false
				run=false
			elif [[ $path == "z" ]]; then
				runMultiMode=false
			else
				for file in $path/*; do
					output=$(exiftool $file | grep -E "Film Mode|Saturation|Grain Effect Roughness|Grain Effect Size|Color Chrome Effect|Color Chrome FX Blue|White Balance|White Balance Fine Tune|Dynamic Range|Development Dynamic Range|Highlight Tone|Shadow Tone|Noise Reduction|Clarity")

					for i in ${!formulas[@]}; do
						if [[ "$output" == *"${formulas[$i]}"* ]]; then
							echo "$(basename $file) ${formula_fullnames[$i]}"

							if [[ $rename == "Y" || $rename == "y" ]]; then
								mv $file "${file%.*}_${formula_names[$i]}.${file##*.}"
							fi

							break
						fi
					done
				done

				echo ''
				echo ''
			fi
		done
	elif [[ $mode == "x" ]]; then
		run=false
	fi
done
exit