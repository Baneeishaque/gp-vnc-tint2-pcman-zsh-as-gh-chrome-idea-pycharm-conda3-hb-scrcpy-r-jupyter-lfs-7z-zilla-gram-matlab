FROM baneeishaque/gp-vnc-tint2-pcmanfm-zsh-as-gh-chrome-idea-pycharm-anaconda3-hb-scrcpy-r-littler-packrat-jupyter-lfs

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     p7zip-full | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*

RUN cd $HOME \
 && wget https://fossies.org/linux/misc/FileZilla_3.53.1_x86_64-linux-gnu.tar.bz2 \
 && sudo tar -xjvf FileZilla_3.53.1_x86_64-linux-gnu.tar.bz2 -C /usr/local/ \
 && rm FileZilla_3.53.1_x86_64-linux-gnu.tar.bz2

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     libegl1-mesa-dev | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*

RUN cd $HOME \
 && wget https://telegram.org/dl/desktop/linux -O tsetup.tar.xz \
 && sudo tar -xvf tsetup.tar.xz -C /usr/local/ \
 && rm tsetup.tar.xz

RUN cd $HOME \
 && wget http://ndktechies.com/files/matlab_R2021a_glnxa64.zip \
 && unzip matlab_R2021a_glnxa64.zip -d matlab_R2021a_glnxa64
#  && unzip matlab_R2021a_glnxa64.zip -d matlab_R2021a_glnxa64 \
#  && cd matlab_R2021a_glnxa64 \
#  && sed -i 's+# destinationFolder=+destinationFolder=/usr/local/MATLAB/R2021a+' installer_input.txt \
#  && sed -i 's+# agreeToLicense=+agreeToLicense=yes+' installer_input.txt \
#  && sed -i 's+# outputFile=+outputFile=/tmp/MATLAB_R2021a.log+' installer_input.txt \
#  && sed -i 's+# enableLNU=yes+enableLNU=yes+' installer_input.txt \
#  && sudo ./install -inputFile installer_input.txt \
#  && cd .. \
#  && rm -rf matlab_R2021a_glnxa64 rm matlab_R2021a_glnxa64.zip
