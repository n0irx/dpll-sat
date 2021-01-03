#!/bin/bash
echo "n_vars,m_clauses,heuristic,status,time"

if [ ! -z $2 ] 
then 
    FILES=$2
else
    FILES=n-n
fi

for f in `ls -v ./ex/$2/*.cnf`;
do
    if [ ! -z $1 ] 
    then 
        python2 solvers/base_sat.py $f $1
    else
        python2 solvers/base_sat.py $f RAN
    fi
done
