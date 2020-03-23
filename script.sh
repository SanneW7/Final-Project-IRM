#!/bin/bash
# Author: S. Weering
# Date: 12-3-2020
# This program needs to be called with ./script.sh in the command line


function Males_registered {
    cat Donorregistratie.csv |\
    tail -n +2 |\
    grep "Geregistreerd in donorregister,Geslacht: Mannen,2019" |\
    cut -d ',' -f4
}

function Males_no_permission {
    cat Donorregistratie.csv |\
    tail -n +2 |\
    grep "Geen toestemming,Geslacht: Mannen,2019" |\
    cut -d ',' -f4
}

function Females_registered {
    cat Donorregistratie.csv |\
    tail -n +2 |\
    grep "Geregistreerd in donorregister,Geslacht: Vrouwen,2019" |\
    cut -d ',' -f4
}


function Females_no_permission {
    cat Donorregistratie.csv |\
    tail -n +2 |\
    grep "Geen toestemming,Geslacht: Vrouwen,2019" |\
    cut -d ',' -f4
}

Males_registered
Males_no_permission
Females_registered
Females_no_permission
