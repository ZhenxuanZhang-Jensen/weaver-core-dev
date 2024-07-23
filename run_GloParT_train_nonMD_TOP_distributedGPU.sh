NGPUS=1
GPU=0
DIR=/hpcfs/cms/cmsgpu/zhangzhx
# 一种设置情形
PREFIX=ak8_finetune_stage2_topVsQCD_manual.aux256-256; network_name=finetune_stage2/mlp; ext_opt='-o ft_layer_params "[(1024,0)]" -o aux_layer_params "[(256,0),(256,0)]"'
# 另一种设置情形，preload部分GloParT最后隐藏层的参数
# PREFIX=ak8_finetune_stage2_topVsQCD_manual.aux256-256.loadallparamsfreeze; network_name=finetune_stage2/mlp; ext_opt='-o ft_layer_params [(1024,0),(316,0)] -o concat_ft_layer 1 -o aux_layer_params [(256,0),(256,0)] --load-model-weights finetune_stage2.all --optimizer-option lr_mult ("ft_mlp\.[01].*",1e-10)'

config=/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop_GloParT.yaml

python $DIR/weaver-core-dev/weaver/train.py \
--batch-size 512 --start-lr 2e-2 --num-epochs 1 --optimizer ranger --lr-scheduler one-cycle \
-o ft_layer_params "[(1024,0)]" \
-o aux_layer_params "[(256,0),(256,0)]" \
--gpus $GPU --data-train \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/*.root" \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*.root" \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*.root" \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/*.root" \
--data-test \
"qcd:/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*.root" \
"ttbar:/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*.root" \
--samples-per-epoch $((500 * 512 / $NGPUS)) --samples-per-epoch-val $((500 * 512)) \
--data-config ${config} --num-workers 10 \
--network-config $DIR/weaver-core-dev/weaver/networks/$network_name.py \
--model-prefix $DIR/weaver-core-dev/weaver/model/${PREFIX}/net \
--predict-output $DIR/weaver-core-dev/weaver/predict/$PREFIX/pred.root \
--log $DIR/weaver-core-dev/weaver/logs/${PREFIX}/train.log --tensorboard _${PREFIX} \