#!/bin/bash

mkdir -p julia_output

date > time_result_julia.txt

for file in *.bam
do
  echo ${file} >> time_result_julia.txt
	~/bin/time julia cli/run.jl relcov ${file} hg38_Gencode_V28.bed julia_output/output_"${file}" 2>> time_result_julia.txt
done

date >> time_result_julia.txt
