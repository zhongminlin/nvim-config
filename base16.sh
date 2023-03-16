#!/usr/bin/env bash
outdir="$HOME/.cache/wal"
source ~/.cache/wal/colors.sh

color16="`pastel color $color0 | pastel lighten 0.03 | pastel format hex`"
color17="`pastel color $color0 | pastel lighten 0.1 | pastel format hex`"
color18="`pastel color $color0 | pastel lighten 0.4 | pastel format hex`"
color19="`pastel color $color15 | pastel darken 0.4 | pastel format hex`"
color20="`pastel color $color15 | pastel darken 0.1 | pastel format hex`"
color21="`pastel color $color15 | pastel darken 0.03 | pastel format hex`"

cat $outdir/colors-wal.vim > $outdir/base16.vim
cat >> $outdir/base16.vim <<- EOF
let color16 = "$color16"
let color17 = "$color17"
let color18 = "$color18"
let color19 = "$color19"
let color20 = "$color20"
let color21 = "$color21"
EOF
