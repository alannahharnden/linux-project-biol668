### Execute command that prints every command as it is executed

export PATH=$PATH:bin:/usr/bin:/sbin:/usr/sbin
        home_path="$HOME"
        echo "$PATH has been established."

### (1) In your home directory make a directory called RAW_DATA

  mkdir RAW_DATA
        echo "RAW_DATA made with mkdir RAW_DATA"

### (2) Copy all .fna fasta files
###     from home directory into RAW_DATA (must work from any directory.)

cp *fna.* RAW_DATA
        echo ".fna files copied to RAW_DATA with cp *fna.* RAW_DATA."

### (3) Do the same with all primer files ending with .csv

  cp *.csv RAW_DATA
        echo ".csv files copied to RAW_DATA with cp *.csv RAW_DATA."

### (4) In your home directory, make 2 directories: P_DATA and RESULTS

 mkdir P_DATA
        echo "P_DATA made with mkdir P_DATA."

 mkdir RESULTS
        echo "RESULTS made with mkdir RESULTS."

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS


        export entire_PATH="$HOME/RAW_DATA:$HOME/P_DATA:$HOME/RESULTS"
        echo "Directories added to the path with export entire_PATH."

### (6) Write your entire $PATH, the name RAW_DATA and the
###    contents of this directory (the names of the files) into a new file
###    called 'readme.txt' in your home directory

echo $entire_PATH > readme.txt
        echo "RAW_DATA" >> readme.txt
        ls "RAW_DATA" >> readme.txt
        echo "Relevant information has been added to readme.txt, using the echo function:

### (7) The last command should dump the contents of readme.txt
###     to the terminal.

cat readme.txt
        echo "The contents of readme.txt have been dumped to the terminal with cat readme.txt."
