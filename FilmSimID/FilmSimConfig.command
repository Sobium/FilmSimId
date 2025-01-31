#!/bin/bash
formula_fullnames=("Provia Std" "Velvia Vivid" "Astia Soft" "Classic Chrome" "PRO Neg. Hi" "PRO Neg. Std" "Classic Neg." "Eterna Cinema" "Acros" "Monochrome" "Sepia" "Reala 100" "Kodachrome" "Portra" "Vintage Color" "Positive" "Vibrant Arizona")

formula_names=("Provia" "Velvia" "Astia" "ClassicChrome" "ProNegHi" "ProNegStd" "ClassicNeg" "Eterna" "Acros" "Monochrome" "Sepia" "Reala" "Kodachrome" "Portra" "VintageColor" "Positive" "VibrantAZ")

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
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : F2/Fujichrome (Velvia)
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : F1b/Studio Portrait Smooth Skin Tone (Astia)
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : Classic Chrome
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : Pro Neg. Hi
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : Pro Neg. Std
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : Classic Negative
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
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
Film Mode                       : Eterna
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
Saturation                      : Acros
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
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
Saturation                      : None (B&W)
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
Dynamic Range Setting           : Auto"

"White Balance                   : Auto
Saturation                      : B&W Sepia
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
Dynamic Range Setting           : Auto"

"White Balance                   : Daylight
Saturation                      : 0 (normal)
White Balance Fine Tune         : Red +0, Blue +0
Noise Reduction                 : -4 (weakest)
Clarity                         : -3
Shadow Tone                     : -1 (medium soft)
Highlight Tone                  : -1 (medium soft)
Grain Effect Roughness          : Weak
Color Chrome Effect             : Strong
Grain Effect Size               : Small
Color Chrome FX Blue            : Strong
Dynamic Range                   : Standard
Film Mode                       : Classic Negative
Dynamic Range Setting           : Manual
Development Dynamic Range       : 400"

"White Balance                   : Kelvin
Saturation                      : +2 (high)
White Balance Fine Tune         : Red -20, Blue +80
Noise Reduction                 : -2 (weak)
Clarity                         : 0
Shadow Tone                     : 0 (normal)
Highlight Tone                  : 0 (normal)
Grain Effect Roughness          : Weak
Color Chrome Effect             : Strong
Grain Effect Size               : Small
Color Chrome FX Blue            : Off
Dynamic Range                   : Standard
Film Mode                       : Classic Chrome
Dynamic Range Setting           : Manual
Development Dynamic Range       : 100"

"White Balance                   : Auto
Saturation                      : +2 (high)
White Balance Fine Tune         : Red -20, Blue +80
Noise Reduction                 : -4 (weakest)
Clarity                         : 0
Shadow Tone                     : -1 (medium soft)
Highlight Tone                  : -1 (medium soft)
Grain Effect Roughness          : Weak
Color Chrome Effect             : Strong
Grain Effect Size               : Small
Color Chrome FX Blue            : Weak
Dynamic Range                   : Standard
Film Mode                       : Classic Chrome
Dynamic Range Setting           : Auto"

"White Balance                   : Kelvin
Saturation                      : +1 (medium high)
White Balance Fine Tune         : Red -20, Blue -80
Noise Reduction                 : -4 (weakest)
Clarity                         : -2
Shadow Tone                     : +3 (very hard)
Highlight Tone                  : +2 (hard)
Grain Effect Roughness          : Strong
Color Chrome Effect             : Strong
Grain Effect Size               : Large
Color Chrome FX Blue            : Strong
Dynamic Range                   : Standard
Film Mode                       : Eterna
Dynamic Range Setting           : Manual
Development Dynamic Range       : 200"

"White Balance                   : Kelvin
Saturation                      : +4 (highest)
White Balance Fine Tune         : Red +140, Blue -180
Noise Reduction                 : -4 (weakest)
Clarity                         : -4
Shadow Tone                     : +2 (hard)
Highlight Tone                  : +1 (medium hard)
Grain Effect Roughness          : Weak
Color Chrome Effect             : Strong
Grain Effect Size               : Large
Color Chrome FX Blue            : Strong
Dynamic Range                   : Standard
Film Mode                       : Classic Negative
Dynamic Range Setting           : Manual
Development Dynamic Range       : 400"

"White Balance                   : Kelvin
Saturation                      : +4 (highest)
White Balance Fine Tune         : Red +120, Blue -160
Noise Reduction                 : -4 (weakest)
Clarity                         : -3
Shadow Tone                     : 0 (normal)
Highlight Tone                  : 0 (normal)
Grain Effect Roughness          : Weak
Color Chrome Effect             : Off
Grain Effect Size               : Small
Color Chrome FX Blue            : Strong
Dynamic Range                   : Standard
Film Mode                       : Classic Chrome
Dynamic Range Setting           : Manual
Development Dynamic Range       : 400")