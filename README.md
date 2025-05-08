# Linux / Bash Script Project - BIOL 668

## Description
This is a completed Bash scripting / Linux project for the BIOL 668 course taught by DSK at San Diego State.


- Required Files:
  - bigdata.fna.gz
  - primer.csv


## Instructions
Download the necessary files, as included in this repository. These will be utilized for Harnden_project_bash.sh and Harnden_fasta_script.sh exercises.

Follow Harnden_backup.sh for producing a script that creates a directory called "BACKUP_FILES" where you can move an assortment of files you'd like to store there.

```
mkdir BACKUP_FILES
```
 
 
 
Next, begin with the Harnden_project.bash.sh exercise. Here, you will make a few directories to prepare your environment for performing command-line tasks with the downloaded data files within the terminal, and ``echo`` back the role of each command to the terminal.

```
mkdir RAW_DATA
        echo "RAW_DATA made with mkdir RAW_DATA"
```


The idea is to create a script that runs within the previously created ``RAW_DATA`` folder, and analyze a user-inputted fasta file. Copy your downloaded files into ``RAW_DATA`` to work exclusively in that directory, and overall, create a path that leads to an eventual directory, ``RESULTS``.

```
cp *fna.* RAW_DATA
cp *.csv RAW_DATA

export entire_PATH="$HOME/RAW_DATA:$HOME/P_DATA:$HOME/RESULTS"
```



Recall that before you can copy in your .fna files, you must properly unzip the bigdata.fna.gz file for easy ``grep`` access and identification with the .fna extension.

```
 gunzip bigdata.fna.gz
```

In Harnden_fasta_script.sh exercise, you will begin synthesizing the script for analyzing fasta files. Start with using awk to divvy up the bigdata.fna into smaller .fna files, each containing 50,000 sequences.
```
awk 'BEGIN {n_seq=0;} /^>/ {if(n_seq%50000==0){file=sprintf("myseq%d.fna",n_seq);} print >> file; n_seq++; next;} { print > file; }' < $fn
```

Significantly, you will write two _for loops_: one of which uses ``awk`` to print out all instances of .fna files from the current directory to the terminal, and the second using ``grep`` to count all instances of a string sequence 'CACCCTCTCAGGTCGGCTACGCATCGTCGCC' within the .fna files, and appends those counts to a created ``log.txt``.

You can access additional help with for loops from https://www.cyberciti.biz/faq/bash-loop-over-file/.

Finish by moving all .fna files into ``P_DATA``, and creating a tarball of all of the files within this directory.
```
mv *.fna.txt ~/P_DATA

tar cf ~/P_DATA/pdata.tar ~/P_DATA/*.fna.txt
gzip ~/P_DATA/pdata.tar
```

