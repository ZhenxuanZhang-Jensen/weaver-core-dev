PREFIX=NonMD_TOP_test_with_gpus
config=/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.yaml
DIR=/hpcfs/cms/cmsgpu/zhangzhx
python $DIR/weaver-core-dev/weaver/train.py \
--train-mode cls -o three_coll True -o loss_gamma 5 -o fc_params '[(512,0.1)]' -o embed_dims '[64,256,64]' -o pair_embed_dims '[32,32,32]' \
--use-amp --batch-size 768 --start-lr 6.75e-3 --num-epochs 1 --optimizer ranger --fetch-step 0.01 \
--gpus 0,1,2 --data-train \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root" \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root" \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root" \
"/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root" \
--data-test \
"qcd:/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*1*.root" \
"ttbar:/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*1*.root" \

--samples-per-epoch $((10 * 512)) --samples-per-epoch-val $((1 * 512)) \
--data-config ${config} --num-workers 10 \
--network-config $DIR/weaver-core-dev/weaver/networks/example_ParticleTransformer2023Tagger.py \
--model-prefix $DIR/weaver-core-dev/weaver/model/${PREFIX}/net \
--log-file $DIR/weaver-core-dev/weaver/logs/${PREFIX}/train.log --tensorboard _${PREFIX} \
--predict-output $DIR/weaver-core-dev/weaver/predict/$PREFIX/pred.root


