PREFIX=GloParT_test_with_torch_run_gpus
config=/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/inclv7plus/ak8_MD_inclv8_part_addlosttrk_manual.yaml
DIR=/hpcfs/cms/cmsgpu/zhangzhx
NGPUS=3
CUDA_VISIBLE_DEVICES=0,1,2 torchrun --standalone --nnodes=1 --nproc_per_node=$NGPUS \
$DIR/weaver-core-dev/weaver/train.py \
--train-mode hybrid -o three_coll True -o loss_gamma 5 -o fc_params '[(512,0.1)]' -o embed_dims '[64,256,64]' -o pair_embed_dims '[32,32,32]' \
--use-amp --batch-size 768 --start-lr 6.75e-3 --num-epochs 5 --optimizer ranger --fetch-step 0.008 \
--backend nccl --data-train \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/BulkGravitonToHHTo4QGluLTau_MX-600to6000_MH-15to250/*.root" \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*.root" \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/BulkGravitonToHHTo4W_MX-600to6000_MH-15to250_JHUVariableWMass/*.root" \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/BulkGravitonToHHTo4W_MX-600to6000_MH-15to250_JHUVariableWMass2DMesh/*.root" \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/BulkGravitonToHHTo4Z_MX-600to6000_MH-15to250_JHUVariableZMass/*.root" \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/BulkGravitonToHHTo4Z_MX-600to6000_MH-15to250_JHUVariableZMass2DMesh/*.root" \
"/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/DiH1OrHpm_2HDM_HpmToBC_HpmToCS_H1ToBS_HT-600to6000_MH-15to250/*.root" \
--data-test \
"higgs2p_1:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4QGluLTau_M-1000_narrow/*.root" \
"higgs2p_2:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4QGluLTau_MH-50-125-250-300_RatioMGMH-20_narrow/*.root" \
"higgs2p_3:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4QGluLTau_MH-50-125-250-300_RatioMGMH-8_narrow/*.root" \
"hww_1:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4W_JHUGen_M-1000_narrow/*.root" \
"hww_2:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4W_JHUGen_MH-50-125-250-300_HighPt_narrow/*.root" \
"hww_3:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4W_JHUGen_MH-50-125-250-300_LowPt_narrow/*.root" \
"hww_4:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4W_JHUGen_MH-50-125-250-300_RatioMGMH-20_narrow/*.root" \
"hww_5:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/GluGluToBulkGravitonToHHTo4W_JHUGen_MH-50-125-250-300_RatioMGMH-8_narrow/*.root" \
"qcd:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*.root" \
"ofcttbarfulllep:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/*.root" \
"ofcttbarsemilep:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/*.root" \
"ttbar:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*.root" \
--samples-per-epoch $((1500 * 512)) --samples-per-epoch-val $((100 * 512)) \
--data-config ${config} --num-workers 10 \
--network-config $DIR/weaver-core-dev/weaver/networks/example_ParticleTransformer2023Tagger_hybrid.py \
--model-prefix $DIR/weaver-core-dev/weaver/model/${PREFIX}/net \
--log-file $DIR/weaver-core-dev/weaver/logs/${PREFIX}/train.log --tensorboard _${PREFIX} \
--predict-output $DIR/weaver-core-dev/weaver/predict/$PREFIX/pred.root


