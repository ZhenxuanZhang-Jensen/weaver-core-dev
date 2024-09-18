# 在 /cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8 里面操作
jobid=8065357
qcddir=QCD_Pt_170to300_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 0 49`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_300to470_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 50 99`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_470to600_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 100 149`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_600to800_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 150 199`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_800to1000_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 200 249`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_1000to1400_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 250 299`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_1400to1800_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 300 349`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_1800to2400_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 350 399`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_2400to3200_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 400 449`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;
qcddir=QCD_Pt_3200toInf_TuneCP5_13TeV_pythia8; mkdir $qcddir; cd $qcddir; for i in `seq 450 474`; do file="../QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_${jobid}-$i.root"; [[ -f $file ]] && ln -s $file .; done; cd -;

# 再在/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer 里面操作一遍

jobid=8065360 # for infer
...