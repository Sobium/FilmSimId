# FilmSimId
FilmSimId is a customizable command line app that utilizes [exiftool](https://exiftool.org) to identify film simulations and film recipes on photos taken with Fujifilm cameras.

# Installation & Support
Supports: MacOS
1. Download the .DMG file
2. Mount the .DMG file
3. Move the FilmSimId folder into your ```/Application``` folder.

# How to Use
1. Launch FSI.app
<img width="192" alt="FSI.app" src="https://github.com/user-attachments/assets/a139114f-f7b0-4635-a587-670bdf992a01" />

2. Follow the prompts to select a mode
<img width="682" alt="Terminal prompt to select a mode" src="https://github.com/user-attachments/assets/ddfbd94a-8bda-47a2-a611-5ce011e0035b" />

3. When prompted for a Photo or Folder, drag and drop from a Finder window
<img width="682" alt="Drag and drop a photo" src="https://github.com/user-attachments/assets/0c111a2d-381d-42bb-a852-72bc9ba34104" />

4. Hit Enter to see results
<img width="682" alt="Results" src="https://github.com/user-attachments/assets/c6dfdf69-21d0-4a7f-aad0-a6d320ab5255" />

# Modes
### Single Photo Mode
Single Photo Mode allows you to check individual photo's film simulation/recipe. To use Single Photo Mode, drag and drop the photo into the terminal window when prompted, then press enter.

#### Arguments
-i Displays exiftool output, helpful for formulating the ```FilmSimConfig.command``` file

### Multi Photo Mode
Multi Photo Mode allows you to check all the photos' film simulation/recipe in a given directory. To use Multi Photo Mode, drag and drop the folder containing the desired photos to be checked into the terminal window when prompted, then press enter.

#### Arguments
-r Rename the photos in the folder and appends the film simulation/recipe ```formula_names``` that is matched

# Configuration
1. Navigate to the ```/Application/FilmSimId/FilmSimConfig.command``` script file
2. Modify the array variables with bash scripting: ```formula_fullnames, formula_names, formulas```

   These arrays need to be modified such that the indexes for the corresponding names and film simulations/recipes are on the same index of the array. The applications utilizies exiftool to match each image's metadata against the ```formulas``` array then displays the name at the same index in the ```formula_fullnames``` or ```formula_names``` array.

### Sample
``` bash
formula_fullnames=("Provia Standard")
formula_names=("Provia")
formulas=("White Balance                   : Auto
Saturation                      : 0 (normal)
White Balance Fine Tune         : Red +0, Blue +0
Noise Reduction                 : 0 (normal)
Clarity                         : 0
Shadow Tone                     : 0 (normal)
Highlight Tone                  : 0 (normal)
Grain Effect Roughness          : Off

Color Chrome Effect             : Off
Grain Effect Size               : Off
Color Chrome FX Blue            : Off
Dynamic Range                   : Standard
Film Mode                       : F0/Standard (Provia)
Dynamic Range Setting           : Auto")
```
