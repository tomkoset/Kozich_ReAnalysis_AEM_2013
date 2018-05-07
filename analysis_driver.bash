!/usr/bin/env bash

# Obtained the raw 'fastq.gz' files from https://www.mothur.org/MiSeqDevelopmentData.html
# * Downloaded https://www.mothur.org/MiSeqDevelopmentData/StabilityWMetaG.tar
# * Ran the following from the project's root directory.

wget https://www.mothur.org/MiSeqDevelopmentData/StabilityWMetaG.tar
tar xvf StabilityWMetaG.tar -C data/raw/
rm StabilityWMetaG.tar

# Obtained Version 123  Silva reference files from the Mothur website: https://www.mothur.org/wiki/Silva_reference_files

wget http://mothur.org/w/images/1/15/Silva.seed_v123.tgz
tar xvzf Silva.seed_v123.tgz silva.seed_v123.align silva.seed_v123.tax
code/mothur/mothur "#get.lineage(fasta=silva.seed_v123.align, taxonomy=silva.seed_v123.tax, taxon=Bacteria);degap.seqs(fasta=silva.seed_v123.pick.align, processors=8)"
mv silva.seed_v123.pick.align data/references/silva.seed.align
rm Silva.seed_v123.tgz silva.seed_v123.*
rm mothur.*.logfile`

# Obtained the Version 14  RDP reference taxonomy from the mothur website: http://www.riffomonas.org/reproducible_research/organization/#31

wget -N http://www.mothur.org/w/images/8/88/Trainset14_032015.pds.tgz
tar xvzf Trainset14_032015.pds.tgz
mv trainset14_032015.pds/trainset* data/references/
rm -rf trainset14_032015.pds
rm Trainset14_032015.pds.tgz
