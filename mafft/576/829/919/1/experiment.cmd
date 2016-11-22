#!/bin/bash
perl /root/wf-scc2git/bin/numberFasta.pl /mnt/scc2git/exp/mafft/576/829/919/1/i > `basename /mnt/scc2git/exp/mafft/576/829/919/1/i`.fastaNumbered
/usr/local/bin/mafft `basename /mnt/scc2git/exp/mafft/576/829/919/1/i`.fastaNumbered > `basename /mnt/scc2git/exp/mafft/576/829/919/1/i`.mafft

python /root/wf-scc2git/bin/extractor.py `basename /mnt/scc2git/exp/mafft/576/829/919/1/i` PA_Mafft ERelation.txt
