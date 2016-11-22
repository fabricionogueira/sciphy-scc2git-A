#!/bin/bash
perl /root/wf-scc2git/bin/numberFasta.pl /mnt/scc2git/exp/mafft/574/981/917/5/vi > `basename /mnt/scc2git/exp/mafft/574/981/917/5/vi`.fastaNumbered
/usr/local/bin/mafft `basename /mnt/scc2git/exp/mafft/574/981/917/5/vi`.fastaNumbered > `basename /mnt/scc2git/exp/mafft/574/981/917/5/vi`.mafft

python /root/wf-scc2git/bin/extractor.py `basename /mnt/scc2git/exp/mafft/574/981/917/5/vi` PA_Mafft ERelation.txt
