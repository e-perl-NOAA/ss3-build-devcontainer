sudo apt-get update
wget https://github.com/admb-project/admb/releases/download/admb-13.1/admb-13.1-linux.zip
sudo unzip admb-13.1-linux.zip -d /usr/local/bin
sudo rm admb-13.1-linux.zip
sudo chmod 755 /usr/local/bin/admb-13.1/bin/admb
export PATH=$PATH:/usr/local/bin/admb-13.1/bin
echo "export PATH=/usr/local/bin/admb-13.1/bin:$PATH" >> ~/.bashrc
cd /workspaces/ss3-build-devcontainer
wget https://github.com/nmfs-ost/ss3-source-code/archive/main.zip
sudo unzip -o main.zip -d /usr/local/bin
sudo rm main.zip
sudo chmod 777 /usr/local/bin/ss3-source-code-main
cd /usr/local/bin/ss3-source-code-main
mkdir SS330
/bin/bash ./Make_SS_330_new.sh -b SS330 -p
mv /usr/local/bin/ss3-source-code-main/SS330/ss /workspaces/ss3-build-devcontainer/ss



echo 'options(repos = c(CRAN = \"https://cloud.r-project.org\"))'
sudo sh -c 'cat - >>\"${R_HOME}/etc/Rprofile.site\"'
