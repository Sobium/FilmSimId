# FilmSimId
FilmSimId is a customizable command line app that utilizes [exiftool](https://exiftool.org) to identify film simulations and film recipes on photos taken with Fujifilm cameras.

# Installation & Support
Supports: MacOS
1. Download the .DMG file
2. Mount the .DMG file
3. Move the FilmSimId folder into your ```/Application``` folder.

# Modes
### Single Photo Mode
Single Photo Mode allows you to check individual photo's film simulation/recipe. To use Single Photo Mode, drag and drop the photo into the terminal window when prompted, then press enter.

### Multi Photo Mode
Multi Photo Mode allows you to check all the photos' film simulation/recipe in a given directory. To use Multi Photo Mode, drag and drop the folder containing the desired photos to be checked into the terminal window when prompted, then press enter.

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
