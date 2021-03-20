#!/bin/sh
# choose which kind of GPU
#SBATCH -p eng2080ti
# name your job
#SBATCH -J test
# how many nodes you need
#SBATCH -N 1
# how many gpu on each nodes you need
#SBATCH --gres=gpu:1
# redirect output log
#SBATCH -o out.log 
#SBATCH -e err.log
python 
