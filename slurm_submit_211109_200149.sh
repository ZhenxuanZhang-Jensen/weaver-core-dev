#! /bin/bash

######## Part 1 #########
# Script parameters     #
#########################

# Specify the partition name from which resources will be allocated, mandatory option
#SBATCH --partition=gpu

# Specify the QOS, mandatory option
#SBATCH --qos=normal

# Specify which group you belong to, mandatory option
# This is for the accounting, so if you belong to many group,
# write the experiment which will pay for your resource consumption
#SBATCH --account=cmsgpu

# Specify your job name, optional option, but strongly recommand to specify some name
#SBATCH --job-name=WWYY_2022_01_17

# Specify how many cores you will need, default is one if not specified
#SBATCH --ntasks=1

# Specify the output file path of your job
# Attention!! Your afs account must have write access to the path
# Or the job will be FAILED!
#SBATCH --output=/hpcfs/cms/cmsgpu/zhangzhx/logSlurm_%u_%x_%j.out

# Specify memory to use, or slurm will allocate all available memory in MB
#SBATCH --mem-per-cpu=30000

# Specify how many GPU cards to use
#SBATCH --gres=gpu:v100:1

######## Part 2 ######
# Script workload    #
######################

# Replace the following lines with your real workload
########################################
# TF: 2.3.0, python: 3.7.6
export QT_QPA_PLATFORM=offscreen
# Reference: https://stackoverflow.com/a/55210689/2302094
export XDG_RUNTIME_DIR=/hpcfs/bes/mlgpu/sharma/ML_GPU/someRuntimeFix
date
cd /publicfs/cms/user/zhangzhx/HHWWGG/HHRecoNN
echo ""
echo "==================================================="
time(python train_RECONN.py -i test/HH_dataframe.csv)
echo ""
echo "==================================================="
echo ""
#echo "Convert the model.h5 to model.pb"
#time(python convert_hdf5_2_pb.py --input HHWWyyDNN_binary_Nov2021_ModelSimpleV2_E400_LR1em04_B250_softmax_Nadam_CW_ManyVarLowHigLevelv2_BalanceYields/model.h5 --output HHWWyyDNN_binary_Nov2021_ModelSimpleV2_E400_LR1em04_B250_softmax_Nadam_CW_ManyVarLowHigLevelv2_BalanceYields/model.pb)
#echo "==================================================="
echo "Time stamp:"
date
##########################################
# Work load end

# Do not remove below this line

# list the allocated hosts
srun -l hostname

# list the GPU cards of the host
/usr/bin/nvidia-smi -L
echo "Allocate GPU cards : ${CUDA_VISIBLE_DEVICES}"

sleep 180


