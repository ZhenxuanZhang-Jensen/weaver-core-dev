PREFIX=ak8_MD_inclv8std_nonmd_test.test
config=./data_new/inclv7plus_nonmd/${PREFIX%%.*}.yaml

load_model="./model/ak8_MD_inclv8_part_splitreg_extmass_rmhbs_manual.useamp.large_fc2048.gm5.ddp-bs384-lr6e-4.nepoch100.v3fixsplit2/net_best_epoch_state.pt"
label_cls_nodes="['label_Top_bWcs','label_Top_bWqq','label_Top_bWc','label_Top_bWs','label_Top_bWq','label_Top_bWev','label_Top_bWmv','label_Top_bWtauev','label_Top_bWtaumv','label_Top_bWtauhv','label_Top_Wcs','label_Top_Wqq','label_Top_Wev','label_Top_Wmv','label_Top_Wtauev','label_Top_Wtaumv','label_Top_Wtauhv','label_W_cs','label_W_qq','label_Z_bb','label_Z_cc','label_Z_ss','label_Z_qq','label_QCD_bb','label_QCD_cc','label_QCD_b','label_QCD_c','label_QCD_others']"

modelopts="-o num_nodes 626 -o num_cls_nodes 313 -o loss_split_reg True -o fc_params [(2048,0.1)] -o use_swiglu_config True -o use_pair_norm_config True -o embed_dims [256,1024,256] -o pair_embed_dims [128,128,128] -o num_heads 16 --num-epochs 100 "
modelftopts="-o num_nodes 28 -o num_cls_nodes 28 -o label_cls_nodes ${label_cls_nodes} -o loss_gamma 0 -o use_external_fc True -o fc_params [(256,0),(256,0)] --num-epochs 30 --load-model-weights ${load_model} --exclude-model-weights part\\.fc.* --freeze-model-weights (input_embeds|part\\.(embed|pair_embed|blocks|cls_token|cls_blocks|norm)).* " # the fine-tuned model setup; may override some modelopts

trainopts="--run-mode train,val --num-workers 20 --fetch-step 1. --data-split-group 125 "
testopts="--run-mode test --num-workers 3 --data-split-group 1 " # fetch-by-file

source scripts/train_GloParT_nonMD.sh run 0 --network-config networks/example_ParticleTransformer2024PlusTagger_unified.py --batch-size 512 --start-lr 2e-2 $modelopts $modelftopts $trainopts
source scripts/train_GloParT_nonMD.sh dryrun 0 --network-config networks/example_ParticleTransformer2024PlusTagger_unified.py --batch-size 512 --start-lr 2e-2 $modelopts $modelftopts $testopts
