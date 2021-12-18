# Data submission

## Genome

Started new SRA submission 

- Project
- Sample

submit all reads

```
/work/marcel/genome/00_RAW
pigz S4_CGCTATGT-GTGTCGGA-BH2CJJDRXY_L002_R1.fastq
pigz S4_CGCTATGT-GTGTCGGA-BH2CJJDRXY_L002_R2.fastq
```

Install aspera connect plugin in woese and use console to transfer

register locus tag

rerun prokka [See prokka help](https://github.com/tseemann/prokka)

```
prokka --compliant --centre LBBM -kingdom Bacteria --cdsrnaolap --outdir PRJNA785135  --locustag ROS4 --prefix STRPM-ROS4 --addgenes --force --gffve 2 --genus Streptomyces --species sp. --strain RO-S4 --gcode 11  --usegenus  --proteins GCF_018638305.1_ASM1863830v1_genomic.gbk ../S4_manu2.fasta`
```

> We used a genome recently annotated by the NCBI pipeline [GCF_018638305.1_ASM1863830v1](https://www.ncbi.nlm.nih.gov/assembly/GCF_018638305.1/) closely related to our genome bases on a blast of the UrdM-like oxygenase-reductase.

Use genome workbech in console

After errors in submission correct for "contaminants" in the ends. see [here](https://github.com/suzumar/ROS4_manus/blob/main/files/S4.md#Curation-at-Genbank-Submission-Stage)

