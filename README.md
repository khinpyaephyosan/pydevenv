
# prerequisite  
https://www.vagrantup.com/downloads.html  
https://www.virtualbox.org/wiki/Downloads  

# usage  
git clone https://github.com/khinpyaephyosan/snakeDevTestLab.git  
cd snakeDevTestLab  
vagrant up  
vagrant ssh mydevenv 

<i>usrname:password  
ansible:ansible  
vagrant:vagrant</i>

# testing environment 
|<b><i> virtual environment </i></b>|  
#activate python venv  
source /opt/py2venv/bin/activate  
<i>or</i>  
source /opt/py3venv/bin/activate  
#check python version  
python --version  
#deactivate python2 venv  
deactivate  

<b><i> OR </i></b>  

|<b><i> with docker </i></b>|  
./opt/runme_py2.sh  
./opt/runme_py3.sh  

# pydevenv
for multiple python virtual environment
