#!/bin/bash
#SBATCH -J h2o_job
#SBATCH -o h2o_output.out
#SBATCH -e h2o_job.err
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks=128
#SBATCJ --ntasks-per-node=128
#SBATCH -t 48:00:00

# Load module or activate conda environment
source ~/conda.init
conda activate h2oai

# Initialize H2O cluster
srun python h2o_randomForest.py
