./configure --prefix=$PREFIX
make
make check
make install
echo export SSUALIGNDIR=$PREFIX/share/ssu-align-0.1 >> $PREFIX/.bash_profile
