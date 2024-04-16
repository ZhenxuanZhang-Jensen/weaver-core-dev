#! /bin/bash
  
######## Part 1 #########
# Script parameters     #
#########################
 
# Specify the partition name from which resources will be allocated, mandatory option
#SBATCH --partition=gpu
 
# Specify the QOS, mandatory option
#SBATCH --qos=cmsnormal
 
# Specify which group you belong to, mandatory option
# This is for the accounting, so if you belong to many group,
# write the experiment which will pay for your resource consumption
#SBATCH --account=cmsgpu
  
# Specify your job name, optional option, but strongly recommand to specify some name
#SBATCH --job-name=gpu_source
  
# Specify how many cores you will need, default is one if not specified
#SBATCH --ntasks=1
  
# Specify the output file path of your job
# Attention!! Your afs account must have write access to the path
# Or the job will be FAILED!
#SBATCH --output=/hpcfs/cms/cmsgpu/zhangzhx/gpujob-%j.out
  
# Specify memory to use, or slurm will allocate all available memory in MB
#SBATCH --mem-per-cpu=30000
  
# Specify how many GPU cards to use
#SBATCH --gres=gpu:v100:1
    
######## Part 2 ######
# Script workload    #
######################
  
# Replace the following lines with your real workload
  
# list the GPU cards of the host
/usr/bin/nvidia-smi -L
echo "Allocate GPU cards : ${CUDA_VISIBLE_DEVICES}"
#cuda version;
cat /usr/local/cuda/version.txt


##Edit the fllowing lines:
# script(*.ipynb) directory, must be in /hpcfs
ifile=/hpcfs/cms/cmsgpu/zhangzhx/test/test_err
port=8901
# location of jupyter config files, must be in /hpcfs
jfile=/hpcfs/cms/cmsgpu/zhangzhx
# conda env name
env_name=ML_env


node=$(hostname -s)
user=$(whoami)
clusterurl=lxslc7.ihep.ac.cn
# print tunneling instructions jupyter-log
#https://www.bbsmax.com/A/Ae5R6Mv35Q/
echo -e "
Command to create ssh tunnel:
ssh -N -f -L ${port}:${node}:${port} ${user}@${clusterurl}
 
Use a Browser on your local machine to go to:
localhost:${port}  (prefix w/ https:// if using password)
"

# load modules or conda environments here  
# source /hpcfs/cms/cmsgpu/zhangzhx/miniconda3/bin/activate 
# my pytorch environment:
# conda activate ${env_name}

source /cvmfs/sft.cern.ch/lcg/views/LCG_102cuda/x86_64-centos7-gcc8-opt/setup.sh
# move jupyter config.. directories to /hpcfs
#https://test-jupyter.readthedocs.io/en/rtd-theme/projects/system.html
export JUPYTER_CONFIG_DIR=/hpcfs/cms/cmsgpu/zhangzhx/ 
export JUPYTER_PATH=/hpcfs/cms/cmsgpu/zhangzhx/ 
export JUPYTER_RUNTIME_DIR=/hpcfs/cms/cmsgpu/zhangzhx
# CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))
# export LD_LIBRARY_PATH=$CONDA_PREFIX/lib/:$CUDNN_PATH/lib:$LD_LIBRARY_PATH
# mkdir -p $CONDA_PREFIX/etc/conda/activate.d
# echo 'CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
# echo 'export LD_LIBRARY_PATH=$CONDA_PREFIX/lib/:$CUDNN_PATH/lib:$LD_LIBRARY_PATH' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh


cd ${ifile}

# Run Jupyter
jupyter notebook --no-browser --port=${port} --ip=${node}
#jupyter-lab --no-browser --port=${port} --ip=${node}



  
##sleep 180 
