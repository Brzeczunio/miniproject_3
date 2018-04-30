# miniproject_3

Instalacja dla obrzu ze studiów

Trzeba zainstalować:
```
su
yum update

download: ftp://ftp.icm.edu.pl/vol/rzm6/linux-oracle-repo/OracleLinux/OL7/developer_EPEL/x86_64/python2-paramiko-1.16.1-2.el7.noarch.rpm

yum localinstall /home/tester/Pobrane/python2-paramiko-1.16.1-2.el7.noarch.rpm

rpm -q -R python2-paramiko|grep python

yum install python-pip

pip install --upgrade pip
```

Sprawdz czy są odpowiednie składniki:
```
rpm -q -R python2-paramiko|grep python
```

Wynik:
```
python(abi) = 2.7
python2-crypto >= 2.1
python2-ecdsa
```
