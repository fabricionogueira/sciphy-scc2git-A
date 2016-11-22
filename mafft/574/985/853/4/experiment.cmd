#!/bin/bash
perl /root/wf-scc2git/bin/numberFasta.pl /mnt/scc2git/exp/mafft/574/985/853/4/iv > `basename /mnt/scc2git/exp/mafft/574/985/853/4/iv`.fastaNumbered
/usr/local/bin/mafft `basename /mnt/scc2git/exp/mafft/574/985/853/4/iv`.fastaNumbered > `basename /mnt/scc2git/exp/mafft/574/985/853/4/iv`.mafft

python /root/wf-scc2git/bin/extractor.py `basename /mnt/scc2git/exp/mafft/574/985/853/4/iv` PA_Mafft ERelation.txt
