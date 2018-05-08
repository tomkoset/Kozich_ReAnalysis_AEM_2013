# README

Obtain linux version of mothur (V1.39.5) from the mothur GitHub repository.
Run the following from project's root directory

```bash
wget --no-check-certificate https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.linux_64.zip
unzip Mothur.linux_64.zip
mv mothur code/
rm Mothur.linux_64.zip
rm -rf __MACOSX
```bash

Output the version of mothur

```bash
code/mothur/mothur -v
```


