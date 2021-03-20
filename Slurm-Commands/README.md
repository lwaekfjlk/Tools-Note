# Slurm-Note
Record related and new-learned commands for basic usage of Slurm.

* sbatch demo --> run.sh

* srun demo -->  srun -p v100 -J mask_0 -N 1 --gres=gpu:2 python train.py 

  ( putting params for sbatch in srun )