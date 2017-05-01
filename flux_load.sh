module load python-dev/3.5.2

# Requirement for tensorflow 1.0
module load cuda/8.0.44
module load cudnn/8.0-v5.1
module load numpy-dev/1.11.1
module load scipy-dev/0.17.1

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.1-cp35-cp35m-linux_x86_64.whl
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/sw/arcts/centos7/modulefiles/cuda/lib64"

pip install --user --upgrade $TF_BINARY_URL
pip install --user scikit-image
pip install --user matplotlib

