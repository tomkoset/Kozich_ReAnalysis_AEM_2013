# README

Obtain the raw 'fastq.gz'files from http://www.mothur.org/MiSeqDevelopmentData.htmlDownload them from http://www.mothur.org/MiSeqDevelopmentData.html under Stability "With genomes/metagenomes" link by running the following from project's root directory.
Additinallu use tar xvf to unpack the .tar file, move the unpacked files into data/raw
Remove the .tar file

```bash
wget https://www.mothur.org/MiSeqDevelopmentData/StabilityWMetaG.tar
tar xvf StabilityWMetaG.tar -C data/raw/
rm StabilityWMetaG.tar
```
