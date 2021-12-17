# Analysis of Cluster 2

After discussion with Rima, something that was not present in CNZ-748 and the S4 angucyclin BGC was a monooxygenase.  Try to check which protein family it belongs to.  The protein was actually annotated by Antismash, once I sent a DNA sequence 

[Antismash results for S4](https://github.com/suzumar/ROS4_manus/blob/main/files/data/PROKKA_08302021.zip) using Prokka annotation
[Antismash results for S4](https://github.com/suzumar/ROS4_manus/blob/main/files/data/S4_manu2.zip) using nucleotide sequence
[Antismash results for CNZ-748](https://github.com/suzumar/ROS4_manus/blob/main/files/data/gcnZ78(1).zip) using Prokka annotation
[Antismash results for CNZ-748](https://github.com/suzumar/ROS4_manus/blob/main/files/data/gcnZ78.zip) using nucleotide sequence

> CTG2_177 MAAPDTDVIVVGAGPSGLVLAGDLRAGGARVTVLERLARPTTESRASVLHARTLHLLAERGLLQRFGQLPAAGPGHFGGIPLDLSEAGDSPYAGQWKAPQTHVEAVLAAWATELGAEVRRGLTVTGLTQSSDRVRVVAVAPGGRRLRLDASYVVGCDGEDSAVRRLGGFGFPGAAATKELLRADLAGIELRERRFERHPRGVANARRGPDGVTRIMVHAFDRTPGPSRTPAFDDVCAVWARVTGEDITGARPVWLNAFDNARRQADGYRDGRVFLAGDAAHVQLPVGGQALNLGLQDAMDLGPKLAAHLAGRAGDEVLDTYDTVRRPVGARVLTNIEAQAQLLFGGPEVDPLRAVFRELLDLPAARRHLAAMVSGLDGGRPAWAGTGGPGKPAAPAPTRQDIRHRRITMGKLFGKTALVSGSSRGIGRATALRLARDGALVAVHCSSNREAAEETVAAIEKDGGRGFSVLAELGVPGDVHELFLALERELKERTGDTTLDILVNNAGVMGGVDPEELTPEQFDRLFAVNAKAPYFLVQRALANLPDGGRIINISSGLTRVANPQEVAYAMTKGAVDQLTLHFAKHLGPRGITVNSVGPGITDNGSPVFDDPEAVAAMAGYSVFNRVGETRDIADVVAFLASDDSRWITGSYLDASGGTLLGG

Blast shows this is similar to GcnM and SprI putatively involves in the reduction of the angular cycle in Grincamycin and Saprolimycin 

![sapro](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/sapro.png)

> August 22 after discussion with Rima (Zoom) we decided that the opening of the angucyclin 4th cycle would be worth pursuing.  An interesting thing to do would be to compare BGC of strains that produced mostly open ring molecules against mostly closed.  It seems like other than CZN-748 they are not a lot of genomes of strains showing mostly open rings.  A google search indicates that Actinomadura RB99 isolated from termites and produces Fridamycin A has a whole genome (unfo not so great quality and I cannot find raw reads in SRA).  I did a blast with the BAV16998.1 the putative pksII cyclase above, and found WP\_190853957 in Actinomadura RB99. Run antismash on the contig containing that enzyme NZ_JABMCA010000005. This contig 128 in Rimas antismash results.  Finally I also did a blast with the entire cassette of Saquayamycin from Micromonospora sp. Tu 6368 hypothetical protein gene, partial cds; saquayamycin Z/galtamycin B gene cluster, complete sequence; and hypothetical protein genes, complete cdsSequence ID: FJ670504.1Length: 36648, but it seems like there is only the BGC that is sequenced.

> August 31. After diverse exchanges with Rima and Didier, we decided to look for possible reactions that could open the angucyclin cycle and it appears that it couls be via a Baeyer-Villier oxidation at the C1-ketone or, possibly a reduction of the C1 ketone by a LugOII-like mechanism followed by a 1-2 diol oxydation. A [review](https://doi.org/10.1021/cr1003437) of these type of oxydases gives some possibilities.  The ring opening BVMO of S. argillaceus ATCC12956 in the [Mithamycin](https://dx.doi.org/10.1021/bi8023509) biosynthesis appears to be a candidate.  I blasted that enzyme [sequence](https://www.ncbi.nlm.nih.gov/protein/CAK50794.2?report=fasta) against the [genome](https://www.ncbi.nlm.nih.gov/nuccore/JABMCA000000000.1) of Actinomadura sp . RB 99 [producer](10.3390/nu11040765) of fridamycin A.  We already had identifid the gene cluster in NZ_JABMCA010000005 above. There are three BVMO in that genome ([1](https://blast.ncbi.nlm.nih.gov/Blast.cgi#alnHdr_WP_194736628), [2](https://blast.ncbi.nlm.nih.gov/Blast.cgi#alnHdr_WP_190864538), and the [closest](https://www.ncbi.nlm.nih.gov/protein/MBD2892418.1) is in contig NZ_JABMCA010000005.  I took both enzymes and ran a blast against S4 proteins and it appears a S4_00485 is quite close.  However this monooxygenase is present in the BGC of several angucyclines and the putatively responsible for the removal of the keto group of C6.  See SprB above, and in [gaudimycin C](doi.org/10.1016/j.chembiol.2007.12.011) even though a similar enzyme does a ring oxydation in [Urdamycin L](doi.org/10.1002/cbic.200390002).  Perhaps an aligment / tree can give some clues.

> September 2.  We generated a [file](https://github.com/suzumar/ROS4_manus/blob/main/files/data/angu2.fasta) with homologous sequences, aligned using muscle and generated a basic ML tree.  It appears that S4\_00485 is mostly similar to those of CZN-748 and LS32, which does not seem to indicate a sole role in ring opening since the former has mostly open and the latter closed rings. The sequence from RB99 (Fridamycin) was quite far.  A manual inspection of the sequence looning for diferences between LS32 (open) and CZN-748/S4 shows only one interesting difference (**Q** in position 187 also shared my the BVMO of Streoptomyces sp PGA64 where mutants expressing that enzyme produced an open ring angucyclin and the the BVMO was suggested to be responsible for the lactone formation see [scheme](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/gaudi.png).  Regarding Urdamycin L discussed above, the enzyme (UrdM) that was knocked out is in fact not a homologue of S4\_00485 but rather of CTG2-177.  Significantly the latter was not annotated by prokka (but it was by antismash) which was also the case for  so perhaps there is someting going on.  Check the sequences of homologues.

![alignment](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/alignm.png)
![tree](https://github.com/suzumar/ROS4_manus/blob/main/files/figures/tree.png)

> For CZN-748, I got the results from this [results](https://github.com/suzumar/ROS4_manus/blob/main/files/data/gcnZ78(1).zip) that Chang et al sent rima the gbk  file in /work/marcel/rima/genomes/S4/CZN748/gcnZ78/input was transformed using

`readseq gcnZ78.gbk > gcnZ78.fasta` and we indentified a homologous enzyme using Antismash

> In addition we check the possibility that a lactonase would be present. We checked if a ortholog of https://www.ncbi.nlm.nih.gov/nuccore/AJ292535 would be present by blastp. but  got no hits

> Rima points out that the first enzyme in the S4-BGC has been annotated as a Carboxymuconolactone decarboxylase.  I did a blast against conserved domains and it hits [TIGR02427](https://www.ncbi.nlm.nih.gov/Structure/cdd/cddsrv.cgi?ascbin=8&maxaln=10&seltype=2&uid=TIGR02427). This [enzyme](https://enzyme.expasy.org/EC/3.1.1.24) seems to be bifunctional as a lactonase and a decarboxylase (two domains).  A check in Keg indicates that it is not annotated in most actinobacteriaceae.  Check if it is present in the genome of Baikalomycin and Fridamycin producers

in /work/marcel/rima/genomes/S4/Baikalo

```
makeblastdb -in GCF_007050945.1_ASM705094v1_protein.faa -out baikalo -dbtype prot
blastp -query pcaD.fasta -db baikalo -out pcad.blast -evalue 1e-10
makeblastdb -in GCF_014706005.1_ASM1470600v1_protein.faa -out frida -dbtype prot
blastp -query ../Baikalo/pcaD.fasta -db frida -out pcad.blast -evalue 1e-10
similar for Kineamycin
```

> it is present in Baikalomycin and Kineamycin producing Streptomyces, but not in the Fridamycin A producing Actinomadura.  **Interesting it does not appear that the fridamycin A producing Actinomadura has a bifunctional enzyme like the one in S4.**

in ribosome  /Users/suzuki/work/Banyuls/Students/Rima\ Ouchene/S4/Anthra/Antra\ Spec/urdM

> split putatively bifunctional enzymes 

```
cat short | awk '{print "rangee 1 "$2-1" "$1" urdM.fas.fasta"}' | /bin/sh > UrdmOxy.faa  
cat long | awk '{print "rangee 1 "$2-1" "$1" urdM.fas.fasta"}' | /bin/sh > UrdmOxyB.faa  
cat short | awk '{print "rangee  "$2" 785  "$1" urdM.fas.fasta"}' | /bin/sh > UrdMred.faa  
cat long | awk '{print "rangee  "$2" 785  "$1" urdM.fas.fasta"}' | /bin/sh > UrdMredB.faa  
cat onlyox | awk '{print "grep -A1 "$1" urdM.fas.fasta"}' | /bin/sh > UrdmOxyC.faa  
cat *Oxy* > UrdmoxyALL.faa  
cat UrdMred.faa UrdMredB.faa > UrdMredALL.faa  
```

## Compare the three Grincamycin clusters using clinker

> in /Volumes/woese/System/Volumes/Data/work/marcel/rima/genomes/S4/comparison

use Rima's manually downloaded [file](link) :  genes\ of\ gcn\ Streptomyces\ lusitanus\ SCSIO\ LR32\ .txt
 
`cat genes\ of\ gcn\ Streptomyces\ lusitanus\ SCSIO\ LR32\ .txt | grep -A1 AGO | sed '/--/d' | sed 's/^AGO/\>AGO/1' > LR32pro.faa`
 
for S4 and CNZ-748 use the Antismash annotation including the UrdM analogue (nucleotide query)

[Antismash Annotation for CNZ-748](https://github.com/suzumar/ROS4_manus/blob/main/files/data/gcnZ78.zip)

> in /Users/suzuki/work/Banyuls/Students/Rima\ Ouchene/S4/Anthra/Antra\ Spec/grincamycin/gcnZ78

`cat  gcnZ78.gbk  |grep -A50 -w CDS |tr '\012' ' ' | gawk -F "\n" 'BEGIN{RS="translation="}{printf("%s\n",$0)}' | gawk 'BEGIN{RS="locus_tag="}{printf("%s\n",$0)}' |grep -A2 -w CDS | sed '/--/d' |sed 's/^\"//' | sed 's/\".*//' |sed 's/ //g' | grep -A1 ctg | sed 's/ctg/>ctg/1;/--/d' > gcnZ78.faa`

[Antismash Annotation for S4](https://github.com/suzumar/ROS4_manus/blob/main/files/data/S4_manu2.zip)

> in /Users/suzuki/work/Banyuls/Students/Rima\ Ouchene/S4/S4_manu2

`cat contig00002.region001.gbk |grep -A50 -w CDS |tr '\012' ' ' | gawk -F "\n" 'BEGIN{RS="translation="}{printf("%s\n",$0)}' | gawk 'BEGIN{RS="locus_tag="}{printf("%s\n",$0)}' |grep -A2 -w CDS | sed '/--/d' |sed 's/^\"//' | sed 's/\".*//' |sed 's/ //g' | grep -A1 ctg | sed 's/ctg/>ctg/1;/--/d' > S4.faa`






