#! /bin/bash
  
######## Part 1 #########
# Script parameters     #
#########################
#SBATCH --partition=gpu
#SBATCH --qos=cmsnormal
#SBATCH --account=cmsgpu
#SBATCH --job-name=Conda_env
#SBATCH --cpus-per-task=10
#SBATCH --tasks=1
#SBATCH --mem-per-cpu=20G
#SBATCH --gpus=v100:3
#SBATCH --output=//hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver_%u_%x_%j.out

######## Part 2 ######
# Script workload    #
######################

# Replace the following lines with your real workload
########################################
echo "Starting job on " `date`
echo "Running on: `uname -a`"
echo "System software: `cat /etc/redhat-release`"

# eval `scram runtime -sh```
# source /cvmfs/sft.cern.ch/lcg/views/dev4cuda/Tue/x86_64-centos7-gcc8-opt/setup.sh
# source activate /publicfs/cms/user/zhangzhx/anaconda/envs/HHWWGG
# source /cvmfs/sft.cern.ch/lcg/views/dev4cuda/latest/x86_64-centos7-gcc8-opt/setup.sh
source /hpcfs/cms/cmsgpu/zhangzhx/miniconda3/bin/activate 
conda activate ML_env

# conda activate HHWWGG
# python test.py
sh run_train_nonMD_TOP_gpus.sh > output_train_nonMD_TOP_gpus_20epochs_testWSLyaml.out 2>&1
# python GirdSearch_investment.py
echo "End job on " `date`

date
##########################################
# Work load end

# Do not remove below this line

# list the allocated hosts
srun -l hostname

# list the GPU cards of the host
/usr/bin/nvidia-smi -L
echo "Allocate GPU cards : ${CUDA_VISIBLE_DEVICES}"
chmod 700 *