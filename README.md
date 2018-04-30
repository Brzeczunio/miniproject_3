# miniproject_3

Instalacja dla obrazu ze studiów

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

Aby korzystać ze scrolla i czekania na element trzeba użyć biblioteki:
```
ExtendedSelenium2Library
```

Komendy z których można korzystać:
```
User Click
  [Arguments]  ${ELEMENT}
  Scroll Element Into View  ${ELEMENT}
  Wait Until Element is visible  ${ELEMENT}     timeout=30s
  Click Element  ${ELEMENT}
```
