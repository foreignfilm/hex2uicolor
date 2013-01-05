#!/bin/bash

for f in "$@"
do

    # delete the preceding hash, if it’s there
    value=${f#\#}

    # extract the fragments of the original HEX code
    red=`printf "%d" 0x${value:0:2}`
    green=`printf "%d" 0x${value:2:2}`
    blue=`printf "%d" 0x${value:4:2}`

    # calculate new UIColor-compatible RGB values
    redNum=`printf "%.3f" $(bc -l <<< "$red/255")`
    greenNum=`printf "%.3f" $(bc -l <<< "$green/255")`
    blueNum=`printf "%.3f" $(bc -l <<< "$blue/255")`

    # put together the UIColor declaration
    final=`echo "[UIColor colorWithRed:$redNum green:$greenNum blue:$blueNum alpha:1]"`

    # final clean up (no trailing zeros)
    echo $final | sed -E 's/\.?0*[ ]/ /g'

done
