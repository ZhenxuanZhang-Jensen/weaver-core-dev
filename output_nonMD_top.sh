[2024-04-22 22:31:16,946] INFO: args:
 - ('train_mode', 'cls')
 - ('data_config', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.yaml')
 - ('data_train', ['/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root'])
 - ('data_val', [])
 - ('data_test', ['qcd:/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*1*.root', 'Zprime:/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/infer/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*1*.root'])
 - ('data_fraction', 1)
 - ('file_fraction', 1)
 - ('fetch_by_files', False)
 - ('fetch_step', 0.01)
 - ('in_memory', False)
 - ('train_val_split', 0.8)
 - ('demo', False)
 - ('lr_finder', None)
 - ('tensorboard', '_NonMD_TOP_test_with_gpus')
 - ('tensorboard_custom_fn', None)
 - ('network_config', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/networks/example_ParticleTransformer2023Tagger_hybrid.py')
 - ('network_option', [['three_coll', 'True'], ['loss_gamma', '5'], ['fc_params', '[(512,0.1)]'], ['embed_dims', '[64,256,64]'], ['pair_embed_dims', '[32,32,32]']])
 - ('model_prefix', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/model/NonMD_TOP_test_with_gpus/net')
 - ('load_model_weights', None)
 - ('num_epochs', 50)
 - ('steps_per_epoch', 10000)
 - ('steps_per_epoch_val', 666)
 - ('samples_per_epoch', 7680000)
 - ('samples_per_epoch_val', 512000)
 - ('optimizer', 'ranger')
 - ('optimizer_option', [])
 - ('lr_scheduler', 'flat+decay')
 - ('warmup_steps', 0)
 - ('load_epoch', None)
 - ('start_lr', 0.00675)
 - ('batch_size', 768)
 - ('use_amp', True)
 - ('compile_model', False)
 - ('gpus', '0,1,2')
 - ('predict_gpus', '0,1,2')
 - ('num_workers', 3)
 - ('predict', False)
 - ('predict_output', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/predict/NonMD_TOP_test_with_gpus/pred.root')
 - ('export_onnx', None)
 - ('io_test', False)
 - ('copy_inputs', False)
 - ('log_file', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/logs/NonMD_TOP_test_with_gpus/train.log')
 - ('print', False)
 - ('profile', False)
 - ('backend', None)
 - ('local_rank', None)
[2024-04-22 22:31:16,946] INFO: Running in classification mode
flist ['/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root']
[2024-04-22 22:31:17,658] INFO: Using 4 files for training, range: (0, 0.8)
[2024-04-22 22:31:17,658] INFO: Using 4 files for validation, range: (0.8, 1)
[2024-04-22 22:31:17,687] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 22:31:17,687] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 22:31:17,688] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 22:31:17,688] INFO: [0;37mvar_funcs:
 - ('fj_label_modified_QCD', 'ak.where(fj_label>=309, fj_label-281, fj_label)')
 - ('fj_label_noH', 'ak.where(fj_label_modified_QCD>=29, fj_label_modified_QCD-13, fj_label_modified_QCD)')
 - ('label_Top_bWcs', '(fj_label_noH == 0)')
 - ('label_Top_bWqq', '(fj_label_noH == 1)')
 - ('label_Top_bWc', '(fj_label_noH == 2)')
 - ('label_Top_bWs', '(fj_label_noH == 3)')
 - ('label_Top_bWq', '(fj_label_noH == 4)')
 - ('label_Top_bWev', '(fj_label_noH == 5)')
 - ('label_Top_bWmv', '(fj_label_noH == 6)')
 - ('label_Top_bWtauev', '(fj_label_noH == 7)')
 - ('label_Top_bWtaumv', '(fj_label_noH == 8)')
 - ('label_Top_bWtauhv', '(fj_label_noH == 9)')
 - ('label_Top_Wcs', '(fj_label_noH == 10)')
 - ('label_Top_Wqq', '(fj_label_noH == 11)')
 - ('label_Top_Wev', '(fj_label_noH == 12)')
 - ('label_Top_Wmv', '(fj_label_noH == 13)')
 - ('label_Top_Wtauev', '(fj_label_noH == 14)')
 - ('label_Top_Wtaumv', '(fj_label_noH == 15)')
 - ('label_Top_Wtauhv', '(fj_label_noH == 16)')
 - ('label_W_cs', '(fj_label_noH == 17)')
 - ('label_W_qq', '(fj_label_noH == 18)')
 - ('label_W_ev', '(fj_label_noH == 19)')
 - ('label_W_mv', '(fj_label_noH == 20)')
 - ('label_W_tauev', '(fj_label_noH == 21)')
 - ('label_W_taumv', '(fj_label_noH == 22)')
 - ('label_W_tauhv', '(fj_label_noH == 23)')
 - ('label_Z_bb', '(fj_label_noH == 24)')
 - ('label_Z_cc', '(fj_label_noH == 25)')
 - ('label_Z_ss', '(fj_label_noH == 26)')
 - ('label_Z_qq', '(fj_label_noH == 27)')
 - ('label_QCD_bb', '(fj_label_noH == 28)')
 - ('label_QCD_cc', '(fj_label_noH == 29)')
 - ('label_QCD_b', '(fj_label_noH == 30)')
 - ('label_QCD_c', '(fj_label_noH == 31)')
 - ('label_QCD_others', '(fj_label_noH == 32)')
 - ('cpfcandlt_index', 'ak.argsort(cpfcandlt_pt_nopuppi, axis=-1, ascending=False)')
 - ('cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_pt_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_etarel_sort', 'cpfcandlt_etarel[cpfcandlt_index]')
 - ('cpfcandlt_phirel_sort', 'cpfcandlt_phirel[cpfcandlt_index]')
 - ('cpfcandlt_abseta_sort', 'cpfcandlt_abseta[cpfcandlt_index]')
 - ('cpfcandlt_charge_sort', 'cpfcandlt_charge[cpfcandlt_index]')
 - ('cpfcandlt_isEl_sort', 'cpfcandlt_isEl[cpfcandlt_index]')
 - ('cpfcandlt_isMu_sort', 'cpfcandlt_isMu[cpfcandlt_index]')
 - ('cpfcandlt_isChargedHad_sort', 'cpfcandlt_isChargedHad[cpfcandlt_index]')
 - ('cpfcandlt_isLostTrack_sort', 'cpfcandlt_isLostTrack[cpfcandlt_index]')
 - ('cpfcandlt_VTX_ass_sort', 'cpfcandlt_VTX_ass[cpfcandlt_index]')
 - ('cpfcandlt_lostInnerHits_sort', 'cpfcandlt_lostInnerHits[cpfcandlt_index]')
 - ('cpfcandlt_normchi2_sort', 'cpfcandlt_normchi2[cpfcandlt_index]')
 - ('cpfcandlt_quality_sort', 'cpfcandlt_quality[cpfcandlt_index]')
 - ('cpfcandlt_dz_sort', 'cpfcandlt_dz[cpfcandlt_index]')
 - ('cpfcandlt_dzsig_sort', 'cpfcandlt_dzsig[cpfcandlt_index]')
 - ('cpfcandlt_dxy_sort', 'cpfcandlt_dxy[cpfcandlt_index]')
 - ('cpfcandlt_dxysig_sort', 'cpfcandlt_dxysig[cpfcandlt_index]')
 - ('cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagEtaRel[cpfcandlt_index]')
 - ('cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPtRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagPParRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dVal[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagSip3dSig[cpfcandlt_index]')
 - ('cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_btagJetDistVal[cpfcandlt_index]')
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_px_sort', 'cpfcandlt_px[cpfcandlt_index]')
 - ('cpfcandlt_py_sort', 'cpfcandlt_py[cpfcandlt_index]')
 - ('cpfcandlt_pz_sort', 'cpfcandlt_pz[cpfcandlt_index]')
 - ('cpfcandlt_energy_sort', 'cpfcandlt_energy[cpfcandlt_index]')
 - ('cpfcandlt_mask', 'ak.ones_like(cpfcandlt_etarel)')
 - ('npfcand_mask', 'ak.ones_like(npfcand_etarel)')
 - ('sv_mask', 'ak.ones_like(sv_etarel)')
 - ('_label_', 'fj_label_noH')
 - ('_labelcheck_', 'ak.ones_like(fj_label_noH)')[0m
[2024-04-22 22:31:17,688] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 22:31:17,688] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 22:31:17,688] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 22:31:17,688] INFO: [0;37mpreprocess_params:
 - ('cpfcandlt_pt_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_e_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_etarel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_phirel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_abseta_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_charge_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isEl_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isMu_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isChargedHad_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isLostTrack_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_VTX_ass_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_lostInnerHits_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_normchi2_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_quality_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 180, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dzsig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.9, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.0, 'scale': 300, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxysig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1.0, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagEtaRel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.5, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPtRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPParRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 100, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dSig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagJetDistVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 40, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_px_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_py_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_energy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_mask', {'length': 90, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pt_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_e_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_etarel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_phirel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_abseta', {'length': 60, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isGamma', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isNeutralHad', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_px', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_py', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pz', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_energy', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_mask', {'length': 60, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pt_log', {'length': 10, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mass', {'length': 10, 'pad_mode': 'wrap', 'center': 1.2, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_etarel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_phirel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_abseta', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_ntracks', {'length': 10, 'pad_mode': 'wrap', 'center': 3, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_normchi2', {'length': 10, 'pad_mode': 'wrap', 'center': 0.8, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxy', {'length': 10, 'pad_mode': 'wrap', 'center': 0.4, 'scale': 0.25, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxysig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3d', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3dsig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_px', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_py', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pz', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_energy', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mask', {'length': 10, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})[0m
[2024-04-22 22:31:17,688] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 22:31:17,688] INFO: [0;37mobserver_names: ('event_no', 'fj_label', 'fj_pt', 'fj_eta', 'fj_phi', 'fj_mass', 'fj_sdmass', 'fj_sdmass_fromsubjets', 'fj_gen_mass', 'fj_genparts_mass', 'fj_genjet_sdmass', 'fj_genjet_nomu_sdmass', 'sample_isQCD', 'pfParticleNetDiscriminatorsJetTags_ZvsQCD', 'pfParticleNetDiscriminatorsJetTags_TvsQCD', 'pfParticleNetDiscriminatorsJetTags_WvsQCD', 'pfParticleNetJetTags_probHbb', 'pfParticleNetJetTags_probHcc', 'pfParticleNetJetTags_probHqqqq', 'pfParticleNetJetTags_probQCDb', 'pfParticleNetJetTags_probQCDbb', 'pfParticleNetJetTags_probQCDc', 'pfParticleNetJetTags_probQCDcc', 'pfParticleNetJetTags_probQCDothers', 'pfParticleNetJetTags_probTbc', 'pfParticleNetJetTags_probTbcq', 'pfParticleNetJetTags_probTbel', 'pfParticleNetJetTags_probTbmu', 'pfParticleNetJetTags_probTbq', 'pfParticleNetJetTags_probTbqq', 'pfParticleNetJetTags_probTbta', 'pfParticleNetJetTags_probWcq', 'pfParticleNetJetTags_probWqq', 'pfParticleNetJetTags_probZbb', 'pfParticleNetJetTags_probZcc', 'pfParticleNetJetTags_probZqq')[0m
[2024-04-22 22:31:17,688] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 22:31:17,688] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 22:31:17,688] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 22:31:17,688] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 22:31:17,688] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 22:31:17,688] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 22:31:17,689] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 22:31:17,689] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 22:31:17,689] INFO: [0;37mreweight_discard_under_overflow: True[0m

  0%|                                                                                               | 0/4 [00:00<?, ?it/s]
 25%|█████████████████████▊                                                                 | 1/4 [00:00<00:01,  2.10it/s]
 50%|███████████████████████████████████████████▌                                           | 2/4 [00:00<00:00,  2.72it/s]
 75%|█████████████████████████████████████████████████████████████████▎                     | 3/4 [00:01<00:00,  2.67it/s]
100%|███████████████████████████████████████████████████████████████████████████████████████| 4/4 [00:01<00:00,  2.97it/s]
100%|███████████████████████████████████████████████████████████████████████████████████████| 4/4 [00:01<00:00,  2.80it/s]
[2024-04-22 22:31:19,150] INFO: Using 284433 events to make weights
[2024-04-22 22:31:19,155] INFO: fj_isQCD (unweighted):
 [[ 5848]
 [22306]
 [21243]
 [ 6336]
 [  732]
 [   47]
 [    0]
 [    0]
 [    0]
 [    0]
 [    0]]
[2024-04-22 22:31:19,160] INFO: fj_isTop (unweighted):
 [[  353]
 [  675]
 [ 1301]
 [ 2174]
 [ 3547]
 [ 5249]
 [ 7181]
 [ 9835]
 [12766]
 [13153]
 [  515]]
[2024-04-22 22:31:19,166] INFO: fj_isW (unweighted):
 [[27199]
 [46930]
 [11938]
 [ 3207]
 [ 1211]
 [  438]
 [  133]
 [   31]
 [    7]
 [    0]
 [    0]]
[2024-04-22 22:31:19,171] INFO: fj_isZ (unweighted):
 [[25451]
 [39923]
 [10132]
 [ 2994]
 [ 1047]
 [  352]
 [  135]
 [   35]
 [    7]
 [    2]
 [    0]]
/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/data/preprocess.py:233: RuntimeWarning: divide by zero encountered in divide
  wgt = np.clip(np.nan_to_num(ref_val / hist, posinf=0), 0, 1)
[2024-04-22 22:31:19,174] INFO: weights:
[2024-04-22 22:31:19,174] INFO: fj_isQCD:
 [[0.00878009]
 [0.00230189]
 [0.00241708]
 [0.00810384]
 [0.0184804 ]
 [0.0184804 ]
 [0.        ]
 [0.        ]
 [0.        ]
 [0.        ]
 [0.        ]]
[2024-04-22 22:31:19,174] INFO: fj_isTop:
 [[0.03993822]
 [0.03047138]
 [0.01580952]
 [0.00946098]
 [0.00579875]
 [0.0039185 ]
 [0.00286425]
 [0.00209132]
 [0.00161117]
 [0.00156376]
 [0.03993822]]
[2024-04-22 22:31:19,174] INFO: fj_isW:
 [[0.00109623]
 [0.00063534]
 [0.00249761]
 [0.00929731]
 [0.02462136]
 [0.06807413]
 [0.22418399]
 [0.29117647]
 [0.29117647]
 [0.        ]
 [0.        ]]
[2024-04-22 22:31:19,175] INFO: fj_isZ:
 [[1.0396447e-03]
 [6.6277583e-04]
 [2.6115277e-03]
 [8.8376747e-03]
 [2.5272205e-02]
 [7.5170457e-02]
 [1.9599999e-01]
 [7.5599998e-01]
 [8.9999998e-01]
 [8.9999998e-01]
 [0.0000000e+00]]
[2024-04-22 22:31:19,175] INFO: Raw hist * weights:
[2024-04-22 22:31:19,175] INFO: fj_isQCD:
 [[51]
 [51]
 [51]
 [51]
 [13]
 [ 0]
 [ 0]
 [ 0]
 [ 0]
 [ 0]
 [ 0]]
[2024-04-22 22:31:19,177] INFO: fj_isTop:
 [[14]
 [20]
 [20]
 [20]
 [20]
 [20]
 [20]
 [20]
 [20]
 [20]
 [20]]
[2024-04-22 22:31:19,178] INFO: fj_isW:
 [[29]
 [29]
 [29]
 [29]
 [29]
 [29]
 [29]
 [ 9]
 [ 2]
 [ 0]
 [ 0]]
[2024-04-22 22:31:19,178] INFO: fj_isZ:
 [[26]
 [26]
 [26]
 [26]
 [26]
 [26]
 [26]
 [26]
 [ 6]
 [ 1]
 [ 0]]
[2024-04-22 22:31:19,178] INFO: Writing YAML file w/ reweighting info to /hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.5d3bc80698da768b3ce3c45776b667a0.auto.yaml
[2024-04-22 22:31:19,201] INFO: Found file /hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.5d3bc80698da768b3ce3c45776b667a0.auto.yaml w/ auto-generated preprocessing information, will use that instead!
[2024-04-22 22:31:19,229] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 22:31:19,229] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 22:31:19,230] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 22:31:19,230] INFO: [0;37mvar_funcs:
 - ('fj_label_modified_QCD', 'ak.where(fj_label>=309, fj_label-281, fj_label)')
 - ('fj_label_noH', 'ak.where(fj_label_modified_QCD>=29, fj_label_modified_QCD-13, fj_label_modified_QCD)')
 - ('label_Top_bWcs', '(fj_label_noH == 0)')
 - ('label_Top_bWqq', '(fj_label_noH == 1)')
 - ('label_Top_bWc', '(fj_label_noH == 2)')
 - ('label_Top_bWs', '(fj_label_noH == 3)')
 - ('label_Top_bWq', '(fj_label_noH == 4)')
 - ('label_Top_bWev', '(fj_label_noH == 5)')
 - ('label_Top_bWmv', '(fj_label_noH == 6)')
 - ('label_Top_bWtauev', '(fj_label_noH == 7)')
 - ('label_Top_bWtaumv', '(fj_label_noH == 8)')
 - ('label_Top_bWtauhv', '(fj_label_noH == 9)')
 - ('label_Top_Wcs', '(fj_label_noH == 10)')
 - ('label_Top_Wqq', '(fj_label_noH == 11)')
 - ('label_Top_Wev', '(fj_label_noH == 12)')
 - ('label_Top_Wmv', '(fj_label_noH == 13)')
 - ('label_Top_Wtauev', '(fj_label_noH == 14)')
 - ('label_Top_Wtaumv', '(fj_label_noH == 15)')
 - ('label_Top_Wtauhv', '(fj_label_noH == 16)')
 - ('label_W_cs', '(fj_label_noH == 17)')
 - ('label_W_qq', '(fj_label_noH == 18)')
 - ('label_W_ev', '(fj_label_noH == 19)')
 - ('label_W_mv', '(fj_label_noH == 20)')
 - ('label_W_tauev', '(fj_label_noH == 21)')
 - ('label_W_taumv', '(fj_label_noH == 22)')
 - ('label_W_tauhv', '(fj_label_noH == 23)')
 - ('label_Z_bb', '(fj_label_noH == 24)')
 - ('label_Z_cc', '(fj_label_noH == 25)')
 - ('label_Z_ss', '(fj_label_noH == 26)')
 - ('label_Z_qq', '(fj_label_noH == 27)')
 - ('label_QCD_bb', '(fj_label_noH == 28)')
 - ('label_QCD_cc', '(fj_label_noH == 29)')
 - ('label_QCD_b', '(fj_label_noH == 30)')
 - ('label_QCD_c', '(fj_label_noH == 31)')
 - ('label_QCD_others', '(fj_label_noH == 32)')
 - ('cpfcandlt_index', 'ak.argsort(cpfcandlt_pt_nopuppi, axis=-1, ascending=False)')
 - ('cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_pt_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_etarel_sort', 'cpfcandlt_etarel[cpfcandlt_index]')
 - ('cpfcandlt_phirel_sort', 'cpfcandlt_phirel[cpfcandlt_index]')
 - ('cpfcandlt_abseta_sort', 'cpfcandlt_abseta[cpfcandlt_index]')
 - ('cpfcandlt_charge_sort', 'cpfcandlt_charge[cpfcandlt_index]')
 - ('cpfcandlt_isEl_sort', 'cpfcandlt_isEl[cpfcandlt_index]')
 - ('cpfcandlt_isMu_sort', 'cpfcandlt_isMu[cpfcandlt_index]')
 - ('cpfcandlt_isChargedHad_sort', 'cpfcandlt_isChargedHad[cpfcandlt_index]')
 - ('cpfcandlt_isLostTrack_sort', 'cpfcandlt_isLostTrack[cpfcandlt_index]')
 - ('cpfcandlt_VTX_ass_sort', 'cpfcandlt_VTX_ass[cpfcandlt_index]')
 - ('cpfcandlt_lostInnerHits_sort', 'cpfcandlt_lostInnerHits[cpfcandlt_index]')
 - ('cpfcandlt_normchi2_sort', 'cpfcandlt_normchi2[cpfcandlt_index]')
 - ('cpfcandlt_quality_sort', 'cpfcandlt_quality[cpfcandlt_index]')
 - ('cpfcandlt_dz_sort', 'cpfcandlt_dz[cpfcandlt_index]')
 - ('cpfcandlt_dzsig_sort', 'cpfcandlt_dzsig[cpfcandlt_index]')
 - ('cpfcandlt_dxy_sort', 'cpfcandlt_dxy[cpfcandlt_index]')
 - ('cpfcandlt_dxysig_sort', 'cpfcandlt_dxysig[cpfcandlt_index]')
 - ('cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagEtaRel[cpfcandlt_index]')
 - ('cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPtRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagPParRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dVal[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagSip3dSig[cpfcandlt_index]')
 - ('cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_btagJetDistVal[cpfcandlt_index]')
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_px_sort', 'cpfcandlt_px[cpfcandlt_index]')
 - ('cpfcandlt_py_sort', 'cpfcandlt_py[cpfcandlt_index]')
 - ('cpfcandlt_pz_sort', 'cpfcandlt_pz[cpfcandlt_index]')
 - ('cpfcandlt_energy_sort', 'cpfcandlt_energy[cpfcandlt_index]')
 - ('cpfcandlt_mask', 'ak.ones_like(cpfcandlt_etarel)')
 - ('npfcand_mask', 'ak.ones_like(npfcand_etarel)')
 - ('sv_mask', 'ak.ones_like(sv_etarel)')
 - ('_label_', 'fj_label_noH')
 - ('_labelcheck_', 'ak.ones_like(fj_label_noH)')[0m
[2024-04-22 22:31:19,230] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 22:31:19,230] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 22:31:19,230] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 22:31:19,230] INFO: [0;37mpreprocess_params:
 - ('cpfcandlt_pt_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_e_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_etarel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_phirel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_abseta_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_charge_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isEl_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isMu_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isChargedHad_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isLostTrack_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_VTX_ass_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_lostInnerHits_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_normchi2_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_quality_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 180, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dzsig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.9, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.0, 'scale': 300, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxysig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1.0, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagEtaRel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.5, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPtRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPParRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 100, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dSig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagJetDistVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 40, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_px_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_py_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_energy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_mask', {'length': 90, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pt_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_e_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_etarel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_phirel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_abseta', {'length': 60, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isGamma', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isNeutralHad', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_px', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_py', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pz', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_energy', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_mask', {'length': 60, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pt_log', {'length': 10, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mass', {'length': 10, 'pad_mode': 'wrap', 'center': 1.2, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_etarel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_phirel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_abseta', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_ntracks', {'length': 10, 'pad_mode': 'wrap', 'center': 3, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_normchi2', {'length': 10, 'pad_mode': 'wrap', 'center': 0.8, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxy', {'length': 10, 'pad_mode': 'wrap', 'center': 0.4, 'scale': 0.25, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxysig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3d', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3dsig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_px', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_py', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pz', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_energy', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mask', {'length': 10, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})[0m
[2024-04-22 22:31:19,230] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 22:31:19,230] INFO: [0;37mobserver_names: ()[0m
[2024-04-22 22:31:19,230] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 22:31:19,230] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 22:31:19,230] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 22:31:19,230] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 22:31:19,230] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 22:31:19,230] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 22:31:19,230] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 22:31:19,230] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 22:31:19,231] INFO: [0;37mreweight_discard_under_overflow: True[0m
[2024-04-22 22:31:19,234] INFO: Found file /hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.5d3bc80698da768b3ce3c45776b667a0.auto.yaml w/ auto-generated preprocessing information, will use that instead!
[2024-04-22 22:31:19,260] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 22:31:19,260] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 22:31:19,260] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 22:31:19,261] INFO: [0;37mvar_funcs:
 - ('fj_label_modified_QCD', 'ak.where(fj_label>=309, fj_label-281, fj_label)')
 - ('fj_label_noH', 'ak.where(fj_label_modified_QCD>=29, fj_label_modified_QCD-13, fj_label_modified_QCD)')
 - ('label_Top_bWcs', '(fj_label_noH == 0)')
 - ('label_Top_bWqq', '(fj_label_noH == 1)')
 - ('label_Top_bWc', '(fj_label_noH == 2)')
 - ('label_Top_bWs', '(fj_label_noH == 3)')
 - ('label_Top_bWq', '(fj_label_noH == 4)')
 - ('label_Top_bWev', '(fj_label_noH == 5)')
 - ('label_Top_bWmv', '(fj_label_noH == 6)')
 - ('label_Top_bWtauev', '(fj_label_noH == 7)')
 - ('label_Top_bWtaumv', '(fj_label_noH == 8)')
 - ('label_Top_bWtauhv', '(fj_label_noH == 9)')
 - ('label_Top_Wcs', '(fj_label_noH == 10)')
 - ('label_Top_Wqq', '(fj_label_noH == 11)')
 - ('label_Top_Wev', '(fj_label_noH == 12)')
 - ('label_Top_Wmv', '(fj_label_noH == 13)')
 - ('label_Top_Wtauev', '(fj_label_noH == 14)')
 - ('label_Top_Wtaumv', '(fj_label_noH == 15)')
 - ('label_Top_Wtauhv', '(fj_label_noH == 16)')
 - ('label_W_cs', '(fj_label_noH == 17)')
 - ('label_W_qq', '(fj_label_noH == 18)')
 - ('label_W_ev', '(fj_label_noH == 19)')
 - ('label_W_mv', '(fj_label_noH == 20)')
 - ('label_W_tauev', '(fj_label_noH == 21)')
 - ('label_W_taumv', '(fj_label_noH == 22)')
 - ('label_W_tauhv', '(fj_label_noH == 23)')
 - ('label_Z_bb', '(fj_label_noH == 24)')
 - ('label_Z_cc', '(fj_label_noH == 25)')
 - ('label_Z_ss', '(fj_label_noH == 26)')
 - ('label_Z_qq', '(fj_label_noH == 27)')
 - ('label_QCD_bb', '(fj_label_noH == 28)')
 - ('label_QCD_cc', '(fj_label_noH == 29)')
 - ('label_QCD_b', '(fj_label_noH == 30)')
 - ('label_QCD_c', '(fj_label_noH == 31)')
 - ('label_QCD_others', '(fj_label_noH == 32)')
 - ('cpfcandlt_index', 'ak.argsort(cpfcandlt_pt_nopuppi, axis=-1, ascending=False)')
 - ('cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_pt_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_etarel_sort', 'cpfcandlt_etarel[cpfcandlt_index]')
 - ('cpfcandlt_phirel_sort', 'cpfcandlt_phirel[cpfcandlt_index]')
 - ('cpfcandlt_abseta_sort', 'cpfcandlt_abseta[cpfcandlt_index]')
 - ('cpfcandlt_charge_sort', 'cpfcandlt_charge[cpfcandlt_index]')
 - ('cpfcandlt_isEl_sort', 'cpfcandlt_isEl[cpfcandlt_index]')
 - ('cpfcandlt_isMu_sort', 'cpfcandlt_isMu[cpfcandlt_index]')
 - ('cpfcandlt_isChargedHad_sort', 'cpfcandlt_isChargedHad[cpfcandlt_index]')
 - ('cpfcandlt_isLostTrack_sort', 'cpfcandlt_isLostTrack[cpfcandlt_index]')
 - ('cpfcandlt_VTX_ass_sort', 'cpfcandlt_VTX_ass[cpfcandlt_index]')
 - ('cpfcandlt_lostInnerHits_sort', 'cpfcandlt_lostInnerHits[cpfcandlt_index]')
 - ('cpfcandlt_normchi2_sort', 'cpfcandlt_normchi2[cpfcandlt_index]')
 - ('cpfcandlt_quality_sort', 'cpfcandlt_quality[cpfcandlt_index]')
 - ('cpfcandlt_dz_sort', 'cpfcandlt_dz[cpfcandlt_index]')
 - ('cpfcandlt_dzsig_sort', 'cpfcandlt_dzsig[cpfcandlt_index]')
 - ('cpfcandlt_dxy_sort', 'cpfcandlt_dxy[cpfcandlt_index]')
 - ('cpfcandlt_dxysig_sort', 'cpfcandlt_dxysig[cpfcandlt_index]')
 - ('cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagEtaRel[cpfcandlt_index]')
 - ('cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPtRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagPParRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dVal[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagSip3dSig[cpfcandlt_index]')
 - ('cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_btagJetDistVal[cpfcandlt_index]')
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_px_sort', 'cpfcandlt_px[cpfcandlt_index]')
 - ('cpfcandlt_py_sort', 'cpfcandlt_py[cpfcandlt_index]')
 - ('cpfcandlt_pz_sort', 'cpfcandlt_pz[cpfcandlt_index]')
 - ('cpfcandlt_energy_sort', 'cpfcandlt_energy[cpfcandlt_index]')
 - ('cpfcandlt_mask', 'ak.ones_like(cpfcandlt_etarel)')
 - ('npfcand_mask', 'ak.ones_like(npfcand_etarel)')
 - ('sv_mask', 'ak.ones_like(sv_etarel)')
 - ('_label_', 'fj_label_noH')
 - ('_labelcheck_', 'ak.ones_like(fj_label_noH)')[0m
[2024-04-22 22:31:19,261] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 22:31:19,261] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 22:31:19,261] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 22:31:19,261] INFO: [0;37mpreprocess_params:
 - ('cpfcandlt_pt_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_e_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_etarel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_phirel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_abseta_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_charge_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isEl_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isMu_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isChargedHad_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isLostTrack_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_VTX_ass_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_lostInnerHits_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_normchi2_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_quality_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 180, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dzsig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.9, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.0, 'scale': 300, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxysig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1.0, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagEtaRel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.5, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPtRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPParRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 100, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dSig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagJetDistVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 40, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_px_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_py_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_energy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_mask', {'length': 90, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pt_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_e_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_etarel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_phirel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_abseta', {'length': 60, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isGamma', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isNeutralHad', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_px', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_py', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pz', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_energy', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_mask', {'length': 60, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pt_log', {'length': 10, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mass', {'length': 10, 'pad_mode': 'wrap', 'center': 1.2, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_etarel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_phirel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_abseta', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_ntracks', {'length': 10, 'pad_mode': 'wrap', 'center': 3, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_normchi2', {'length': 10, 'pad_mode': 'wrap', 'center': 0.8, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxy', {'length': 10, 'pad_mode': 'wrap', 'center': 0.4, 'scale': 0.25, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxysig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3d', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3dsig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_px', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_py', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pz', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_energy', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mask', {'length': 10, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})[0m
[2024-04-22 22:31:19,261] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 22:31:19,261] INFO: [0;37mobserver_names: ('event_no', 'fj_label', 'fj_pt', 'fj_eta', 'fj_phi', 'fj_mass', 'fj_sdmass', 'fj_sdmass_fromsubjets', 'fj_gen_mass', 'fj_genparts_mass', 'fj_genjet_sdmass', 'fj_genjet_nomu_sdmass', 'sample_isQCD', 'pfParticleNetDiscriminatorsJetTags_ZvsQCD', 'pfParticleNetDiscriminatorsJetTags_TvsQCD', 'pfParticleNetDiscriminatorsJetTags_WvsQCD', 'pfParticleNetJetTags_probHbb', 'pfParticleNetJetTags_probHcc', 'pfParticleNetJetTags_probHqqqq', 'pfParticleNetJetTags_probQCDb', 'pfParticleNetJetTags_probQCDbb', 'pfParticleNetJetTags_probQCDc', 'pfParticleNetJetTags_probQCDcc', 'pfParticleNetJetTags_probQCDothers', 'pfParticleNetJetTags_probTbc', 'pfParticleNetJetTags_probTbcq', 'pfParticleNetJetTags_probTbel', 'pfParticleNetJetTags_probTbmu', 'pfParticleNetJetTags_probTbq', 'pfParticleNetJetTags_probTbqq', 'pfParticleNetJetTags_probTbta', 'pfParticleNetJetTags_probWcq', 'pfParticleNetJetTags_probWqq', 'pfParticleNetJetTags_probZbb', 'pfParticleNetJetTags_probZcc', 'pfParticleNetJetTags_probZqq')[0m
[2024-04-22 22:31:19,261] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 22:31:19,261] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 22:31:19,261] INFO: [0;37mreweight_discard_under_overflow: True[0m
[2024-04-22 22:31:19,290] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 22:31:19,290] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 22:31:19,290] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 22:31:19,290] INFO: [0;37mvar_funcs:
 - ('fj_label_modified_QCD', 'ak.where(fj_label>=309, fj_label-281, fj_label)')
 - ('fj_label_noH', 'ak.where(fj_label_modified_QCD>=29, fj_label_modified_QCD-13, fj_label_modified_QCD)')
 - ('label_Top_bWcs', '(fj_label_noH == 0)')
 - ('label_Top_bWqq', '(fj_label_noH == 1)')
 - ('label_Top_bWc', '(fj_label_noH == 2)')
 - ('label_Top_bWs', '(fj_label_noH == 3)')
 - ('label_Top_bWq', '(fj_label_noH == 4)')
 - ('label_Top_bWev', '(fj_label_noH == 5)')
 - ('label_Top_bWmv', '(fj_label_noH == 6)')
 - ('label_Top_bWtauev', '(fj_label_noH == 7)')
 - ('label_Top_bWtaumv', '(fj_label_noH == 8)')
 - ('label_Top_bWtauhv', '(fj_label_noH == 9)')
 - ('label_Top_Wcs', '(fj_label_noH == 10)')
 - ('label_Top_Wqq', '(fj_label_noH == 11)')
 - ('label_Top_Wev', '(fj_label_noH == 12)')
 - ('label_Top_Wmv', '(fj_label_noH == 13)')
 - ('label_Top_Wtauev', '(fj_label_noH == 14)')
 - ('label_Top_Wtaumv', '(fj_label_noH == 15)')
 - ('label_Top_Wtauhv', '(fj_label_noH == 16)')
 - ('label_W_cs', '(fj_label_noH == 17)')
 - ('label_W_qq', '(fj_label_noH == 18)')
 - ('label_W_ev', '(fj_label_noH == 19)')
 - ('label_W_mv', '(fj_label_noH == 20)')
 - ('label_W_tauev', '(fj_label_noH == 21)')
 - ('label_W_taumv', '(fj_label_noH == 22)')
 - ('label_W_tauhv', '(fj_label_noH == 23)')
 - ('label_Z_bb', '(fj_label_noH == 24)')
 - ('label_Z_cc', '(fj_label_noH == 25)')
 - ('label_Z_ss', '(fj_label_noH == 26)')
 - ('label_Z_qq', '(fj_label_noH == 27)')
 - ('label_QCD_bb', '(fj_label_noH == 28)')
 - ('label_QCD_cc', '(fj_label_noH == 29)')
 - ('label_QCD_b', '(fj_label_noH == 30)')
 - ('label_QCD_c', '(fj_label_noH == 31)')
 - ('label_QCD_others', '(fj_label_noH == 32)')
 - ('cpfcandlt_index', 'ak.argsort(cpfcandlt_pt_nopuppi, axis=-1, ascending=False)')
 - ('cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_pt_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi[cpfcandlt_index]')
 - ('cpfcandlt_etarel_sort', 'cpfcandlt_etarel[cpfcandlt_index]')
 - ('cpfcandlt_phirel_sort', 'cpfcandlt_phirel[cpfcandlt_index]')
 - ('cpfcandlt_abseta_sort', 'cpfcandlt_abseta[cpfcandlt_index]')
 - ('cpfcandlt_charge_sort', 'cpfcandlt_charge[cpfcandlt_index]')
 - ('cpfcandlt_isEl_sort', 'cpfcandlt_isEl[cpfcandlt_index]')
 - ('cpfcandlt_isMu_sort', 'cpfcandlt_isMu[cpfcandlt_index]')
 - ('cpfcandlt_isChargedHad_sort', 'cpfcandlt_isChargedHad[cpfcandlt_index]')
 - ('cpfcandlt_isLostTrack_sort', 'cpfcandlt_isLostTrack[cpfcandlt_index]')
 - ('cpfcandlt_VTX_ass_sort', 'cpfcandlt_VTX_ass[cpfcandlt_index]')
 - ('cpfcandlt_lostInnerHits_sort', 'cpfcandlt_lostInnerHits[cpfcandlt_index]')
 - ('cpfcandlt_normchi2_sort', 'cpfcandlt_normchi2[cpfcandlt_index]')
 - ('cpfcandlt_quality_sort', 'cpfcandlt_quality[cpfcandlt_index]')
 - ('cpfcandlt_dz_sort', 'cpfcandlt_dz[cpfcandlt_index]')
 - ('cpfcandlt_dzsig_sort', 'cpfcandlt_dzsig[cpfcandlt_index]')
 - ('cpfcandlt_dxy_sort', 'cpfcandlt_dxy[cpfcandlt_index]')
 - ('cpfcandlt_dxysig_sort', 'cpfcandlt_dxysig[cpfcandlt_index]')
 - ('cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagEtaRel[cpfcandlt_index]')
 - ('cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPtRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagPParRatio[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dVal[cpfcandlt_index]')
 - ('cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagSip3dSig[cpfcandlt_index]')
 - ('cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_btagJetDistVal[cpfcandlt_index]')
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement[cpfcandlt_index]')
 - ('cpfcandlt_px_sort', 'cpfcandlt_px[cpfcandlt_index]')
 - ('cpfcandlt_py_sort', 'cpfcandlt_py[cpfcandlt_index]')
 - ('cpfcandlt_pz_sort', 'cpfcandlt_pz[cpfcandlt_index]')
 - ('cpfcandlt_energy_sort', 'cpfcandlt_energy[cpfcandlt_index]')
 - ('cpfcandlt_mask', 'ak.ones_like(cpfcandlt_etarel)')
 - ('npfcand_mask', 'ak.ones_like(npfcand_etarel)')
 - ('sv_mask', 'ak.ones_like(sv_etarel)')
 - ('_label_', 'fj_label_noH')
 - ('_labelcheck_', 'ak.ones_like(fj_label_noH)')[0m
[2024-04-22 22:31:19,290] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 22:31:19,290] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 22:31:19,290] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 22:31:19,290] INFO: [0;37mpreprocess_params:
 - ('cpfcandlt_pt_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_e_log_nopuppi_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_etarel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_phirel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_abseta_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_charge_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isEl_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isMu_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isChargedHad_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_isLostTrack_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_VTX_ass_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_lostInnerHits_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_normchi2_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_quality_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 180, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dzsig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.9, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0.0, 'scale': 300, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_dxysig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1.0, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagEtaRel_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 1.5, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPtRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagPParRatio_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 100, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagSip3dSig_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_btagJetDistVal_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 40, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelBarrelLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pixelEndcapLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTECLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTIDLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_stripTOBLayersWithMeasurement_sort', {'length': 90, 'pad_mode': 'wrap', 'center': 0, 'scale': 0.1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_px_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_py_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_pz_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_energy_sort', {'length': 90, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('cpfcandlt_mask', {'length': 90, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pt_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_e_log_nopuppi', {'length': 60, 'pad_mode': 'wrap', 'center': 1.3, 'scale': 0.5, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_etarel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_phirel', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_abseta', {'length': 60, 'pad_mode': 'wrap', 'center': 0.6, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isGamma', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_isNeutralHad', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_px', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_py', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_pz', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_energy', {'length': 60, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('npfcand_mask', {'length': 60, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pt_log', {'length': 10, 'pad_mode': 'wrap', 'center': 4, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mass', {'length': 10, 'pad_mode': 'wrap', 'center': 1.2, 'scale': 0.3, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_etarel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_phirel', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_abseta', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 1.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_ntracks', {'length': 10, 'pad_mode': 'wrap', 'center': 3, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_normchi2', {'length': 10, 'pad_mode': 'wrap', 'center': 0.8, 'scale': 0.6, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxy', {'length': 10, 'pad_mode': 'wrap', 'center': 0.4, 'scale': 0.25, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_dxysig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3d', {'length': 10, 'pad_mode': 'wrap', 'center': 0.5, 'scale': 0.2, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_d3dsig', {'length': 10, 'pad_mode': 'wrap', 'center': 7, 'scale': 0.02, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_px', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_py', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_pz', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_energy', {'length': 10, 'pad_mode': 'wrap', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})
 - ('sv_mask', {'length': 10, 'pad_mode': 'constant', 'center': None, 'scale': 1, 'min': -5, 'max': 5, 'pad_value': 0})[0m
[2024-04-22 22:31:19,291] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 22:31:19,291] INFO: [0;37mobserver_names: ()[0m
[2024-04-22 22:31:19,291] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 22:31:19,291] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 22:31:19,291] INFO: [0;37mreweight_discard_under_overflow: True[0m
args.num_workers 3
args.steps_per_epoch 10000
len(train_files) 4
[2024-04-22 22:31:19,309] INFO: Network options: {'three_coll': True, 'loss_gamma': 5, 'fc_params': [(512, 0.1)], 'embed_dims': [64, 256, 64], 'pair_embed_dims': [32, 32, 32]}
Traceback (most recent call last):
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 923, in <module>
    main()
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 919, in main
    _main(args)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 721, in _main
    model, model_info, loss_func = model_setup(args, data_config)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 552, in model_setup
    model, model_info = network_module.get_model(data_config, **network_options)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/networks/example_ParticleTransformer2023Tagger_hybrid.py", line 16, in get_model
    num_classes=data_config.label_value_cls_num + data_config.label_value_reg_num,
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/data/config.py", line 213, in __getattr__
    return self.options[name]
KeyError: 'label_value_reg_num'
