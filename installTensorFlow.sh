sudo yum -y install epel-release
sudo yum -y install gcc gcc-c++ python-pip python-devel atlas atlas-devel gcc-gfortran openssl-devel libffi-devel
sudo pip install --upgrade virtualenv 
#the following 2 lines are necessary for installing tensorflow at the end
sudo virtualenv --system-site-packages ~/venvs/tensorflow 
source ~/venvs/tensorflow/bin/activate
sudo yum -y install bzip2 
#download anaconda
sudo yum -y install wget
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
chmod +x Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh -b
#install Anaconda with "-b" allow installation with default settings but not add path to .bashrc
#the following command line is to add anaconda into .bashrc
echo 'export PATH=$HOME/anaconda3/bin:$PATH' >> ~/.bashrc
#sudo chown <user name>:<user group> anaconda3/ -R (if necessary)
source ./.bashrc
pip install --upgrade --ignore-installed https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp35-cp35m-linux_x86_64.whl
