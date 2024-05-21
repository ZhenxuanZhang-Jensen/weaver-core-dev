[2024-04-22 23:47:23,010] INFO: args:
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
 - ('network_config', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/networks/example_ParticleTransformer2023Tagger.py')
 - ('network_option', [['three_coll', 'True'], ['loss_gamma', '5'], ['fc_params', '[(512,0.1)]'], ['embed_dims', '[64,256,64]'], ['pair_embed_dims', '[32,32,32]']])
 - ('model_prefix', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/model/NonMD_TOP_test_with_gpus/net')
 - ('load_model_weights', None)
 - ('num_epochs', 1)
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
[2024-04-22 23:47:23,010] INFO: Running in classification mode
flist ['/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root']
[2024-04-22 23:47:37,346] INFO: Using 4 files for training, range: (0, 0.8)
[2024-04-22 23:47:37,348] INFO: Using 4 files for validation, range: (0.8, 1)
[2024-04-22 23:47:37,443] INFO: Found file /hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.591234be0d16aa77740cda56ddcb5482.auto.yaml w/ auto-generated preprocessing information, will use that instead!
[2024-04-22 23:47:37,490] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 23:47:37,490] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 23:47:37,491] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 23:47:37,491] INFO: [0;37mvar_funcs:
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
[2024-04-22 23:47:37,493] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 23:47:37,493] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 23:47:37,493] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 23:47:37,494] INFO: [0;37mpreprocess_params:
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
[2024-04-22 23:47:37,494] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 23:47:37,494] INFO: [0;37mobserver_names: ('event_no', 'fj_label', 'fj_pt', 'fj_eta', 'fj_phi', 'fj_mass', 'fj_sdmass', 'fj_sdmass_fromsubjets', 'fj_gen_mass', 'fj_genparts_mass', 'fj_genjet_sdmass', 'fj_genjet_nomu_sdmass', 'sample_isQCD', 'pfParticleNetDiscriminatorsJetTags_ZvsQCD', 'pfParticleNetDiscriminatorsJetTags_TvsQCD', 'pfParticleNetDiscriminatorsJetTags_WvsQCD', 'pfParticleNetJetTags_probHbb', 'pfParticleNetJetTags_probHcc', 'pfParticleNetJetTags_probHqqqq', 'pfParticleNetJetTags_probQCDb', 'pfParticleNetJetTags_probQCDbb', 'pfParticleNetJetTags_probQCDc', 'pfParticleNetJetTags_probQCDcc', 'pfParticleNetJetTags_probQCDothers', 'pfParticleNetJetTags_probTbc', 'pfParticleNetJetTags_probTbcq', 'pfParticleNetJetTags_probTbel', 'pfParticleNetJetTags_probTbmu', 'pfParticleNetJetTags_probTbq', 'pfParticleNetJetTags_probTbqq', 'pfParticleNetJetTags_probTbta', 'pfParticleNetJetTags_probWcq', 'pfParticleNetJetTags_probWqq', 'pfParticleNetJetTags_probZbb', 'pfParticleNetJetTags_probZcc', 'pfParticleNetJetTags_probZqq')[0m
[2024-04-22 23:47:37,494] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 23:47:37,494] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 23:47:37,494] INFO: [0;37mreweight_discard_under_overflow: True[0m
[2024-04-22 23:47:37,524] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 23:47:37,524] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 23:47:37,524] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 23:47:37,524] INFO: [0;37mvar_funcs:
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
[2024-04-22 23:47:37,524] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 23:47:37,524] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 23:47:37,524] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 23:47:37,525] INFO: [0;37mpreprocess_params:
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
[2024-04-22 23:47:37,525] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 23:47:37,525] INFO: [0;37mobserver_names: ()[0m
[2024-04-22 23:47:37,525] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 23:47:37,525] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 23:47:37,525] INFO: [0;37mreweight_discard_under_overflow: True[0m
[2024-04-22 23:47:37,528] INFO: Found file /hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.591234be0d16aa77740cda56ddcb5482.auto.yaml w/ auto-generated preprocessing information, will use that instead!
[2024-04-22 23:47:37,554] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 23:47:37,555] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 23:47:37,555] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 23:47:37,555] INFO: [0;37mvar_funcs:
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
[2024-04-22 23:47:37,555] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 23:47:37,555] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 23:47:37,555] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 23:47:37,555] INFO: [0;37mpreprocess_params:
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
[2024-04-22 23:47:37,555] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 23:47:37,555] INFO: [0;37mobserver_names: ('event_no', 'fj_label', 'fj_pt', 'fj_eta', 'fj_phi', 'fj_mass', 'fj_sdmass', 'fj_sdmass_fromsubjets', 'fj_gen_mass', 'fj_genparts_mass', 'fj_genjet_sdmass', 'fj_genjet_nomu_sdmass', 'sample_isQCD', 'pfParticleNetDiscriminatorsJetTags_ZvsQCD', 'pfParticleNetDiscriminatorsJetTags_TvsQCD', 'pfParticleNetDiscriminatorsJetTags_WvsQCD', 'pfParticleNetJetTags_probHbb', 'pfParticleNetJetTags_probHcc', 'pfParticleNetJetTags_probHqqqq', 'pfParticleNetJetTags_probQCDb', 'pfParticleNetJetTags_probQCDbb', 'pfParticleNetJetTags_probQCDc', 'pfParticleNetJetTags_probQCDcc', 'pfParticleNetJetTags_probQCDothers', 'pfParticleNetJetTags_probTbc', 'pfParticleNetJetTags_probTbcq', 'pfParticleNetJetTags_probTbel', 'pfParticleNetJetTags_probTbmu', 'pfParticleNetJetTags_probTbq', 'pfParticleNetJetTags_probTbqq', 'pfParticleNetJetTags_probTbta', 'pfParticleNetJetTags_probWcq', 'pfParticleNetJetTags_probWqq', 'pfParticleNetJetTags_probZbb', 'pfParticleNetJetTags_probZcc', 'pfParticleNetJetTags_probZqq')[0m
[2024-04-22 23:47:37,555] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 23:47:37,555] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 23:47:37,555] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 23:47:37,556] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 23:47:37,556] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 23:47:37,556] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 23:47:37,556] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 23:47:37,556] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 23:47:37,556] INFO: [0;37mreweight_discard_under_overflow: True[0m
[2024-04-22 23:47:37,584] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 23:47:37,584] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label >= 309) & (fj_label < 314) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label <= 45) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 23:47:37,585] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 23:47:37,585] INFO: [0;37mvar_funcs:
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
[2024-04-22 23:47:37,585] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 23:47:37,585] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 23:47:37,585] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 23:47:37,585] INFO: [0;37mpreprocess_params:
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
[2024-04-22 23:47:37,585] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 23:47:37,585] INFO: [0;37mobserver_names: ()[0m
[2024-04-22 23:47:37,585] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 23:47:37,585] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 23:47:37,585] INFO: [0;37mreweight_discard_under_overflow: True[0m
args.num_workers 3
args.steps_per_epoch 10000
len(train_files) 4
[2024-04-22 23:47:37,892] INFO: Network options: {'three_coll': True, 'loss_gamma': 5, 'fc_params': [(512, 0.1)], 'embed_dims': [64, 256, 64], 'pair_embed_dims': [32, 32, 32]}
[2024-04-22 23:47:38,149] INFO: cfg_block: {'embed_dim': 64, 'num_heads': 8, 'ffn_ratio': 4, 'dropout': 0.1, 'attn_dropout': 0.1, 'activation_dropout': 0.1, 'add_bias_kv': False, 'activation': 'gelu', 'scale_fc': True, 'scale_attn': True, 'scale_heads': True, 'scale_resids': True, 'enable_mem_efficient': False}
[2024-04-22 23:47:38,149] INFO: cfg_cls_block: {'embed_dim': 64, 'num_heads': 8, 'ffn_ratio': 4, 'dropout': 0, 'attn_dropout': 0, 'activation_dropout': 0, 'add_bias_kv': False, 'activation': 'gelu', 'scale_fc': True, 'scale_attn': True, 'scale_heads': True, 'scale_resids': True, 'enable_mem_efficient': False}
[2024-04-22 23:47:38,425] INFO: Model config: {'num_classes': 33, 'pair_input_dim': 4, 'pair_extra_dim': 0, 'remove_self_pair': False, 'use_pre_activation_pair': True, 'embed_dims': [64, 256, 64], 'pair_embed_dims': [32, 32, 32], 'num_heads': 8, 'num_layers': 8, 'num_cls_layers': 2, 'block_params': None, 'cls_block_params': {'dropout': 0, 'attn_dropout': 0, 'activation_dropout': 0}, 'fc_params': [(512, 0.1)], 'activation': 'gelu', 'enable_mem_efficient': False, 'trim': True, 'for_inference': False, 'cpf_input_dim': 30, 'npf_input_dim': 7, 'sv_input_dim': 11, 'use_amp': True}
[2024-04-22 23:47:38,493] INFO: [0;37mWarning: module SequenceTrimmer is treated as a zero-op.[0m
[2024-04-22 23:47:38,493] INFO: [0;37mWarning: module LayerNorm is treated as a zero-op.[0m
[2024-04-22 23:47:38,493] INFO: [0;37mWarning: module GELU is treated as a zero-op.[0m
[2024-04-22 23:47:38,493] INFO: [0;37mWarning: module Embed is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module Identity is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module PairEmbed is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module NonDynamicallyQuantizableLinear is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module Dropout is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module Block is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module ParticleTransformer is treated as a zero-op.[0m
[2024-04-22 23:47:38,494] INFO: [0;37mWarning: module ParticleTransformerTagger_3coll is treated as a zero-op.[0m
[2024-04-22 23:47:42,730] INFO: [0;37mParticleTransformerTagger_3coll(
  |0.653 M, 98.212% Params, 134.939 MMac, 100.000% MACs|
  (cpf_trimmer): SequenceTrimmer(|0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
  (npf_trimmer): SequenceTrimmer(|0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
  (sv_trimmer): SequenceTrimmer(|0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
  (cpf_embed): Embed(
    |0.035 M, 5.285% Params, 3.128 MMac, 2.318% MACs|
    (input_bn): BatchNorm1d(30, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.009% Params, 5.4 KMac, 0.004% MACs|)
    (embed): Sequential(
      |0.035 M, 5.276% Params, 3.122 MMac, 2.314% MACs|
      (0): LayerNorm((30,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (1): Linear(in_features=30, out_features=64, bias=True, |0.002 M, 0.298% Params, 172.864 KMac, 0.128% MACs|)
      (2): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (3): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (4): Linear(in_features=64, out_features=256, bias=True, |0.017 M, 2.503% Params, 1.475 MMac, 1.093% MACs|)
      (5): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (6): LayerNorm((256,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (7): Linear(in_features=256, out_features=64, bias=True, |0.016 M, 2.474% Params, 1.475 MMac, 1.093% MACs|)
      (8): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
    )
  )
  (npf_embed): Embed(
    |0.034 M, 5.057% Params, 1.994 MMac, 1.478% MACs|
    (input_bn): BatchNorm1d(7, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.002% Params, 840.0 Mac, 0.001% MACs|)
    (embed): Sequential(
      |0.034 M, 5.055% Params, 1.993 MMac, 1.477% MACs|
      (0): LayerNorm((7,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (1): Linear(in_features=7, out_features=64, bias=True, |0.001 M, 0.077% Params, 26.944 KMac, 0.020% MACs|)
      (2): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (3): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (4): Linear(in_features=64, out_features=256, bias=True, |0.017 M, 2.503% Params, 983.296 KMac, 0.729% MACs|)
      (5): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (6): LayerNorm((256,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (7): Linear(in_features=256, out_features=64, bias=True, |0.016 M, 2.474% Params, 983.104 KMac, 0.729% MACs|)
      (8): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
    )
  )
  (sv_embed): Embed(
    |0.034 M, 5.096% Params, 335.324 KMac, 0.249% MACs|
    (input_bn): BatchNorm1d(11, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.003% Params, 220.0 Mac, 0.000% MACs|)
    (embed): Sequential(
      |0.034 M, 5.093% Params, 335.104 KMac, 0.248% MACs|
      (0): LayerNorm((11,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (1): Linear(in_features=11, out_features=64, bias=True, |0.001 M, 0.116% Params, 7.104 KMac, 0.005% MACs|)
      (2): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (3): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (4): Linear(in_features=64, out_features=256, bias=True, |0.017 M, 2.503% Params, 164.096 KMac, 0.122% MACs|)
      (5): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (6): LayerNorm((256,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      (7): Linear(in_features=256, out_features=64, bias=True, |0.016 M, 2.474% Params, 163.904 KMac, 0.121% MACs|)
      (8): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
    )
  )
  (part): ParticleTransformer(
    |0.55 M, 82.774% Params, 129.482 MMac, 95.956% MACs|
    (trimmer): SequenceTrimmer(|0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
    (embed): Identity(|0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
    (pair_embed): PairEmbed(
      |0.003 M, 0.414% Params, 35.446 MMac, 26.268% MACs|
      (embed): Sequential(
        |0.003 M, 0.414% Params, 35.446 MMac, 26.268% MACs|
        (0): BatchNorm1d(4, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.001% Params, 103.04 KMac, 0.076% MACs|)
        (1): Conv1d(4, 32, kernel_size=(1,), stride=(1,), |0.0 M, 0.024% Params, 2.061 MMac, 1.527% MACs|)
        (2): BatchNorm1d(32, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.010% Params, 824.32 KMac, 0.611% MACs|)
        (3): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (4): Conv1d(32, 32, kernel_size=(1,), stride=(1,), |0.001 M, 0.159% Params, 13.601 MMac, 10.080% MACs|)
        (5): BatchNorm1d(32, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.010% Params, 824.32 KMac, 0.611% MACs|)
        (6): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (7): Conv1d(32, 32, kernel_size=(1,), stride=(1,), |0.001 M, 0.159% Params, 13.601 MMac, 10.080% MACs|)
        (8): BatchNorm1d(32, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.010% Params, 824.32 KMac, 0.611% MACs|)
        (9): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (10): Conv1d(32, 8, kernel_size=(1,), stride=(1,), |0.0 M, 0.040% Params, 3.4 MMac, 2.520% MACs|)
        (11): BatchNorm1d(8, eps=1e-05, momentum=0.1, affine=True, track_running_stats=True, |0.0 M, 0.002% Params, 206.08 KMac, 0.153% MACs|)
      )
    )
    (blocks): ModuleList(
      (0-7): 8 x Block(
        |0.05 M, 7.481% Params, 11.397 MMac, 8.446% MACs|
        (pre_attn_norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (attn): MultiheadAttention(
          |0.017 M, 2.503% Params, 6.154 MMac, 4.561% MACs|
          (out_proj): NonDynamicallyQuantizableLinear(in_features=64, out_features=64, bias=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        )
        (post_attn_norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (dropout): Dropout(p=0.1, inplace=False, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (pre_fc_norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (fc1): Linear(in_features=64, out_features=256, bias=True, |0.017 M, 2.503% Params, 2.622 MMac, 1.943% MACs|)
        (act): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (act_dropout): Dropout(p=0.1, inplace=False, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (post_fc_norm): LayerNorm((256,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (fc2): Linear(in_features=256, out_features=64, bias=True, |0.016 M, 2.474% Params, 2.622 MMac, 1.943% MACs|)
      )
    )
    (cls_blocks): ModuleList(
      (0-1): 2 x Block(
        |0.05 M, 7.481% Params, 1.403 MMac, 1.040% MACs|
        (pre_attn_norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (attn): MultiheadAttention(
          |0.017 M, 2.503% Params, 1.37 MMac, 1.015% MACs|
          (out_proj): NonDynamicallyQuantizableLinear(in_features=64, out_features=64, bias=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        )
        (post_attn_norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (dropout): Dropout(p=0, inplace=False, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (pre_fc_norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (fc1): Linear(in_features=64, out_features=256, bias=True, |0.017 M, 2.503% Params, 16.64 KMac, 0.012% MACs|)
        (act): GELU(approximate='none', |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (act_dropout): Dropout(p=0, inplace=False, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (post_fc_norm): LayerNorm((256,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
        (fc2): Linear(in_features=256, out_features=64, bias=True, |0.016 M, 2.474% Params, 16.448 KMac, 0.012% MACs|)
      )
    )
    (norm): LayerNorm((64,), eps=1e-05, elementwise_affine=True, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
    (fc): Sequential(
      |0.05 M, 7.553% Params, 50.721 KMac, 0.038% MACs|
      (0): Sequential(
        |0.033 M, 5.006% Params, 33.792 KMac, 0.025% MACs|
        (0): Linear(in_features=64, out_features=512, bias=True, |0.033 M, 5.006% Params, 33.28 KMac, 0.025% MACs|)
        (1): ReLU(|0.0 M, 0.000% Params, 512.0 Mac, 0.000% MACs|)
        (2): Dropout(p=0.1, inplace=False, |0.0 M, 0.000% Params, 0.0 Mac, 0.000% MACs|)
      )
      (1): Linear(in_features=512, out_features=33, bias=True, |0.017 M, 2.547% Params, 16.929 KMac, 0.013% MACs|)
    )
  )
)[0m
[2024-04-22 23:47:42,750] INFO: Computational complexity:       134.94 MMac
[2024-04-22 23:47:42,750] INFO: Number of parameters:           664.75 k
[2024-04-22 23:47:42,751] INFO: Using loss function CrossEntropyLoss() with options {'three_coll': True, 'loss_gamma': 5, 'fc_params': [(512, 0.1)], 'embed_dims': [64, 256, 64], 'pair_embed_dims': [32, 32, 32], 'use_amp': True}
[2024-04-22 23:47:52,811] INFO: Create Tensorboard summary writer with comment _NonMD_TOP_test_with_gpus
[2024-04-22 23:48:00,772] INFO: Optimizer options: {}
[2024-04-22 23:48:05,658] INFO: --------------------------------------------------
[2024-04-22 23:48:05,658] INFO: Epoch #0 training
0it [00:00, ?it/s]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-22 23:48:05,970] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-22 23:48:06,054] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-22 23:48:06,286] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
0it [01:47, ?it/s, lr=6.75e-05, Loss=3.52196, AvgLoss=3.52196, Acc=0.01823, AvgAcc=0.01823]1it [01:47, 107.11s/it, lr=6.75e-05, Loss=3.52196, AvgLoss=3.52196, Acc=0.01823, AvgAcc=0.01823]1it [02:09, 107.11s/it, lr=6.75e-05, Loss=3.58797, AvgLoss=3.55497, Acc=0.00000, AvgAcc=0.00911]2it [02:09, 57.00s/it, lr=6.75e-05, Loss=3.58797, AvgLoss=3.55497, Acc=0.00000, AvgAcc=0.00911] 2it [02:18, 57.00s/it, lr=6.75e-05, Loss=3.62349, AvgLoss=3.57781, Acc=0.00391, AvgAcc=0.00738]3it [02:18, 35.25s/it, lr=6.75e-05, Loss=3.62349, AvgLoss=3.57781, Acc=0.00391, AvgAcc=0.00738]3it [02:47, 35.25s/it, lr=6.75e-05, Loss=3.52194, AvgLoss=3.56384, Acc=0.01823, AvgAcc=0.01009]4it [02:47, 32.88s/it, lr=6.75e-05, Loss=3.52194, AvgLoss=3.56384, Acc=0.01823, AvgAcc=0.01009]4it [04:18, 32.88s/it, lr=6.75e-05, Loss=3.57623, AvgLoss=3.56632, Acc=0.00000, AvgAcc=0.00807]5it [04:18, 53.76s/it, lr=6.75e-05, Loss=3.57623, AvgLoss=3.56632, Acc=0.00000, AvgAcc=0.00807]5it [04:40, 53.76s/it, lr=6.75e-05, Loss=3.63457, AvgLoss=3.57769, Acc=0.00260, AvgAcc=0.00716]6it [04:40, 42.95s/it, lr=6.75e-05, Loss=3.63457, AvgLoss=3.57769, Acc=0.00260, AvgAcc=0.00716]6it [04:40, 42.95s/it, lr=6.75e-05, Loss=3.52272, AvgLoss=3.56984, Acc=0.01562, AvgAcc=0.00837]7it [04:40, 29.03s/it, lr=6.75e-05, Loss=3.52272, AvgLoss=3.56984, Acc=0.01562, AvgAcc=0.00837]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-22 23:52:54,341] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-22 23:53:04,942] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
7it [06:07, 29.03s/it, lr=6.75e-05, Loss=3.57977, AvgLoss=3.57108, Acc=0.00000, AvgAcc=0.00732]8it [06:07, 47.54s/it, lr=6.75e-05, Loss=3.57977, AvgLoss=3.57108, Acc=0.00000, AvgAcc=0.00732]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-22 23:54:25,418] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
8it [06:53, 47.54s/it, lr=6.75e-05, Loss=3.61716, AvgLoss=3.57620, Acc=0.00260, AvgAcc=0.00680]9it [06:53, 46.87s/it, lr=6.75e-05, Loss=3.61716, AvgLoss=3.57620, Acc=0.00260, AvgAcc=0.00680]9it [06:53, 46.87s/it, lr=6.75e-05, Loss=3.52103, AvgLoss=3.57068, Acc=0.02344, AvgAcc=0.00846]10it [06:53, 32.52s/it, lr=6.75e-05, Loss=3.52103, AvgLoss=3.57068, Acc=0.02344, AvgAcc=0.00846]10it [08:14, 32.52s/it, lr=6.75e-05, Loss=3.57560, AvgLoss=3.57113, Acc=0.00000, AvgAcc=0.00769]11it [08:14, 47.14s/it, lr=6.75e-05, Loss=3.57560, AvgLoss=3.57113, Acc=0.00000, AvgAcc=0.00769]11it [09:04, 47.14s/it, lr=6.75e-05, Loss=3.62048, AvgLoss=3.57524, Acc=0.00391, AvgAcc=0.00738]12it [09:04, 48.13s/it, lr=6.75e-05, Loss=3.62048, AvgLoss=3.57524, Acc=0.00391, AvgAcc=0.00738]12it [09:04, 48.13s/it, lr=6.75e-05, Loss=3.50395, AvgLoss=3.56976, Acc=0.03906, AvgAcc=0.00982]13it [09:04, 33.65s/it, lr=6.75e-05, Loss=3.50395, AvgLoss=3.56976, Acc=0.03906, AvgAcc=0.00982]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-22 23:57:13,764] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-22 23:57:54,774] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
13it [10:20, 33.65s/it, lr=6.75e-05, Loss=3.57405, AvgLoss=3.57007, Acc=0.00000, AvgAcc=0.00911]14it [10:20, 46.31s/it, lr=6.75e-05, Loss=3.57405, AvgLoss=3.57007, Acc=0.00000, AvgAcc=0.00911]14it [11:20, 46.31s/it, lr=6.75e-05, Loss=3.61659, AvgLoss=3.57317, Acc=0.00130, AvgAcc=0.00859]15it [11:20, 50.50s/it, lr=6.75e-05, Loss=3.61659, AvgLoss=3.57317, Acc=0.00130, AvgAcc=0.00859]15it [11:20, 50.50s/it, lr=6.75e-05, Loss=3.50736, AvgLoss=3.56905, Acc=0.02083, AvgAcc=0.00936]16it [11:20, 35.39s/it, lr=6.75e-05, Loss=3.50736, AvgLoss=3.56905, Acc=0.02083, AvgAcc=0.00936]16it [12:14, 35.39s/it, lr=6.75e-05, Loss=3.56362, AvgLoss=3.56873, Acc=0.00000, AvgAcc=0.00881]17it [12:14, 40.96s/it, lr=6.75e-05, Loss=3.56362, AvgLoss=3.56873, Acc=0.00000, AvgAcc=0.00881]17it [13:28, 40.96s/it, lr=6.75e-05, Loss=3.59989, AvgLoss=3.57047, Acc=0.00130, AvgAcc=0.00839]18it [13:28, 50.91s/it, lr=6.75e-05, Loss=3.59989, AvgLoss=3.57047, Acc=0.00130, AvgAcc=0.00839]18it [13:29, 50.91s/it, lr=6.75e-05, Loss=3.50605, AvgLoss=3.56708, Acc=0.02474, AvgAcc=0.00925]19it [13:29, 35.74s/it, lr=6.75e-05, Loss=3.50605, AvgLoss=3.56708, Acc=0.02474, AvgAcc=0.00925]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:01:44,491] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
19it [14:01, 35.74s/it, lr=6.75e-05, Loss=3.55414, AvgLoss=3.56643, Acc=0.00000, AvgAcc=0.00879]20it [14:01, 34.72s/it, lr=6.75e-05, Loss=3.55414, AvgLoss=3.56643, Acc=0.00000, AvgAcc=0.00879]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:02:32,761] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
20it [15:17, 34.72s/it, lr=6.75e-05, Loss=3.59224, AvgLoss=3.56766, Acc=0.00130, AvgAcc=0.00843]21it [15:17, 46.99s/it, lr=6.75e-05, Loss=3.59224, AvgLoss=3.56766, Acc=0.00130, AvgAcc=0.00843]21it [15:17, 46.99s/it, lr=6.75e-05, Loss=3.50281, AvgLoss=3.56471, Acc=0.02995, AvgAcc=0.00941]22it [15:17, 33.07s/it, lr=6.75e-05, Loss=3.50281, AvgLoss=3.56471, Acc=0.02995, AvgAcc=0.00941]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:03:37,683] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
22it [16:09, 33.07s/it, lr=6.75e-05, Loss=3.54522, AvgLoss=3.56386, Acc=0.00000, AvgAcc=0.00900]23it [16:09, 38.61s/it, lr=6.75e-05, Loss=3.54522, AvgLoss=3.56386, Acc=0.00000, AvgAcc=0.00900]23it [17:08, 38.61s/it, lr=6.75e-05, Loss=3.57292, AvgLoss=3.56424, Acc=0.00391, AvgAcc=0.00879]24it [17:08, 44.93s/it, lr=6.75e-05, Loss=3.57292, AvgLoss=3.56424, Acc=0.00391, AvgAcc=0.00879]24it [17:09, 44.93s/it, lr=6.75e-05, Loss=3.49946, AvgLoss=3.56165, Acc=0.04557, AvgAcc=0.01026]25it [17:09, 31.56s/it, lr=6.75e-05, Loss=3.49946, AvgLoss=3.56165, Acc=0.04557, AvgAcc=0.01026]25it [18:03, 31.56s/it, lr=6.75e-05, Loss=3.53900, AvgLoss=3.56078, Acc=0.00000, AvgAcc=0.00987]26it [18:03, 38.41s/it, lr=6.75e-05, Loss=3.53900, AvgLoss=3.56078, Acc=0.00000, AvgAcc=0.00987]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:06:10,796] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:06:41,817] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
26it [19:11, 38.41s/it, lr=6.75e-05, Loss=3.56815, AvgLoss=3.56105, Acc=0.00391, AvgAcc=0.00965]27it [19:11, 47.08s/it, lr=6.75e-05, Loss=3.56815, AvgLoss=3.56105, Acc=0.00391, AvgAcc=0.00965]27it [19:11, 47.08s/it, lr=6.75e-05, Loss=3.49919, AvgLoss=3.55884, Acc=0.04818, AvgAcc=0.01102]28it [19:11, 33.06s/it, lr=6.75e-05, Loss=3.49919, AvgLoss=3.55884, Acc=0.04818, AvgAcc=0.01102]28it [19:43, 33.06s/it, lr=6.75e-05, Loss=3.53155, AvgLoss=3.55790, Acc=0.00000, AvgAcc=0.01064]29it [19:43, 32.78s/it, lr=6.75e-05, Loss=3.53155, AvgLoss=3.55790, Acc=0.00000, AvgAcc=0.01064]29it [21:32, 32.78s/it, lr=6.75e-05, Loss=3.56002, AvgLoss=3.55797, Acc=0.00651, AvgAcc=0.01050]30it [21:32, 55.79s/it, lr=6.75e-05, Loss=3.56002, AvgLoss=3.55797, Acc=0.00651, AvgAcc=0.01050]30it [21:33, 55.79s/it, lr=6.75e-05, Loss=3.49291, AvgLoss=3.55587, Acc=0.04297, AvgAcc=0.01155]31it [21:33, 39.15s/it, lr=6.75e-05, Loss=3.49291, AvgLoss=3.55587, Acc=0.04297, AvgAcc=0.01155]31it [21:33, 39.15s/it, lr=6.75e-05, Loss=3.52031, AvgLoss=3.55476, Acc=0.00130, AvgAcc=0.01123]32it [21:33, 27.50s/it, lr=6.75e-05, Loss=3.52031, AvgLoss=3.55476, Acc=0.00130, AvgAcc=0.01123]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:10:35,268] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:11:25,034] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
32it [23:26, 27.50s/it, lr=6.75e-05, Loss=3.56585, AvgLoss=3.55510, Acc=0.00651, AvgAcc=0.01109]33it [23:26, 53.19s/it, lr=6.75e-05, Loss=3.56585, AvgLoss=3.55510, Acc=0.00651, AvgAcc=0.01109]33it [23:27, 53.19s/it, lr=6.75e-05, Loss=3.47125, AvgLoss=3.55263, Acc=0.06510, AvgAcc=0.01268]34it [23:27, 37.36s/it, lr=6.75e-05, Loss=3.47125, AvgLoss=3.55263, Acc=0.06510, AvgAcc=0.01268]34it [23:41, 37.36s/it, lr=6.75e-05, Loss=3.51492, AvgLoss=3.55155, Acc=0.00260, AvgAcc=0.01239]35it [23:41, 30.44s/it, lr=6.75e-05, Loss=3.51492, AvgLoss=3.55155, Acc=0.00260, AvgAcc=0.01239]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:12:35,428] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
35it [25:28, 30.44s/it, lr=6.75e-05, Loss=3.52776, AvgLoss=3.55089, Acc=0.00781, AvgAcc=0.01226]36it [25:28, 53.45s/it, lr=6.75e-05, Loss=3.52776, AvgLoss=3.55089, Acc=0.00781, AvgAcc=0.01226]36it [25:28, 53.45s/it, lr=6.75e-05, Loss=3.48250, AvgLoss=3.54904, Acc=0.06380, AvgAcc=0.01365]37it [25:28, 37.52s/it, lr=6.75e-05, Loss=3.48250, AvgLoss=3.54904, Acc=0.06380, AvgAcc=0.01365]37it [25:29, 37.52s/it, lr=6.75e-05, Loss=3.50089, AvgLoss=3.54778, Acc=0.00000, AvgAcc=0.01329]38it [25:29, 26.35s/it, lr=6.75e-05, Loss=3.50089, AvgLoss=3.54778, Acc=0.00000, AvgAcc=0.01329]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:15:04,711] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
38it [27:34, 26.35s/it, lr=6.75e-05, Loss=3.54158, AvgLoss=3.54762, Acc=0.00911, AvgAcc=0.01319]39it [27:34, 56.01s/it, lr=6.75e-05, Loss=3.54158, AvgLoss=3.54762, Acc=0.00911, AvgAcc=0.01319]39it [27:34, 56.01s/it, lr=6.75e-05, Loss=3.45908, AvgLoss=3.54540, Acc=0.08203, AvgAcc=0.01491]40it [27:34, 39.30s/it, lr=6.75e-05, Loss=3.45908, AvgLoss=3.54540, Acc=0.08203, AvgAcc=0.01491]40it [27:35, 39.30s/it, lr=6.75e-05, Loss=3.49699, AvgLoss=3.54422, Acc=0.00000, AvgAcc=0.01455]41it [27:35, 27.60s/it, lr=6.75e-05, Loss=3.49699, AvgLoss=3.54422, Acc=0.00000, AvgAcc=0.01455]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:15:44,118] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
41it [29:43, 27.60s/it, lr=6.75e-05, Loss=3.50698, AvgLoss=3.54334, Acc=0.00651, AvgAcc=0.01435]42it [29:43, 57.97s/it, lr=6.75e-05, Loss=3.50698, AvgLoss=3.54334, Acc=0.00651, AvgAcc=0.01435]42it [29:44, 57.97s/it, lr=6.75e-05, Loss=3.47231, AvgLoss=3.54168, Acc=0.07682, AvgAcc=0.01581]43it [29:44, 40.68s/it, lr=6.75e-05, Loss=3.47231, AvgLoss=3.54168, Acc=0.07682, AvgAcc=0.01581]43it [29:44, 40.68s/it, lr=6.75e-05, Loss=3.48364, AvgLoss=3.54037, Acc=0.00260, AvgAcc=0.01551]44it [29:44, 28.58s/it, lr=6.75e-05, Loss=3.48364, AvgLoss=3.54037, Acc=0.00260, AvgAcc=0.01551]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:19:28,509] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
44it [31:48, 28.58s/it, lr=6.75e-05, Loss=3.49543, AvgLoss=3.53937, Acc=0.01172, AvgAcc=0.01542]45it [31:48, 57.08s/it, lr=6.75e-05, Loss=3.49543, AvgLoss=3.53937, Acc=0.01172, AvgAcc=0.01542]45it [31:48, 57.08s/it, lr=6.75e-05, Loss=3.44920, AvgLoss=3.53741, Acc=0.08724, AvgAcc=0.01698]46it [31:48, 40.08s/it, lr=6.75e-05, Loss=3.44920, AvgLoss=3.53741, Acc=0.08724, AvgAcc=0.01698]46it [31:48, 40.08s/it, lr=6.75e-05, Loss=3.46018, AvgLoss=3.53576, Acc=0.00521, AvgAcc=0.01673]47it [31:48, 28.16s/it, lr=6.75e-05, Loss=3.46018, AvgLoss=3.53576, Acc=0.00521, AvgAcc=0.01673]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:20:09,235] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
47it [33:52, 28.16s/it, lr=6.75e-05, Loss=3.47304, AvgLoss=3.53446, Acc=0.00911, AvgAcc=0.01657]48it [33:52, 56.90s/it, lr=6.75e-05, Loss=3.47304, AvgLoss=3.53446, Acc=0.00911, AvgAcc=0.01657]48it [33:53, 56.90s/it, lr=6.75e-05, Loss=3.45960, AvgLoss=3.53293, Acc=0.07161, AvgAcc=0.01770]49it [33:53, 39.93s/it, lr=6.75e-05, Loss=3.45960, AvgLoss=3.53293, Acc=0.07161, AvgAcc=0.01770]49it [33:53, 39.93s/it, lr=6.75e-05, Loss=3.46273, AvgLoss=3.53153, Acc=0.00391, AvgAcc=0.01742]50it [33:53, 28.05s/it, lr=6.75e-05, Loss=3.46273, AvgLoss=3.53153, Acc=0.00391, AvgAcc=0.01742]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:22:34,990] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:23:33,301] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
50it [35:58, 28.05s/it, lr=6.75e-05, Loss=3.47200, AvgLoss=3.53036, Acc=0.00911, AvgAcc=0.01726]51it [35:58, 57.06s/it, lr=6.75e-05, Loss=3.47200, AvgLoss=3.53036, Acc=0.00911, AvgAcc=0.01726]51it [35:58, 57.06s/it, lr=6.75e-05, Loss=3.45963, AvgLoss=3.52900, Acc=0.11719, AvgAcc=0.01918]52it [35:58, 40.05s/it, lr=6.75e-05, Loss=3.45963, AvgLoss=3.52900, Acc=0.11719, AvgAcc=0.01918]52it [35:59, 40.05s/it, lr=6.75e-05, Loss=3.44025, AvgLoss=3.52732, Acc=0.00391, AvgAcc=0.01889]53it [35:59, 28.14s/it, lr=6.75e-05, Loss=3.44025, AvgLoss=3.52732, Acc=0.00391, AvgAcc=0.01889]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:24:38,369] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
53it [37:57, 28.14s/it, lr=6.75e-05, Loss=3.45293, AvgLoss=3.52595, Acc=0.00651, AvgAcc=0.01866]54it [37:57, 55.17s/it, lr=6.75e-05, Loss=3.45293, AvgLoss=3.52595, Acc=0.00651, AvgAcc=0.01866]54it [37:57, 55.17s/it, lr=6.75e-05, Loss=3.45512, AvgLoss=3.52466, Acc=0.11979, AvgAcc=0.02050]55it [37:57, 38.71s/it, lr=6.75e-05, Loss=3.45512, AvgLoss=3.52466, Acc=0.11979, AvgAcc=0.02050]55it [37:57, 38.71s/it, lr=6.75e-05, Loss=3.44349, AvgLoss=3.52321, Acc=0.00521, AvgAcc=0.02023]56it [37:57, 27.18s/it, lr=6.75e-05, Loss=3.44349, AvgLoss=3.52321, Acc=0.00521, AvgAcc=0.02023]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:27:45,702] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
56it [40:01, 27.18s/it, lr=6.75e-05, Loss=3.45271, AvgLoss=3.52197, Acc=0.01172, AvgAcc=0.02008]57it [40:01, 56.18s/it, lr=6.75e-05, Loss=3.45271, AvgLoss=3.52197, Acc=0.01172, AvgAcc=0.02008]57it [40:01, 56.18s/it, lr=6.75e-05, Loss=3.43670, AvgLoss=3.52050, Acc=0.13021, AvgAcc=0.02198]58it [40:01, 39.41s/it, lr=6.75e-05, Loss=3.43670, AvgLoss=3.52050, Acc=0.13021, AvgAcc=0.02198]58it [40:02, 39.41s/it, lr=6.75e-05, Loss=3.41918, AvgLoss=3.51878, Acc=0.00521, AvgAcc=0.02169]59it [40:02, 27.68s/it, lr=6.75e-05, Loss=3.41918, AvgLoss=3.51878, Acc=0.00521, AvgAcc=0.02169]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:29:09,167] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
59it [41:59, 27.68s/it, lr=6.75e-05, Loss=3.41700, AvgLoss=3.51709, Acc=0.01042, AvgAcc=0.02151]60it [41:59, 54.44s/it, lr=6.75e-05, Loss=3.41700, AvgLoss=3.51709, Acc=0.01042, AvgAcc=0.02151]60it [41:59, 54.44s/it, lr=6.75e-05, Loss=3.43526, AvgLoss=3.51575, Acc=0.15625, AvgAcc=0.02371]61it [41:59, 38.21s/it, lr=6.75e-05, Loss=3.43526, AvgLoss=3.51575, Acc=0.15625, AvgAcc=0.02371]61it [41:59, 38.21s/it, lr=6.75e-05, Loss=3.42432, AvgLoss=3.51427, Acc=0.01172, AvgAcc=0.02352]62it [41:59, 26.86s/it, lr=6.75e-05, Loss=3.42432, AvgLoss=3.51427, Acc=0.01172, AvgAcc=0.02352]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:32:11,140] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
62it [44:09, 26.86s/it, lr=6.75e-05, Loss=3.42993, AvgLoss=3.51293, Acc=0.01172, AvgAcc=0.02333]63it [44:09, 57.74s/it, lr=6.75e-05, Loss=3.42993, AvgLoss=3.51293, Acc=0.01172, AvgAcc=0.02333]63it [44:09, 57.74s/it, lr=6.75e-05, Loss=3.41670, AvgLoss=3.51143, Acc=0.16406, AvgAcc=0.02553]64it [44:09, 40.52s/it, lr=6.75e-05, Loss=3.41670, AvgLoss=3.51143, Acc=0.16406, AvgAcc=0.02553]64it [44:10, 40.52s/it, lr=6.75e-05, Loss=3.39553, AvgLoss=3.50965, Acc=0.01042, AvgAcc=0.02530]65it [44:10, 28.45s/it, lr=6.75e-05, Loss=3.39553, AvgLoss=3.50965, Acc=0.01042, AvgAcc=0.02530]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:32:21,650] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:33:28,272] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
65it [46:00, 28.45s/it, lr=6.75e-05, Loss=3.39843, AvgLoss=3.50796, Acc=0.00781, AvgAcc=0.02504]66it [46:00, 53.10s/it, lr=6.75e-05, Loss=3.39843, AvgLoss=3.50796, Acc=0.00781, AvgAcc=0.02504]66it [46:01, 53.10s/it, lr=6.75e-05, Loss=3.42317, AvgLoss=3.50670, Acc=0.15885, AvgAcc=0.02703]67it [46:01, 37.28s/it, lr=6.75e-05, Loss=3.42317, AvgLoss=3.50670, Acc=0.15885, AvgAcc=0.02703]67it [46:01, 37.28s/it, lr=6.75e-05, Loss=3.39164, AvgLoss=3.50500, Acc=0.01042, AvgAcc=0.02679]68it [46:01, 26.22s/it, lr=6.75e-05, Loss=3.39164, AvgLoss=3.50500, Acc=0.01042, AvgAcc=0.02679]68it [48:06, 26.22s/it, lr=6.75e-05, Loss=3.40126, AvgLoss=3.50350, Acc=0.00651, AvgAcc=0.02649]69it [48:06, 55.74s/it, lr=6.75e-05, Loss=3.40126, AvgLoss=3.50350, Acc=0.00651, AvgAcc=0.02649]69it [48:06, 55.74s/it, lr=6.75e-05, Loss=3.42642, AvgLoss=3.50240, Acc=0.19401, AvgAcc=0.02889]70it [48:06, 39.12s/it, lr=6.75e-05, Loss=3.42642, AvgLoss=3.50240, Acc=0.19401, AvgAcc=0.02889]70it [48:06, 39.12s/it, lr=6.75e-05, Loss=3.37221, AvgLoss=3.50057, Acc=0.01953, AvgAcc=0.02876]71it [48:06, 27.47s/it, lr=6.75e-05, Loss=3.37221, AvgLoss=3.50057, Acc=0.01953, AvgAcc=0.02876]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:36:50,467] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:38:00,124] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
71it [49:58, 27.47s/it, lr=6.75e-05, Loss=3.37063, AvgLoss=3.49876, Acc=0.00521, AvgAcc=0.02843]72it [49:58, 52.77s/it, lr=6.75e-05, Loss=3.37063, AvgLoss=3.49876, Acc=0.00521, AvgAcc=0.02843]72it [49:59, 52.77s/it, lr=6.75e-05, Loss=3.41179, AvgLoss=3.49757, Acc=0.19792, AvgAcc=0.03075]73it [49:59, 37.03s/it, lr=6.75e-05, Loss=3.41179, AvgLoss=3.49757, Acc=0.19792, AvgAcc=0.03075]73it [49:59, 37.03s/it, lr=6.75e-05, Loss=3.38621, AvgLoss=3.49606, Acc=0.01172, AvgAcc=0.03049]74it [49:59, 26.03s/it, lr=6.75e-05, Loss=3.38621, AvgLoss=3.49606, Acc=0.01172, AvgAcc=0.03049]74it [51:54, 26.03s/it, lr=6.75e-05, Loss=3.37052, AvgLoss=3.49439, Acc=0.00911, AvgAcc=0.03021]75it [51:54, 52.91s/it, lr=6.75e-05, Loss=3.37052, AvgLoss=3.49439, Acc=0.00911, AvgAcc=0.03021]75it [51:55, 52.91s/it, lr=6.75e-05, Loss=3.37622, AvgLoss=3.49284, Acc=0.24089, AvgAcc=0.03298]76it [51:55, 37.14s/it, lr=6.75e-05, Loss=3.37622, AvgLoss=3.49284, Acc=0.24089, AvgAcc=0.03298]76it [51:55, 37.14s/it, lr=6.75e-05, Loss=3.35614, AvgLoss=3.49106, Acc=0.03776, AvgAcc=0.03304]77it [51:55, 26.09s/it, lr=6.75e-05, Loss=3.35614, AvgLoss=3.49106, Acc=0.03776, AvgAcc=0.03304]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:40:45,177] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:41:16,237] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
77it [54:00, 26.09s/it, lr=6.75e-05, Loss=3.33970, AvgLoss=3.48912, Acc=0.01693, AvgAcc=0.03284]78it [54:00, 55.62s/it, lr=6.75e-05, Loss=3.33970, AvgLoss=3.48912, Acc=0.01693, AvgAcc=0.03284]78it [54:00, 55.62s/it, lr=6.75e-05, Loss=3.38450, AvgLoss=3.48780, Acc=0.21745, AvgAcc=0.03517]79it [54:00, 39.03s/it, lr=6.75e-05, Loss=3.38450, AvgLoss=3.48780, Acc=0.21745, AvgAcc=0.03517]79it [54:00, 39.03s/it, lr=6.75e-05, Loss=3.35607, AvgLoss=3.48615, Acc=0.02214, AvgAcc=0.03501]80it [54:00, 27.42s/it, lr=6.75e-05, Loss=3.35607, AvgLoss=3.48615, Acc=0.02214, AvgAcc=0.03501]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:42:29,367] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
80it [56:07, 27.42s/it, lr=6.75e-05, Loss=3.32943, AvgLoss=3.48421, Acc=0.01823, AvgAcc=0.03480]81it [56:07, 57.10s/it, lr=6.75e-05, Loss=3.32943, AvgLoss=3.48421, Acc=0.01823, AvgAcc=0.03480]81it [56:07, 57.10s/it, lr=6.75e-05, Loss=3.39266, AvgLoss=3.48310, Acc=0.20573, AvgAcc=0.03689]82it [56:07, 40.06s/it, lr=6.75e-05, Loss=3.39266, AvgLoss=3.48310, Acc=0.20573, AvgAcc=0.03689]82it [56:07, 40.06s/it, lr=6.75e-05, Loss=3.32217, AvgLoss=3.48116, Acc=0.02865, AvgAcc=0.03679]83it [56:07, 28.16s/it, lr=6.75e-05, Loss=3.32217, AvgLoss=3.48116, Acc=0.02865, AvgAcc=0.03679]83it [57:56, 28.16s/it, lr=6.75e-05, Loss=3.30480, AvgLoss=3.47906, Acc=0.01953, AvgAcc=0.03658]84it [57:56, 52.41s/it, lr=6.75e-05, Loss=3.30480, AvgLoss=3.47906, Acc=0.01953, AvgAcc=0.03658]84it [57:57, 52.41s/it, lr=6.75e-05, Loss=3.37994, AvgLoss=3.47789, Acc=0.25651, AvgAcc=0.03917]85it [57:57, 36.78s/it, lr=6.75e-05, Loss=3.37994, AvgLoss=3.47789, Acc=0.25651, AvgAcc=0.03917]85it [57:57, 36.78s/it, lr=6.75e-05, Loss=3.32634, AvgLoss=3.47613, Acc=0.03385, AvgAcc=0.03911]86it [57:57, 25.84s/it, lr=6.75e-05, Loss=3.32634, AvgLoss=3.47613, Acc=0.03385, AvgAcc=0.03911]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:46:08,447] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:46:44,672] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
86it [59:52, 25.84s/it, lr=6.75e-05, Loss=3.30723, AvgLoss=3.47419, Acc=0.01432, AvgAcc=0.03882]87it [59:52, 52.45s/it, lr=6.75e-05, Loss=3.30723, AvgLoss=3.47419, Acc=0.01432, AvgAcc=0.03882]87it [59:52, 52.45s/it, lr=6.75e-05, Loss=3.35273, AvgLoss=3.47281, Acc=0.27083, AvgAcc=0.04146]88it [59:52, 36.81s/it, lr=6.75e-05, Loss=3.35273, AvgLoss=3.47281, Acc=0.27083, AvgAcc=0.04146]88it [59:52, 36.81s/it, lr=6.75e-05, Loss=3.29830, AvgLoss=3.47085, Acc=0.04557, AvgAcc=0.04151]89it [59:52, 25.86s/it, lr=6.75e-05, Loss=3.29830, AvgLoss=3.47085, Acc=0.04557, AvgAcc=0.04151]89it [1:01:51, 25.86s/it, lr=6.75e-05, Loss=3.29129, AvgLoss=3.46885, Acc=0.02604, AvgAcc=0.04133]90it [1:01:51, 53.81s/it, lr=6.75e-05, Loss=3.29129, AvgLoss=3.46885, Acc=0.02604, AvgAcc=0.04133]90it [1:01:52, 53.81s/it, lr=6.75e-05, Loss=3.37073, AvgLoss=3.46778, Acc=0.23568, AvgAcc=0.04347]91it [1:01:52, 37.78s/it, lr=6.75e-05, Loss=3.37073, AvgLoss=3.46778, Acc=0.23568, AvgAcc=0.04347]91it [1:01:52, 37.78s/it, lr=6.75e-05, Loss=3.31037, AvgLoss=3.46606, Acc=0.02995, AvgAcc=0.04332]92it [1:01:52, 26.55s/it, lr=6.75e-05, Loss=3.31037, AvgLoss=3.46606, Acc=0.02995, AvgAcc=0.04332]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:50:07,449] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:50:30,206] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:51:12,769] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
92it [1:04:05, 26.55s/it, lr=6.75e-05, Loss=3.28221, AvgLoss=3.46409, Acc=0.02865, AvgAcc=0.04316]93it [1:04:05, 58.37s/it, lr=6.75e-05, Loss=3.28221, AvgLoss=3.46409, Acc=0.02865, AvgAcc=0.04316]93it [1:04:05, 58.37s/it, lr=6.75e-05, Loss=3.34000, AvgLoss=3.46277, Acc=0.28385, AvgAcc=0.04573]94it [1:04:05, 40.96s/it, lr=6.75e-05, Loss=3.34000, AvgLoss=3.46277, Acc=0.28385, AvgAcc=0.04573]94it [1:04:05, 40.96s/it, lr=6.75e-05, Loss=3.28535, AvgLoss=3.46090, Acc=0.02604, AvgAcc=0.04552]95it [1:04:05, 28.76s/it, lr=6.75e-05, Loss=3.28535, AvgLoss=3.46090, Acc=0.02604, AvgAcc=0.04552]95it [1:05:56, 28.76s/it, lr=6.75e-05, Loss=3.26844, AvgLoss=3.45889, Acc=0.03646, AvgAcc=0.04542]96it [1:05:56, 53.30s/it, lr=6.75e-05, Loss=3.26844, AvgLoss=3.45889, Acc=0.03646, AvgAcc=0.04542]96it [1:05:56, 53.30s/it, lr=6.75e-05, Loss=3.34153, AvgLoss=3.45768, Acc=0.28516, AvgAcc=0.04790]97it [1:05:56, 37.40s/it, lr=6.75e-05, Loss=3.34153, AvgLoss=3.45768, Acc=0.28516, AvgAcc=0.04790]97it [1:05:56, 37.40s/it, lr=6.75e-05, Loss=3.27009, AvgLoss=3.45577, Acc=0.05208, AvgAcc=0.04794]98it [1:05:56, 26.27s/it, lr=6.75e-05, Loss=3.27009, AvgLoss=3.45577, Acc=0.05208, AvgAcc=0.04794]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:55:21,107] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:55:36,802] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
98it [1:07:48, 26.27s/it, lr=6.75e-05, Loss=3.25491, AvgLoss=3.45374, Acc=0.04557, AvgAcc=0.04791]99it [1:07:48, 52.01s/it, lr=6.75e-05, Loss=3.25491, AvgLoss=3.45374, Acc=0.04557, AvgAcc=0.04791]99it [1:07:49, 52.01s/it, lr=6.75e-05, Loss=3.35716, AvgLoss=3.45278, Acc=0.26042, AvgAcc=0.05004]100it [1:07:49, 36.50s/it, lr=6.75e-05, Loss=3.35716, AvgLoss=3.45278, Acc=0.26042, AvgAcc=0.05004]100it [1:07:49, 36.50s/it, lr=6.75e-05, Loss=3.26297, AvgLoss=3.45090, Acc=0.03516, AvgAcc=0.04989]101it [1:07:49, 25.66s/it, lr=6.75e-05, Loss=3.26297, AvgLoss=3.45090, Acc=0.03516, AvgAcc=0.04989]101it [1:09:49, 25.66s/it, lr=6.75e-05, Loss=3.23461, AvgLoss=3.44878, Acc=0.02995, AvgAcc=0.04970]102it [1:09:49, 53.87s/it, lr=6.75e-05, Loss=3.23461, AvgLoss=3.44878, Acc=0.02995, AvgAcc=0.04970]102it [1:09:49, 53.87s/it, lr=6.75e-05, Loss=3.34477, AvgLoss=3.44777, Acc=0.27865, AvgAcc=0.05192]103it [1:09:49, 37.82s/it, lr=6.75e-05, Loss=3.34477, AvgLoss=3.44777, Acc=0.27865, AvgAcc=0.05192]103it [1:09:50, 37.82s/it, lr=6.75e-05, Loss=3.26215, AvgLoss=3.44598, Acc=0.04297, AvgAcc=0.05183]104it [1:09:50, 26.59s/it, lr=6.75e-05, Loss=3.26215, AvgLoss=3.44598, Acc=0.04297, AvgAcc=0.05183]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 00:58:47,439] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 00:59:46,890] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 00:59:54,818] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
104it [1:11:52, 26.59s/it, lr=6.75e-05, Loss=3.22365, AvgLoss=3.44386, Acc=0.04688, AvgAcc=0.05179]105it [1:11:52, 55.43s/it, lr=6.75e-05, Loss=3.22365, AvgLoss=3.44386, Acc=0.04688, AvgAcc=0.05179]105it [1:11:53, 55.43s/it, lr=6.75e-05, Loss=3.33356, AvgLoss=3.44282, Acc=0.28776, AvgAcc=0.05401]106it [1:11:53, 38.89s/it, lr=6.75e-05, Loss=3.33356, AvgLoss=3.44282, Acc=0.28776, AvgAcc=0.05401]106it [1:11:53, 38.89s/it, lr=6.75e-05, Loss=3.23606, AvgLoss=3.44089, Acc=0.04036, AvgAcc=0.05388]107it [1:11:53, 27.32s/it, lr=6.75e-05, Loss=3.23606, AvgLoss=3.44089, Acc=0.04036, AvgAcc=0.05388]107it [1:13:52, 27.32s/it, lr=6.75e-05, Loss=3.22472, AvgLoss=3.43889, Acc=0.04427, AvgAcc=0.05380]108it [1:13:52, 54.72s/it, lr=6.75e-05, Loss=3.22472, AvgLoss=3.43889, Acc=0.04427, AvgAcc=0.05380]108it [1:13:52, 54.72s/it, lr=6.75e-05, Loss=3.32311, AvgLoss=3.43783, Acc=0.28516, AvgAcc=0.05592]109it [1:13:52, 38.40s/it, lr=6.75e-05, Loss=3.32311, AvgLoss=3.43783, Acc=0.28516, AvgAcc=0.05592]109it [1:13:52, 38.40s/it, lr=6.75e-05, Loss=3.23293, AvgLoss=3.43596, Acc=0.04427, AvgAcc=0.05581]110it [1:13:52, 26.97s/it, lr=6.75e-05, Loss=3.23293, AvgLoss=3.43596, Acc=0.04427, AvgAcc=0.05581]110it [1:15:54, 26.97s/it, lr=6.75e-05, Loss=3.20888, AvgLoss=3.43392, Acc=0.04818, AvgAcc=0.05574]111it [1:15:54, 55.30s/it, lr=6.75e-05, Loss=3.20888, AvgLoss=3.43392, Acc=0.04818, AvgAcc=0.05574]111it [1:15:54, 55.30s/it, lr=6.75e-05, Loss=3.30177, AvgLoss=3.43274, Acc=0.30990, AvgAcc=0.05801]112it [1:15:54, 38.80s/it, lr=6.75e-05, Loss=3.30177, AvgLoss=3.43274, Acc=0.30990, AvgAcc=0.05801]112it [1:15:54, 38.80s/it, lr=6.75e-05, Loss=3.20658, AvgLoss=3.43074, Acc=0.02734, AvgAcc=0.05774]113it [1:15:54, 27.25s/it, lr=6.75e-05, Loss=3.20658, AvgLoss=3.43074, Acc=0.02734, AvgAcc=0.05774]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:04:20,353] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:04:24,831] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
113it [1:17:55, 27.25s/it, lr=6.75e-05, Loss=3.19582, AvgLoss=3.42868, Acc=0.05729, AvgAcc=0.05774]114it [1:17:55, 55.26s/it, lr=6.75e-05, Loss=3.19582, AvgLoss=3.42868, Acc=0.05729, AvgAcc=0.05774]114it [1:17:55, 55.26s/it, lr=6.75e-05, Loss=3.31450, AvgLoss=3.42768, Acc=0.31510, AvgAcc=0.05998]115it [1:17:55, 38.77s/it, lr=6.75e-05, Loss=3.31450, AvgLoss=3.42768, Acc=0.31510, AvgAcc=0.05998]115it [1:17:55, 38.77s/it, lr=6.75e-05, Loss=3.21380, AvgLoss=3.42584, Acc=0.03125, AvgAcc=0.05973]116it [1:17:55, 27.23s/it, lr=6.75e-05, Loss=3.21380, AvgLoss=3.42584, Acc=0.03125, AvgAcc=0.05973]116it [1:19:53, 27.23s/it, lr=6.75e-05, Loss=3.18724, AvgLoss=3.42380, Acc=0.06901, AvgAcc=0.05981]117it [1:19:53, 54.41s/it, lr=6.75e-05, Loss=3.18724, AvgLoss=3.42380, Acc=0.06901, AvgAcc=0.05981]117it [1:19:54, 54.41s/it, lr=6.75e-05, Loss=3.30116, AvgLoss=3.42276, Acc=0.30208, AvgAcc=0.06186]118it [1:19:54, 38.20s/it, lr=6.75e-05, Loss=3.30116, AvgLoss=3.42276, Acc=0.30208, AvgAcc=0.06186]118it [1:19:54, 38.20s/it, lr=6.75e-05, Loss=3.18988, AvgLoss=3.42080, Acc=0.02474, AvgAcc=0.06155]119it [1:19:54, 26.84s/it, lr=6.75e-05, Loss=3.18988, AvgLoss=3.42080, Acc=0.02474, AvgAcc=0.06155]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 01:08:24,045] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:08:42,126] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:08:54,410] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
119it [1:22:00, 26.84s/it, lr=6.75e-05, Loss=3.16608, AvgLoss=3.41868, Acc=0.07292, AvgAcc=0.06164]120it [1:22:00, 56.49s/it, lr=6.75e-05, Loss=3.16608, AvgLoss=3.41868, Acc=0.07292, AvgAcc=0.06164]120it [1:22:00, 56.49s/it, lr=6.75e-05, Loss=3.29815, AvgLoss=3.41769, Acc=0.31771, AvgAcc=0.06376]121it [1:22:00, 39.64s/it, lr=6.75e-05, Loss=3.29815, AvgLoss=3.41769, Acc=0.31771, AvgAcc=0.06376]121it [1:22:00, 39.64s/it, lr=6.75e-05, Loss=3.19317, AvgLoss=3.41585, Acc=0.02474, AvgAcc=0.06344]122it [1:22:00, 27.84s/it, lr=6.75e-05, Loss=3.19317, AvgLoss=3.41585, Acc=0.02474, AvgAcc=0.06344]122it [1:24:08, 27.84s/it, lr=6.75e-05, Loss=3.16934, AvgLoss=3.41384, Acc=0.06641, AvgAcc=0.06346]123it [1:24:08, 57.72s/it, lr=6.75e-05, Loss=3.16934, AvgLoss=3.41384, Acc=0.06641, AvgAcc=0.06346]123it [1:24:08, 57.72s/it, lr=6.75e-05, Loss=3.28909, AvgLoss=3.41284, Acc=0.31771, AvgAcc=0.06551]124it [1:24:08, 40.51s/it, lr=6.75e-05, Loss=3.28909, AvgLoss=3.41284, Acc=0.31771, AvgAcc=0.06551]124it [1:24:08, 40.51s/it, lr=6.75e-05, Loss=3.16896, AvgLoss=3.41088, Acc=0.02734, AvgAcc=0.06521]125it [1:24:08, 28.46s/it, lr=6.75e-05, Loss=3.16896, AvgLoss=3.41088, Acc=0.02734, AvgAcc=0.06521]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:13:14,865] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:13:32,420] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
125it [1:26:04, 28.46s/it, lr=6.75e-05, Loss=3.14675, AvgLoss=3.40879, Acc=0.07031, AvgAcc=0.06525]126it [1:26:04, 54.59s/it, lr=6.75e-05, Loss=3.14675, AvgLoss=3.40879, Acc=0.07031, AvgAcc=0.06525]126it [1:26:04, 54.59s/it, lr=6.75e-05, Loss=3.28311, AvgLoss=3.40780, Acc=0.32812, AvgAcc=0.06732]127it [1:26:04, 38.32s/it, lr=6.75e-05, Loss=3.28311, AvgLoss=3.40780, Acc=0.32812, AvgAcc=0.06732]127it [1:26:05, 38.32s/it, lr=6.75e-05, Loss=3.16250, AvgLoss=3.40588, Acc=0.02734, AvgAcc=0.06701]128it [1:26:05, 27.01s/it, lr=6.75e-05, Loss=3.16250, AvgLoss=3.40588, Acc=0.02734, AvgAcc=0.06701]128it [1:28:05, 27.01s/it, lr=6.75e-05, Loss=3.14230, AvgLoss=3.40384, Acc=0.08854, AvgAcc=0.06717]129it [1:28:05, 54.97s/it, lr=6.75e-05, Loss=3.14230, AvgLoss=3.40384, Acc=0.08854, AvgAcc=0.06717]129it [1:28:05, 54.97s/it, lr=6.75e-05, Loss=3.28353, AvgLoss=3.40291, Acc=0.29948, AvgAcc=0.06896]130it [1:28:05, 38.57s/it, lr=6.75e-05, Loss=3.28353, AvgLoss=3.40291, Acc=0.29948, AvgAcc=0.06896]130it [1:28:06, 38.57s/it, lr=6.75e-05, Loss=3.14121, AvgLoss=3.40092, Acc=0.03125, AvgAcc=0.06867]131it [1:28:06, 27.10s/it, lr=6.75e-05, Loss=3.14121, AvgLoss=3.40092, Acc=0.03125, AvgAcc=0.06867]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 01:17:20,801] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:17:39,138] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:18:06,706] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
131it [1:30:09, 27.10s/it, lr=6.75e-05, Loss=3.12992, AvgLoss=3.39886, Acc=0.09375, AvgAcc=0.06886]132it [1:30:09, 55.84s/it, lr=6.75e-05, Loss=3.12992, AvgLoss=3.39886, Acc=0.09375, AvgAcc=0.06886]132it [1:30:09, 55.84s/it, lr=6.75e-05, Loss=3.31012, AvgLoss=3.39820, Acc=0.29167, AvgAcc=0.07054]133it [1:30:09, 39.18s/it, lr=6.75e-05, Loss=3.31012, AvgLoss=3.39820, Acc=0.29167, AvgAcc=0.07054]133it [1:30:09, 39.18s/it, lr=6.75e-05, Loss=3.13338, AvgLoss=3.39622, Acc=0.02083, AvgAcc=0.07017]134it [1:30:09, 27.51s/it, lr=6.75e-05, Loss=3.13338, AvgLoss=3.39622, Acc=0.02083, AvgAcc=0.07017]134it [1:32:07, 27.51s/it, lr=6.75e-05, Loss=3.13347, AvgLoss=3.39427, Acc=0.08594, AvgAcc=0.07028]135it [1:32:07, 54.50s/it, lr=6.75e-05, Loss=3.13347, AvgLoss=3.39427, Acc=0.08594, AvgAcc=0.07028]135it [1:32:07, 54.50s/it, lr=6.75e-05, Loss=3.27795, AvgLoss=3.39342, Acc=0.30078, AvgAcc=0.07198]136it [1:32:07, 38.26s/it, lr=6.75e-05, Loss=3.27795, AvgLoss=3.39342, Acc=0.30078, AvgAcc=0.07198]136it [1:32:07, 38.26s/it, lr=6.75e-05, Loss=3.11112, AvgLoss=3.39136, Acc=0.02214, AvgAcc=0.07161]137it [1:32:07, 26.89s/it, lr=6.75e-05, Loss=3.11112, AvgLoss=3.39136, Acc=0.02214, AvgAcc=0.07161]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:22:02,973] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
137it [1:34:06, 26.89s/it, lr=6.75e-05, Loss=3.10906, AvgLoss=3.38931, Acc=0.11589, AvgAcc=0.07194]138it [1:34:06, 54.34s/it, lr=6.75e-05, Loss=3.10906, AvgLoss=3.38931, Acc=0.11589, AvgAcc=0.07194]138it [1:34:06, 54.34s/it, lr=6.75e-05, Loss=3.27541, AvgLoss=3.38849, Acc=0.31901, AvgAcc=0.07371]139it [1:34:06, 38.14s/it, lr=6.75e-05, Loss=3.27541, AvgLoss=3.38849, Acc=0.31901, AvgAcc=0.07371]139it [1:34:06, 38.14s/it, lr=6.75e-05, Loss=3.11064, AvgLoss=3.38651, Acc=0.03125, AvgAcc=0.07341]140it [1:34:07, 26.80s/it, lr=6.75e-05, Loss=3.11064, AvgLoss=3.38651, Acc=0.03125, AvgAcc=0.07341]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:22:39,277] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
140it [1:36:09, 26.80s/it, lr=6.75e-05, Loss=3.11664, AvgLoss=3.38459, Acc=0.09115, AvgAcc=0.07354]141it [1:36:09, 55.42s/it, lr=6.75e-05, Loss=3.11664, AvgLoss=3.38459, Acc=0.09115, AvgAcc=0.07354]141it [1:36:09, 55.42s/it, lr=6.75e-05, Loss=3.25388, AvgLoss=3.38367, Acc=0.32161, AvgAcc=0.07528]142it [1:36:09, 38.88s/it, lr=6.75e-05, Loss=3.25388, AvgLoss=3.38367, Acc=0.32161, AvgAcc=0.07528]142it [1:36:09, 38.88s/it, lr=6.75e-05, Loss=3.09407, AvgLoss=3.38165, Acc=0.02995, AvgAcc=0.07497]143it [1:36:09, 27.31s/it, lr=6.75e-05, Loss=3.09407, AvgLoss=3.38165, Acc=0.02995, AvgAcc=0.07497]143it [1:38:11, 27.31s/it, lr=6.75e-05, Loss=3.07092, AvgLoss=3.37949, Acc=0.14583, AvgAcc=0.07546]144it [1:38:11, 55.76s/it, lr=6.75e-05, Loss=3.07092, AvgLoss=3.37949, Acc=0.14583, AvgAcc=0.07546]144it [1:38:12, 55.76s/it, lr=6.75e-05, Loss=3.26414, AvgLoss=3.37869, Acc=0.30469, AvgAcc=0.07704]145it [1:38:12, 39.11s/it, lr=6.75e-05, Loss=3.26414, AvgLoss=3.37869, Acc=0.30469, AvgAcc=0.07704]145it [1:38:12, 39.11s/it, lr=6.75e-05, Loss=3.08844, AvgLoss=3.37671, Acc=0.02734, AvgAcc=0.07670]146it [1:38:12, 27.47s/it, lr=6.75e-05, Loss=3.08844, AvgLoss=3.37671, Acc=0.02734, AvgAcc=0.07670]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:26:23,622] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 01:27:05,303] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:27:19,350] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
146it [1:40:04, 27.47s/it, lr=6.75e-05, Loss=3.09254, AvgLoss=3.37477, Acc=0.12630, AvgAcc=0.07704]147it [1:40:04, 52.71s/it, lr=6.75e-05, Loss=3.09254, AvgLoss=3.37477, Acc=0.12630, AvgAcc=0.07704]147it [1:40:04, 52.71s/it, lr=6.75e-05, Loss=3.27434, AvgLoss=3.37409, Acc=0.27865, AvgAcc=0.07840]148it [1:40:04, 36.99s/it, lr=6.75e-05, Loss=3.27434, AvgLoss=3.37409, Acc=0.27865, AvgAcc=0.07840]148it [1:40:04, 36.99s/it, lr=6.75e-05, Loss=3.06215, AvgLoss=3.37200, Acc=0.02474, AvgAcc=0.07804]149it [1:40:04, 25.98s/it, lr=6.75e-05, Loss=3.06215, AvgLoss=3.37200, Acc=0.02474, AvgAcc=0.07804]149it [1:41:59, 25.98s/it, lr=6.75e-05, Loss=3.05192, AvgLoss=3.36987, Acc=0.18490, AvgAcc=0.07875]150it [1:41:59, 52.63s/it, lr=6.75e-05, Loss=3.05192, AvgLoss=3.36987, Acc=0.18490, AvgAcc=0.07875]150it [1:41:59, 52.63s/it, lr=6.75e-05, Loss=3.25404, AvgLoss=3.36910, Acc=0.29167, AvgAcc=0.08016]151it [1:41:59, 36.93s/it, lr=6.75e-05, Loss=3.25404, AvgLoss=3.36910, Acc=0.29167, AvgAcc=0.08016]151it [1:42:00, 36.93s/it, lr=6.75e-05, Loss=3.07032, AvgLoss=3.36713, Acc=0.02083, AvgAcc=0.07977]152it [1:42:00, 25.95s/it, lr=6.75e-05, Loss=3.07032, AvgLoss=3.36713, Acc=0.02083, AvgAcc=0.07977]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:30:48,014] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:31:48,108] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
152it [1:44:05, 25.95s/it, lr=6.75e-05, Loss=3.06930, AvgLoss=3.36519, Acc=0.17708, AvgAcc=0.08041]153it [1:44:05, 55.88s/it, lr=6.75e-05, Loss=3.06930, AvgLoss=3.36519, Acc=0.17708, AvgAcc=0.08041]153it [1:44:06, 55.88s/it, lr=6.75e-05, Loss=3.23529, AvgLoss=3.36434, Acc=0.28255, AvgAcc=0.08172]154it [1:44:06, 39.20s/it, lr=6.75e-05, Loss=3.23529, AvgLoss=3.36434, Acc=0.28255, AvgAcc=0.08172]154it [1:44:06, 39.20s/it, lr=6.75e-05, Loss=3.04196, AvgLoss=3.36226, Acc=0.02214, AvgAcc=0.08133]155it [1:44:06, 27.54s/it, lr=6.75e-05, Loss=3.04196, AvgLoss=3.36226, Acc=0.02214, AvgAcc=0.08133]155it [1:46:10, 27.54s/it, lr=6.75e-05, Loss=3.04004, AvgLoss=3.36020, Acc=0.19010, AvgAcc=0.08203]156it [1:46:10, 56.44s/it, lr=6.75e-05, Loss=3.04004, AvgLoss=3.36020, Acc=0.19010, AvgAcc=0.08203]156it [1:46:10, 56.44s/it, lr=6.75e-05, Loss=3.24702, AvgLoss=3.35948, Acc=0.28646, AvgAcc=0.08333]157it [1:46:10, 39.60s/it, lr=6.75e-05, Loss=3.24702, AvgLoss=3.35948, Acc=0.28646, AvgAcc=0.08333]157it [1:46:10, 39.60s/it, lr=6.75e-05, Loss=3.05076, AvgLoss=3.35752, Acc=0.02474, AvgAcc=0.08296]158it [1:46:10, 27.81s/it, lr=6.75e-05, Loss=3.05076, AvgLoss=3.35752, Acc=0.02474, AvgAcc=0.08296]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:35:06,823] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
158it [1:48:13, 27.81s/it, lr=6.75e-05, Loss=3.04823, AvgLoss=3.35558, Acc=0.19271, AvgAcc=0.08365]159it [1:48:13, 56.10s/it, lr=6.75e-05, Loss=3.04823, AvgLoss=3.35558, Acc=0.19271, AvgAcc=0.08365]159it [1:48:13, 56.10s/it, lr=6.75e-05, Loss=3.26697, AvgLoss=3.35502, Acc=0.27474, AvgAcc=0.08485]160it [1:48:13, 39.37s/it, lr=6.75e-05, Loss=3.26697, AvgLoss=3.35502, Acc=0.27474, AvgAcc=0.08485]160it [1:48:13, 39.37s/it, lr=6.75e-05, Loss=3.02729, AvgLoss=3.35299, Acc=0.02604, AvgAcc=0.08448]161it [1:48:13, 27.67s/it, lr=6.75e-05, Loss=3.02729, AvgLoss=3.35299, Acc=0.02604, AvgAcc=0.08448]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:36:30,575] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 01:36:33,238] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
161it [1:50:08, 27.67s/it, lr=6.75e-05, Loss=3.03279, AvgLoss=3.35101, Acc=0.20443, AvgAcc=0.08522]162it [1:50:08, 53.74s/it, lr=6.75e-05, Loss=3.03279, AvgLoss=3.35101, Acc=0.20443, AvgAcc=0.08522]162it [1:50:08, 53.74s/it, lr=6.75e-05, Loss=3.25267, AvgLoss=3.35041, Acc=0.26562, AvgAcc=0.08633]163it [1:50:08, 37.72s/it, lr=6.75e-05, Loss=3.25267, AvgLoss=3.35041, Acc=0.26562, AvgAcc=0.08633]163it [1:50:08, 37.72s/it, lr=6.75e-05, Loss=3.01490, AvgLoss=3.34836, Acc=0.03776, AvgAcc=0.08603]164it [1:50:08, 26.49s/it, lr=6.75e-05, Loss=3.01490, AvgLoss=3.34836, Acc=0.03776, AvgAcc=0.08603]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:39:29,921] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
164it [1:52:08, 26.49s/it, lr=6.75e-05, Loss=3.02946, AvgLoss=3.34643, Acc=0.19401, AvgAcc=0.08669]165it [1:52:08, 54.27s/it, lr=6.75e-05, Loss=3.02946, AvgLoss=3.34643, Acc=0.19401, AvgAcc=0.08669]165it [1:52:08, 54.27s/it, lr=6.75e-05, Loss=3.25317, AvgLoss=3.34587, Acc=0.26172, AvgAcc=0.08774]166it [1:52:08, 38.09s/it, lr=6.75e-05, Loss=3.25317, AvgLoss=3.34587, Acc=0.26172, AvgAcc=0.08774]166it [1:52:08, 38.09s/it, lr=6.75e-05, Loss=3.00324, AvgLoss=3.34382, Acc=0.02865, AvgAcc=0.08739]167it [1:52:08, 26.77s/it, lr=6.75e-05, Loss=3.00324, AvgLoss=3.34382, Acc=0.02865, AvgAcc=0.08739]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:40:59,709] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
167it [1:54:05, 26.77s/it, lr=6.75e-05, Loss=3.02965, AvgLoss=3.34195, Acc=0.21094, AvgAcc=0.08812]168it [1:54:05, 53.68s/it, lr=6.75e-05, Loss=3.02965, AvgLoss=3.34195, Acc=0.21094, AvgAcc=0.08812]168it [1:54:05, 53.68s/it, lr=6.75e-05, Loss=3.26088, AvgLoss=3.34147, Acc=0.24609, AvgAcc=0.08906]169it [1:54:05, 37.71s/it, lr=6.75e-05, Loss=3.26088, AvgLoss=3.34147, Acc=0.24609, AvgAcc=0.08906]169it [1:54:06, 37.71s/it, lr=6.75e-05, Loss=2.99306, AvgLoss=3.33942, Acc=0.03776, AvgAcc=0.08876]170it [1:54:06, 26.56s/it, lr=6.75e-05, Loss=2.99306, AvgLoss=3.33942, Acc=0.03776, AvgAcc=0.08876]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:43:43,359] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
170it [1:55:59, 26.56s/it, lr=6.75e-05, Loss=3.01540, AvgLoss=3.33752, Acc=0.20964, AvgAcc=0.08946]171it [1:55:59, 52.47s/it, lr=6.75e-05, Loss=3.01540, AvgLoss=3.33752, Acc=0.20964, AvgAcc=0.08946]171it [1:55:59, 52.47s/it, lr=6.75e-05, Loss=3.23991, AvgLoss=3.33696, Acc=0.24870, AvgAcc=0.09039]172it [1:55:59, 36.82s/it, lr=6.75e-05, Loss=3.23991, AvgLoss=3.33696, Acc=0.24870, AvgAcc=0.09039]172it [1:55:59, 36.82s/it, lr=6.75e-05, Loss=2.96736, AvgLoss=3.33482, Acc=0.02604, AvgAcc=0.09002]173it [1:55:59, 25.87s/it, lr=6.75e-05, Loss=2.96736, AvgLoss=3.33482, Acc=0.02604, AvgAcc=0.09002]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 01:45:02,289] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:45:37,632] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
173it [1:58:12, 25.87s/it, lr=6.75e-05, Loss=3.00560, AvgLoss=3.33293, Acc=0.21745, AvgAcc=0.09075]174it [1:58:12, 57.84s/it, lr=6.75e-05, Loss=3.00560, AvgLoss=3.33293, Acc=0.21745, AvgAcc=0.09075]174it [1:58:12, 57.84s/it, lr=6.75e-05, Loss=3.25316, AvgLoss=3.33247, Acc=0.23177, AvgAcc=0.09156]175it [1:58:12, 40.58s/it, lr=6.75e-05, Loss=3.25316, AvgLoss=3.33247, Acc=0.23177, AvgAcc=0.09156]175it [1:58:12, 40.58s/it, lr=6.75e-05, Loss=2.96957, AvgLoss=3.33041, Acc=0.02604, AvgAcc=0.09118]176it [1:58:12, 28.50s/it, lr=6.75e-05, Loss=2.96957, AvgLoss=3.33041, Acc=0.02604, AvgAcc=0.09118]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:48:01,373] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
176it [2:00:00, 28.50s/it, lr=6.75e-05, Loss=3.00320, AvgLoss=3.32856, Acc=0.24479, AvgAcc=0.09205]177it [2:00:00, 52.12s/it, lr=6.75e-05, Loss=3.00320, AvgLoss=3.32856, Acc=0.24479, AvgAcc=0.09205]177it [2:00:00, 52.12s/it, lr=6.75e-05, Loss=3.22559, AvgLoss=3.32798, Acc=0.23438, AvgAcc=0.09285]178it [2:00:00, 36.58s/it, lr=6.75e-05, Loss=3.22559, AvgLoss=3.32798, Acc=0.23438, AvgAcc=0.09285]178it [2:00:00, 36.58s/it, lr=6.75e-05, Loss=2.94897, AvgLoss=3.32586, Acc=0.04036, AvgAcc=0.09256]179it [2:00:00, 25.71s/it, lr=6.75e-05, Loss=2.94897, AvgLoss=3.32586, Acc=0.04036, AvgAcc=0.09256]179it [2:02:05, 25.71s/it, lr=6.75e-05, Loss=2.99910, AvgLoss=3.32405, Acc=0.22526, AvgAcc=0.09329]180it [2:02:05, 55.28s/it, lr=6.75e-05, Loss=2.99910, AvgLoss=3.32405, Acc=0.22526, AvgAcc=0.09329]180it [2:02:05, 55.28s/it, lr=6.75e-05, Loss=3.25831, AvgLoss=3.32369, Acc=0.23958, AvgAcc=0.09410]181it [2:02:05, 38.90s/it, lr=6.75e-05, Loss=3.25831, AvgLoss=3.32369, Acc=0.23958, AvgAcc=0.09410]181it [2:02:06, 38.90s/it, lr=6.75e-05, Loss=2.95309, AvgLoss=3.32165, Acc=0.03255, AvgAcc=0.09376]182it [2:02:06, 27.34s/it, lr=6.75e-05, Loss=2.95309, AvgLoss=3.32165, Acc=0.03255, AvgAcc=0.09376]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:50:14,396] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
182it [2:04:06, 27.34s/it, lr=6.75e-05, Loss=2.99078, AvgLoss=3.31984, Acc=0.25260, AvgAcc=0.09463]183it [2:04:06, 55.38s/it, lr=6.75e-05, Loss=2.99078, AvgLoss=3.31984, Acc=0.25260, AvgAcc=0.09463]183it [2:04:07, 55.38s/it, lr=6.75e-05, Loss=3.22996, AvgLoss=3.31935, Acc=0.21094, AvgAcc=0.09526]184it [2:04:07, 38.87s/it, lr=6.75e-05, Loss=3.22996, AvgLoss=3.31935, Acc=0.21094, AvgAcc=0.09526]184it [2:04:07, 38.87s/it, lr=6.75e-05, Loss=2.92120, AvgLoss=3.31720, Acc=0.03516, AvgAcc=0.09494]185it [2:04:07, 27.30s/it, lr=6.75e-05, Loss=2.92120, AvgLoss=3.31720, Acc=0.03516, AvgAcc=0.09494]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:52:26,906] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
185it [2:05:57, 27.30s/it, lr=6.75e-05, Loss=2.98183, AvgLoss=3.31540, Acc=0.25391, AvgAcc=0.09579]186it [2:05:57, 52.17s/it, lr=6.75e-05, Loss=2.98183, AvgLoss=3.31540, Acc=0.25391, AvgAcc=0.09579]186it [2:05:58, 52.17s/it, lr=6.75e-05, Loss=3.23147, AvgLoss=3.31495, Acc=0.22396, AvgAcc=0.09648]187it [2:05:58, 36.62s/it, lr=6.75e-05, Loss=3.23147, AvgLoss=3.31495, Acc=0.22396, AvgAcc=0.09648]187it [2:05:58, 36.62s/it, lr=6.75e-05, Loss=2.93267, AvgLoss=3.31292, Acc=0.04427, AvgAcc=0.09620]188it [2:05:58, 25.72s/it, lr=6.75e-05, Loss=2.93267, AvgLoss=3.31292, Acc=0.04427, AvgAcc=0.09620]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 01:54:27,500] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:54:51,309] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
188it [2:07:52, 25.72s/it, lr=6.75e-05, Loss=2.95909, AvgLoss=3.31104, Acc=0.28385, AvgAcc=0.09719]189it [2:07:52, 52.16s/it, lr=6.75e-05, Loss=2.95909, AvgLoss=3.31104, Acc=0.28385, AvgAcc=0.09719]189it [2:07:52, 52.16s/it, lr=6.75e-05, Loss=3.25563, AvgLoss=3.31075, Acc=0.18620, AvgAcc=0.09766]190it [2:07:52, 36.63s/it, lr=6.75e-05, Loss=3.25563, AvgLoss=3.31075, Acc=0.18620, AvgAcc=0.09766]190it [2:07:52, 36.63s/it, lr=6.75e-05, Loss=2.90311, AvgLoss=3.30862, Acc=0.04297, AvgAcc=0.09738]191it [2:07:52, 25.73s/it, lr=6.75e-05, Loss=2.90311, AvgLoss=3.30862, Acc=0.04297, AvgAcc=0.09738]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 01:56:38,051] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
191it [2:09:54, 25.73s/it, lr=6.75e-05, Loss=2.94968, AvgLoss=3.30675, Acc=0.28385, AvgAcc=0.09835]192it [2:09:54, 54.42s/it, lr=6.75e-05, Loss=2.94968, AvgLoss=3.30675, Acc=0.28385, AvgAcc=0.09835]192it [2:09:54, 54.42s/it, lr=6.75e-05, Loss=3.25009, AvgLoss=3.30645, Acc=0.17969, AvgAcc=0.09877]193it [2:09:54, 38.19s/it, lr=6.75e-05, Loss=3.25009, AvgLoss=3.30645, Acc=0.17969, AvgAcc=0.09877]193it [2:09:54, 38.19s/it, lr=6.75e-05, Loss=2.89841, AvgLoss=3.30435, Acc=0.04167, AvgAcc=0.09848]194it [2:09:54, 26.83s/it, lr=6.75e-05, Loss=2.89841, AvgLoss=3.30435, Acc=0.04167, AvgAcc=0.09848]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 01:59:08,668] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
194it [2:11:55, 26.83s/it, lr=6.75e-05, Loss=2.92559, AvgLoss=3.30241, Acc=0.32161, AvgAcc=0.09962]195it [2:11:55, 54.82s/it, lr=6.75e-05, Loss=2.92559, AvgLoss=3.30241, Acc=0.32161, AvgAcc=0.09962]195it [2:11:55, 54.82s/it, lr=6.75e-05, Loss=3.21352, AvgLoss=3.30196, Acc=0.19792, AvgAcc=0.10012]196it [2:11:55, 38.47s/it, lr=6.75e-05, Loss=3.21352, AvgLoss=3.30196, Acc=0.19792, AvgAcc=0.10012]196it [2:11:55, 38.47s/it, lr=6.75e-05, Loss=2.88191, AvgLoss=3.29982, Acc=0.03646, AvgAcc=0.09980]197it [2:11:55, 27.03s/it, lr=6.75e-05, Loss=2.88191, AvgLoss=3.29982, Acc=0.03646, AvgAcc=0.09980]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 02:00:49,740] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
197it [2:13:53, 27.03s/it, lr=6.75e-05, Loss=2.93793, AvgLoss=3.29800, Acc=0.28906, AvgAcc=0.10075]198it [2:13:53, 54.16s/it, lr=6.75e-05, Loss=2.93793, AvgLoss=3.29800, Acc=0.28906, AvgAcc=0.10075]198it [2:13:53, 54.16s/it, lr=6.75e-05, Loss=3.19292, AvgLoss=3.29747, Acc=0.20833, AvgAcc=0.10129]199it [2:13:53, 38.01s/it, lr=6.75e-05, Loss=3.19292, AvgLoss=3.29747, Acc=0.20833, AvgAcc=0.10129]199it [2:13:53, 38.01s/it, lr=6.75e-05, Loss=2.87318, AvgLoss=3.29535, Acc=0.05469, AvgAcc=0.10106]200it [2:13:53, 26.71s/it, lr=6.75e-05, Loss=2.87318, AvgLoss=3.29535, Acc=0.05469, AvgAcc=0.10106]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 02:03:09,878] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 02:03:53,986] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
200it [2:15:50, 26.71s/it, lr=6.75e-05, Loss=2.93038, AvgLoss=3.29353, Acc=0.29948, AvgAcc=0.10205]201it [2:15:50, 53.56s/it, lr=6.75e-05, Loss=2.93038, AvgLoss=3.29353, Acc=0.29948, AvgAcc=0.10205]201it [2:15:50, 53.56s/it, lr=6.75e-05, Loss=3.26121, AvgLoss=3.29337, Acc=0.17057, AvgAcc=0.10239]202it [2:15:50, 37.61s/it, lr=6.75e-05, Loss=3.26121, AvgLoss=3.29337, Acc=0.17057, AvgAcc=0.10239]202it [2:15:50, 37.61s/it, lr=6.75e-05, Loss=2.85952, AvgLoss=3.29123, Acc=0.02083, AvgAcc=0.10199]203it [2:15:50, 26.41s/it, lr=6.75e-05, Loss=2.85952, AvgLoss=3.29123, Acc=0.02083, AvgAcc=0.10199]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 02:05:06,829] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
203it [2:17:52, 26.41s/it, lr=6.75e-05, Loss=2.93830, AvgLoss=3.28950, Acc=0.32031, AvgAcc=0.10306]204it [2:17:52, 54.96s/it, lr=6.75e-05, Loss=2.93830, AvgLoss=3.28950, Acc=0.32031, AvgAcc=0.10306]204it [2:17:52, 54.96s/it, lr=6.75e-05, Loss=3.18306, AvgLoss=3.28898, Acc=0.20182, AvgAcc=0.10354]205it [2:17:52, 38.54s/it, lr=6.75e-05, Loss=3.18306, AvgLoss=3.28898, Acc=0.20182, AvgAcc=0.10354]205it [2:17:52, 38.54s/it, lr=6.75e-05, Loss=2.86210, AvgLoss=3.28691, Acc=0.02734, AvgAcc=0.10317]206it [2:17:52, 27.08s/it, lr=6.75e-05, Loss=2.86210, AvgLoss=3.28691, Acc=0.02734, AvgAcc=0.10317]206it [2:19:50, 27.08s/it, lr=6.75e-05, Loss=2.93863, AvgLoss=3.28523, Acc=0.29036, AvgAcc=0.10407]207it [2:19:50, 54.36s/it, lr=6.75e-05, Loss=2.93863, AvgLoss=3.28523, Acc=0.29036, AvgAcc=0.10407]207it [2:19:51, 54.36s/it, lr=6.75e-05, Loss=3.22943, AvgLoss=3.28496, Acc=0.14323, AvgAcc=0.10426]208it [2:19:51, 38.15s/it, lr=6.75e-05, Loss=3.22943, AvgLoss=3.28496, Acc=0.14323, AvgAcc=0.10426]208it [2:19:51, 38.15s/it, lr=6.75e-05, Loss=2.83899, AvgLoss=3.28283, Acc=0.04167, AvgAcc=0.10396]209it [2:19:51, 26.79s/it, lr=6.75e-05, Loss=2.83899, AvgLoss=3.28283, Acc=0.04167, AvgAcc=0.10396]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 02:08:18,660] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 02:09:23,122] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
209it [2:21:40, 26.79s/it, lr=6.75e-05, Loss=2.92120, AvgLoss=3.28111, Acc=0.30599, AvgAcc=0.10492]210it [2:21:40, 51.35s/it, lr=6.75e-05, Loss=2.92120, AvgLoss=3.28111, Acc=0.30599, AvgAcc=0.10492]210it [2:21:40, 51.35s/it, lr=6.75e-05, Loss=3.22667, AvgLoss=3.28085, Acc=0.14714, AvgAcc=0.10512]211it [2:21:40, 36.03s/it, lr=6.75e-05, Loss=3.22667, AvgLoss=3.28085, Acc=0.14714, AvgAcc=0.10512]211it [2:21:40, 36.03s/it, lr=6.75e-05, Loss=2.84505, AvgLoss=3.27879, Acc=0.04557, AvgAcc=0.10484]212it [2:21:40, 25.32s/it, lr=6.75e-05, Loss=2.84505, AvgLoss=3.27879, Acc=0.04557, AvgAcc=0.10484]212it [2:23:43, 25.32s/it, lr=6.75e-05, Loss=2.91253, AvgLoss=3.27707, Acc=0.30339, AvgAcc=0.10577]213it [2:23:43, 54.42s/it, lr=6.75e-05, Loss=2.91253, AvgLoss=3.27707, Acc=0.30339, AvgAcc=0.10577]213it [2:23:43, 54.42s/it, lr=6.75e-05, Loss=3.20293, AvgLoss=3.27673, Acc=0.14714, AvgAcc=0.10597]214it [2:23:43, 38.19s/it, lr=6.75e-05, Loss=3.20293, AvgLoss=3.27673, Acc=0.14714, AvgAcc=0.10597]214it [2:23:43, 38.19s/it, lr=6.75e-05, Loss=2.81432, AvgLoss=3.27457, Acc=0.04557, AvgAcc=0.10569]215it [2:23:43, 26.82s/it, lr=6.75e-05, Loss=2.81432, AvgLoss=3.27457, Acc=0.04557, AvgAcc=0.10569]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 02:12:21,846] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 02:12:54,487] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 02:13:43,055] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
215it [2:25:44, 26.82s/it, lr=6.75e-05, Loss=2.87438, AvgLoss=3.27272, Acc=0.35938, AvgAcc=0.10686]216it [2:25:44, 54.96s/it, lr=6.75e-05, Loss=2.87438, AvgLoss=3.27272, Acc=0.35938, AvgAcc=0.10686]216it [2:25:44, 54.96s/it, lr=6.75e-05, Loss=3.20108, AvgLoss=3.27239, Acc=0.17839, AvgAcc=0.10719]217it [2:25:44, 38.58s/it, lr=6.75e-05, Loss=3.20108, AvgLoss=3.27239, Acc=0.17839, AvgAcc=0.10719]217it [2:25:44, 38.58s/it, lr=6.75e-05, Loss=2.80578, AvgLoss=3.27025, Acc=0.02604, AvgAcc=0.10682]218it [2:25:44, 27.11s/it, lr=6.75e-05, Loss=2.80578, AvgLoss=3.27025, Acc=0.02604, AvgAcc=0.10682]218it [2:27:36, 27.11s/it, lr=6.75e-05, Loss=2.90917, AvgLoss=3.26860, Acc=0.30469, AvgAcc=0.10772]219it [2:27:36, 52.41s/it, lr=6.75e-05, Loss=2.90917, AvgLoss=3.26860, Acc=0.30469, AvgAcc=0.10772]219it [2:27:36, 52.41s/it, lr=6.75e-05, Loss=3.20463, AvgLoss=3.26831, Acc=0.13932, AvgAcc=0.10787]220it [2:27:36, 36.80s/it, lr=6.75e-05, Loss=3.20463, AvgLoss=3.26831, Acc=0.13932, AvgAcc=0.10787]220it [2:27:37, 36.80s/it, lr=6.75e-05, Loss=2.78522, AvgLoss=3.26613, Acc=0.04818, AvgAcc=0.10760]221it [2:27:37, 25.87s/it, lr=6.75e-05, Loss=2.78522, AvgLoss=3.26613, Acc=0.04818, AvgAcc=0.10760]=== Restarting DataIter train_worker1, seed=1006263441 ===
[2024-04-23 02:17:08,389] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
221it [2:29:38, 25.87s/it, lr=6.75e-05, Loss=2.88986, AvgLoss=3.26443, Acc=0.33724, AvgAcc=0.10863]222it [2:29:38, 54.65s/it, lr=6.75e-05, Loss=2.88986, AvgLoss=3.26443, Acc=0.33724, AvgAcc=0.10863]222it [2:29:39, 54.65s/it, lr=6.75e-05, Loss=3.19266, AvgLoss=3.26411, Acc=0.15755, AvgAcc=0.10885]223it [2:29:39, 38.35s/it, lr=6.75e-05, Loss=3.19266, AvgLoss=3.26411, Acc=0.15755, AvgAcc=0.10885]223it [2:29:39, 38.35s/it, lr=6.75e-05, Loss=2.80626, AvgLoss=3.26207, Acc=0.03646, AvgAcc=0.10853]224it [2:29:39, 26.96s/it, lr=6.75e-05, Loss=2.80626, AvgLoss=3.26207, Acc=0.03646, AvgAcc=0.10853]=== Restarting DataIter train_worker2, seed=1006263442 ===
[2024-04-23 02:17:58,576] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
224it [2:31:34, 26.96s/it, lr=6.75e-05, Loss=2.91478, AvgLoss=3.26052, Acc=0.29557, AvgAcc=0.10936]225it [2:31:34, 53.33s/it, lr=6.75e-05, Loss=2.91478, AvgLoss=3.26052, Acc=0.29557, AvgAcc=0.10936]225it [2:31:34, 53.33s/it, lr=6.75e-05, Loss=3.20055, AvgLoss=3.26026, Acc=0.13542, AvgAcc=0.10947]226it [2:31:34, 37.43s/it, lr=6.75e-05, Loss=3.20055, AvgLoss=3.26026, Acc=0.13542, AvgAcc=0.10947]226it [2:31:35, 37.43s/it, lr=6.75e-05, Loss=2.78039, AvgLoss=3.25814, Acc=0.03776, AvgAcc=0.10916]227it [2:31:35, 26.29s/it, lr=6.75e-05, Loss=2.78039, AvgLoss=3.25814, Acc=0.03776, AvgAcc=0.10916]=== Restarting DataIter train_worker0, seed=1006263440 ===
[2024-04-23 02:20:59,134] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
adgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
227it [1:47:06, 27.86s/it, lr=6.75e-03, Loss=1.70026, AvgLoss=2.14876, Acc=0.16016, AvgAcc=0.28914]228it [1:47:06, 54.23s/it, lr=6.75e-03, Loss=1.70026, AvgLoss=2.14876, Acc=0.16016, AvgAcc=0.28914]228it [1:47:06, 54.23s/it, lr=6.75e-03, Loss=1.66518, AvgLoss=2.14665, Acc=0.54427, AvgAcc=0.29025]229it [1:47:06, 38.07s/it, lr=6.75e-03, Loss=1.66518, AvgLoss=2.14665, Acc=0.54427, AvgAcc=0.29025]229it [1:47:07, 38.07s/it, lr=6.75e-03, Loss=1.29447, AvgLoss=2.14294, Acc=0.60547, AvgAcc=0.29162]230it [1:47:07, 26.76s/it, lr=6.75e-03, Loss=1.29447, AvgLoss=2.14294, Acc=0.60547, AvgAcc=0.29162]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 00:40:28,934] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
230it [1:49:05, 26.76s/it, lr=6.75e-03, Loss=1.67129, AvgLoss=2.14090, Acc=0.16146, AvgAcc=0.29106]231it [1:49:05, 54.10s/it, lr=6.75e-03, Loss=1.67129, AvgLoss=2.14090, Acc=0.16146, AvgAcc=0.29106]231it [1:49:05, 54.10s/it, lr=6.75e-03, Loss=1.72707, AvgLoss=2.13912, Acc=0.49870, AvgAcc=0.29195]232it [1:49:05, 37.97s/it, lr=6.75e-03, Loss=1.72707, AvgLoss=2.13912, Acc=0.49870, AvgAcc=0.29195]232it [1:49:05, 37.97s/it, lr=6.75e-03, Loss=1.44805, AvgLoss=2.13615, Acc=0.51432, AvgAcc=0.29291]233it [1:49:05, 26.68s/it, lr=6.75e-03, Loss=1.44805, AvgLoss=2.13615, Acc=0.51432, AvgAcc=0.29291]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 00:42:30,203] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
233it [1:51:05, 26.68s/it, lr=6.75e-03, Loss=1.67525, AvgLoss=2.13418, Acc=0.18359, AvgAcc=0.29244]234it [1:51:05, 54.65s/it, lr=6.75e-03, Loss=1.67525, AvgLoss=2.13418, Acc=0.18359, AvgAcc=0.29244]234it [1:51:06, 54.65s/it, lr=6.75e-03, Loss=1.59615, AvgLoss=2.13189, Acc=0.56771, AvgAcc=0.29361]235it [1:51:06, 38.37s/it, lr=6.75e-03, Loss=1.59615, AvgLoss=2.13189, Acc=0.56771, AvgAcc=0.29361]235it [1:51:06, 38.37s/it, lr=6.75e-03, Loss=1.30903, AvgLoss=2.12841, Acc=0.59766, AvgAcc=0.29490]236it [1:51:06, 27.06s/it, lr=6.75e-03, Loss=1.30903, AvgLoss=2.12841, Acc=0.59766, AvgAcc=0.29490]236it [1:53:03, 27.06s/it, lr=6.75e-03, Loss=1.66129, AvgLoss=2.12643, Acc=0.14844, AvgAcc=0.29428]237it [1:53:03, 53.98s/it, lr=6.75e-03, Loss=1.66129, AvgLoss=2.12643, Acc=0.14844, AvgAcc=0.29428]237it [1:53:03, 53.98s/it, lr=6.75e-03, Loss=1.51514, AvgLoss=2.12387, Acc=0.56641, AvgAcc=0.29543]238it [1:53:03, 37.89s/it, lr=6.75e-03, Loss=1.51514, AvgLoss=2.12387, Acc=0.56641, AvgAcc=0.29543]238it [1:53:04, 37.89s/it, lr=6.75e-03, Loss=1.28532, AvgLoss=2.12036, Acc=0.59505, AvgAcc=0.29668]239it [1:53:04, 26.63s/it, lr=6.75e-03, Loss=1.28532, AvgLoss=2.12036, Acc=0.59505, AvgAcc=0.29668]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 00:44:44,101] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 00:45:29,747] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
239it [1:55:10, 26.63s/it, lr=6.75e-03, Loss=1.62150, AvgLoss=2.11828, Acc=0.21745, AvgAcc=0.29635]240it [1:55:10, 56.46s/it, lr=6.75e-03, Loss=1.62150, AvgLoss=2.11828, Acc=0.21745, AvgAcc=0.29635]240it [1:55:10, 56.46s/it, lr=6.75e-03, Loss=1.55005, AvgLoss=2.11592, Acc=0.54948, AvgAcc=0.29740]241it [1:55:10, 39.62s/it, lr=6.75e-03, Loss=1.55005, AvgLoss=2.11592, Acc=0.54948, AvgAcc=0.29740]241it [1:55:11, 39.62s/it, lr=6.75e-03, Loss=1.31974, AvgLoss=2.11263, Acc=0.59635, AvgAcc=0.29863]242it [1:55:11, 27.84s/it, lr=6.75e-03, Loss=1.31974, AvgLoss=2.11263, Acc=0.59635, AvgAcc=0.29863]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 00:47:02,143] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
242it [1:57:06, 27.84s/it, lr=6.75e-03, Loss=1.60926, AvgLoss=2.11056, Acc=0.15625, AvgAcc=0.29805]243it [1:57:06, 54.05s/it, lr=6.75e-03, Loss=1.60926, AvgLoss=2.11056, Acc=0.15625, AvgAcc=0.29805]243it [1:57:06, 54.05s/it, lr=6.75e-03, Loss=1.45592, AvgLoss=2.10788, Acc=0.57943, AvgAcc=0.29920]244it [1:57:06, 37.94s/it, lr=6.75e-03, Loss=1.45592, AvgLoss=2.10788, Acc=0.57943, AvgAcc=0.29920]244it [1:57:06, 37.94s/it, lr=6.75e-03, Loss=1.29690, AvgLoss=2.10457, Acc=0.63411, AvgAcc=0.30057]245it [1:57:06, 26.67s/it, lr=6.75e-03, Loss=1.29690, AvgLoss=2.10457, Acc=0.63411, AvgAcc=0.30057]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 00:49:21,874] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
245it [1:58:57, 26.67s/it, lr=6.75e-03, Loss=1.59376, AvgLoss=2.10249, Acc=0.17057, AvgAcc=0.30004]246it [1:58:57, 51.76s/it, lr=6.75e-03, Loss=1.59376, AvgLoss=2.10249, Acc=0.17057, AvgAcc=0.30004]246it [1:58:57, 51.76s/it, lr=6.75e-03, Loss=1.35288, AvgLoss=2.09946, Acc=0.59505, AvgAcc=0.30123]247it [1:58:57, 36.34s/it, lr=6.75e-03, Loss=1.35288, AvgLoss=2.09946, Acc=0.59505, AvgAcc=0.30123]247it [1:58:57, 36.34s/it, lr=6.75e-03, Loss=1.43114, AvgLoss=2.09676, Acc=0.47005, AvgAcc=0.30192]248it [1:58:57, 25.53s/it, lr=6.75e-03, Loss=1.43114, AvgLoss=2.09676, Acc=0.47005, AvgAcc=0.30192]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 00:51:36,926] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
248it [2:00:53, 25.53s/it, lr=6.75e-03, Loss=1.64369, AvgLoss=2.09494, Acc=0.13542, AvgAcc=0.30125]249it [2:00:53, 52.45s/it, lr=6.75e-03, Loss=1.64369, AvgLoss=2.09494, Acc=0.13542, AvgAcc=0.30125]249it [2:00:53, 52.45s/it, lr=6.75e-03, Loss=1.41402, AvgLoss=2.09222, Acc=0.58594, AvgAcc=0.30239]250it [2:00:53, 36.81s/it, lr=6.75e-03, Loss=1.41402, AvgLoss=2.09222, Acc=0.58594, AvgAcc=0.30239]250it [2:00:53, 36.81s/it, lr=6.75e-03, Loss=1.51305, AvgLoss=2.08991, Acc=0.47135, AvgAcc=0.30306]251it [2:00:53, 25.87s/it, lr=6.75e-03, Loss=1.51305, AvgLoss=2.08991, Acc=0.47135, AvgAcc=0.30306]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 00:53:40,871] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
251it [2:02:52, 25.87s/it, lr=6.75e-03, Loss=1.66175, AvgLoss=2.08821, Acc=0.18359, AvgAcc=0.30258]252it [2:02:52, 53.56s/it, lr=6.75e-03, Loss=1.66175, AvgLoss=2.08821, Acc=0.18359, AvgAcc=0.30258]252it [2:02:52, 53.56s/it, lr=6.75e-03, Loss=1.49608, AvgLoss=2.08587, Acc=0.57422, AvgAcc=0.30366]253it [2:02:52, 37.61s/it, lr=6.75e-03, Loss=1.49608, AvgLoss=2.08587, Acc=0.57422, AvgAcc=0.30366]253it [2:02:52, 37.61s/it, lr=6.75e-03, Loss=1.47965, AvgLoss=2.08348, Acc=0.42318, AvgAcc=0.30413]254it [2:02:52, 26.44s/it, lr=6.75e-03, Loss=1.47965, AvgLoss=2.08348, Acc=0.42318, AvgAcc=0.30413]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 00:54:48,606] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 00:55:57,624] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
254it [2:05:07, 26.44s/it, lr=6.75e-03, Loss=1.53928, AvgLoss=2.08135, Acc=0.23698, AvgAcc=0.30387]255it [2:05:07, 58.82s/it, lr=6.75e-03, Loss=1.53928, AvgLoss=2.08135, Acc=0.23698, AvgAcc=0.30387]255it [2:05:07, 58.82s/it, lr=6.75e-03, Loss=3.30927, AvgLoss=2.08615, Acc=0.18229, AvgAcc=0.30339]256it [2:05:07, 41.26s/it, lr=6.75e-03, Loss=3.30927, AvgLoss=2.08615, Acc=0.18229, AvgAcc=0.30339]256it [2:05:07, 41.26s/it, lr=6.75e-03, Loss=1.21700, AvgLoss=2.08276, Acc=0.60677, AvgAcc=0.30457]257it [2:05:07, 28.97s/it, lr=6.75e-03, Loss=1.21700, AvgLoss=2.08276, Acc=0.60677, AvgAcc=0.30457]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 00:58:14,022] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
257it [2:07:04, 28.97s/it, lr=6.75e-03, Loss=1.63629, AvgLoss=2.08103, Acc=0.15755, AvgAcc=0.30400]258it [2:07:04, 55.24s/it, lr=6.75e-03, Loss=1.63629, AvgLoss=2.08103, Acc=0.15755, AvgAcc=0.30400]258it [2:07:04, 55.24s/it, lr=6.75e-03, Loss=2.73074, AvgLoss=2.08354, Acc=0.33073, AvgAcc=0.30410]259it [2:07:04, 38.76s/it, lr=6.75e-03, Loss=2.73074, AvgLoss=2.08354, Acc=0.33073, AvgAcc=0.30410]259it [2:07:04, 38.76s/it, lr=6.75e-03, Loss=1.89614, AvgLoss=2.08282, Acc=0.39062, AvgAcc=0.30444]260it [2:07:04, 27.24s/it, lr=6.75e-03, Loss=1.89614, AvgLoss=2.08282, Acc=0.39062, AvgAcc=0.30444]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:00:19,118] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
260it [2:08:58, 27.24s/it, lr=6.75e-03, Loss=2.26583, AvgLoss=2.08352, Acc=0.11198, AvgAcc=0.30370]261it [2:08:58, 53.05s/it, lr=6.75e-03, Loss=2.26583, AvgLoss=2.08352, Acc=0.11198, AvgAcc=0.30370]261it [2:08:58, 53.05s/it, lr=6.75e-03, Loss=1.78751, AvgLoss=2.08239, Acc=0.49089, AvgAcc=0.30441]262it [2:08:58, 37.23s/it, lr=6.75e-03, Loss=1.78751, AvgLoss=2.08239, Acc=0.49089, AvgAcc=0.30441]262it [2:08:58, 37.23s/it, lr=6.75e-03, Loss=1.65102, AvgLoss=2.08075, Acc=0.39974, AvgAcc=0.30478]263it [2:08:58, 26.15s/it, lr=6.75e-03, Loss=1.65102, AvgLoss=2.08075, Acc=0.39974, AvgAcc=0.30478]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:02:20,127] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
263it [2:10:46, 26.15s/it, lr=6.75e-03, Loss=1.58151, AvgLoss=2.07886, Acc=0.27214, AvgAcc=0.30465]264it [2:10:46, 50.53s/it, lr=6.75e-03, Loss=1.58151, AvgLoss=2.07886, Acc=0.27214, AvgAcc=0.30465]264it [2:10:46, 50.53s/it, lr=6.75e-03, Loss=2.17419, AvgLoss=2.07922, Acc=0.40885, AvgAcc=0.30505]265it [2:10:46, 35.48s/it, lr=6.75e-03, Loss=2.17419, AvgLoss=2.07922, Acc=0.40885, AvgAcc=0.30505]265it [2:10:46, 35.48s/it, lr=6.75e-03, Loss=1.44390, AvgLoss=2.07683, Acc=0.50521, AvgAcc=0.30580]266it [2:10:46, 24.94s/it, lr=6.75e-03, Loss=1.44390, AvgLoss=2.07683, Acc=0.50521, AvgAcc=0.30580]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:03:31,353] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
266it [2:12:49, 24.94s/it, lr=6.75e-03, Loss=2.27123, AvgLoss=2.07756, Acc=0.06120, AvgAcc=0.30488]267it [2:12:49, 54.12s/it, lr=6.75e-03, Loss=2.27123, AvgLoss=2.07756, Acc=0.06120, AvgAcc=0.30488]267it [2:12:49, 54.12s/it, lr=6.75e-03, Loss=1.52805, AvgLoss=2.07551, Acc=0.57552, AvgAcc=0.30589]268it [2:12:49, 37.98s/it, lr=6.75e-03, Loss=1.52805, AvgLoss=2.07551, Acc=0.57552, AvgAcc=0.30589]268it [2:12:49, 37.98s/it, lr=6.75e-03, Loss=1.66177, AvgLoss=2.07397, Acc=0.36979, AvgAcc=0.30613]269it [2:12:49, 26.68s/it, lr=6.75e-03, Loss=1.66177, AvgLoss=2.07397, Acc=0.36979, AvgAcc=0.30613]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:04:49,248] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
269it [2:14:52, 26.68s/it, lr=6.75e-03, Loss=1.90058, AvgLoss=2.07333, Acc=0.21094, AvgAcc=0.30578]270it [2:14:52, 55.38s/it, lr=6.75e-03, Loss=1.90058, AvgLoss=2.07333, Acc=0.21094, AvgAcc=0.30578]270it [2:14:52, 55.38s/it, lr=6.75e-03, Loss=1.87852, AvgLoss=2.07261, Acc=0.46224, AvgAcc=0.30635]271it [2:14:52, 38.87s/it, lr=6.75e-03, Loss=1.87852, AvgLoss=2.07261, Acc=0.46224, AvgAcc=0.30635]271it [2:14:52, 38.87s/it, lr=6.75e-03, Loss=1.36964, AvgLoss=2.07003, Acc=0.37891, AvgAcc=0.30662]272it [2:14:52, 27.31s/it, lr=6.75e-03, Loss=1.36964, AvgLoss=2.07003, Acc=0.37891, AvgAcc=0.30662]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:06:55,788] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
272it [2:16:51, 27.31s/it, lr=6.75e-03, Loss=1.61926, AvgLoss=2.06838, Acc=0.26823, AvgAcc=0.30648]273it [2:16:51, 54.84s/it, lr=6.75e-03, Loss=1.61926, AvgLoss=2.06838, Acc=0.26823, AvgAcc=0.30648]273it [2:16:52, 54.84s/it, lr=6.75e-03, Loss=1.83853, AvgLoss=2.06754, Acc=0.47396, AvgAcc=0.30709]274it [2:16:52, 38.49s/it, lr=6.75e-03, Loss=1.83853, AvgLoss=2.06754, Acc=0.47396, AvgAcc=0.30709]274it [2:16:52, 38.49s/it, lr=6.75e-03, Loss=1.42409, AvgLoss=2.06520, Acc=0.42188, AvgAcc=0.30751]275it [2:16:52, 27.03s/it, lr=6.75e-03, Loss=1.42409, AvgLoss=2.06520, Acc=0.42188, AvgAcc=0.30751]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:09:21,185] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
275it [2:18:56, 27.03s/it, lr=6.75e-03, Loss=1.70674, AvgLoss=2.06390, Acc=0.20964, AvgAcc=0.30715]276it [2:18:56, 56.05s/it, lr=6.75e-03, Loss=1.70674, AvgLoss=2.06390, Acc=0.20964, AvgAcc=0.30715]276it [2:18:56, 56.05s/it, lr=6.75e-03, Loss=1.65265, AvgLoss=2.06241, Acc=0.54427, AvgAcc=0.30801]277it [2:18:56, 39.33s/it, lr=6.75e-03, Loss=1.65265, AvgLoss=2.06241, Acc=0.54427, AvgAcc=0.30801]277it [2:18:56, 39.33s/it, lr=6.75e-03, Loss=1.38221, AvgLoss=2.05997, Acc=0.50391, AvgAcc=0.30872]278it [2:18:56, 27.63s/it, lr=6.75e-03, Loss=1.38221, AvgLoss=2.05997, Acc=0.50391, AvgAcc=0.30872]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:11:25,851] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
278it [2:20:55, 27.63s/it, lr=6.75e-03, Loss=1.81367, AvgLoss=2.05908, Acc=0.18359, AvgAcc=0.30827]279it [2:20:55, 54.76s/it, lr=6.75e-03, Loss=1.81367, AvgLoss=2.05908, Acc=0.18359, AvgAcc=0.30827]279it [2:20:55, 54.76s/it, lr=6.75e-03, Loss=1.59599, AvgLoss=2.05743, Acc=0.56120, AvgAcc=0.30917]280it [2:20:55, 38.44s/it, lr=6.75e-03, Loss=1.59599, AvgLoss=2.05743, Acc=0.56120, AvgAcc=0.30917]280it [2:20:55, 38.44s/it, lr=6.75e-03, Loss=1.39901, AvgLoss=2.05509, Acc=0.55339, AvgAcc=0.31004]281it [2:20:55, 26.99s/it, lr=6.75e-03, Loss=1.39901, AvgLoss=2.05509, Acc=0.55339, AvgAcc=0.31004]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:13:06,972] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:13:53,013] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
281it [2:23:00, 26.99s/it, lr=6.75e-03, Loss=1.81834, AvgLoss=2.05425, Acc=0.10807, AvgAcc=0.30932]282it [2:23:00, 56.42s/it, lr=6.75e-03, Loss=1.81834, AvgLoss=2.05425, Acc=0.10807, AvgAcc=0.30932]282it [2:23:01, 56.42s/it, lr=6.75e-03, Loss=1.58254, AvgLoss=2.05258, Acc=0.54297, AvgAcc=0.31015]283it [2:23:01, 39.60s/it, lr=6.75e-03, Loss=1.58254, AvgLoss=2.05258, Acc=0.54297, AvgAcc=0.31015]283it [2:23:01, 39.60s/it, lr=6.75e-03, Loss=1.28784, AvgLoss=2.04989, Acc=0.59635, AvgAcc=0.31116]284it [2:23:01, 27.82s/it, lr=6.75e-03, Loss=1.28784, AvgLoss=2.04989, Acc=0.59635, AvgAcc=0.31116]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:15:43,917] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
284it [2:25:00, 27.82s/it, lr=6.75e-03, Loss=1.60834, AvgLoss=2.04834, Acc=0.15365, AvgAcc=0.31060]285it [2:25:00, 55.22s/it, lr=6.75e-03, Loss=1.60834, AvgLoss=2.04834, Acc=0.15365, AvgAcc=0.31060]285it [2:25:00, 55.22s/it, lr=6.75e-03, Loss=1.66701, AvgLoss=2.04701, Acc=0.51302, AvgAcc=0.31131]286it [2:25:00, 38.77s/it, lr=6.75e-03, Loss=1.66701, AvgLoss=2.04701, Acc=0.51302, AvgAcc=0.31131]286it [2:25:01, 38.77s/it, lr=6.75e-03, Loss=1.28151, AvgLoss=2.04434, Acc=0.60417, AvgAcc=0.31233]287it [2:25:01, 27.26s/it, lr=6.75e-03, Loss=1.28151, AvgLoss=2.04434, Acc=0.60417, AvgAcc=0.31233]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:18:21,743] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
287it [2:26:56, 27.26s/it, lr=6.75e-03, Loss=1.76295, AvgLoss=2.04336, Acc=0.14583, AvgAcc=0.31175]288it [2:26:56, 53.76s/it, lr=6.75e-03, Loss=1.76295, AvgLoss=2.04336, Acc=0.14583, AvgAcc=0.31175]288it [2:26:57, 53.76s/it, lr=6.75e-03, Loss=1.44160, AvgLoss=2.04128, Acc=0.57812, AvgAcc=0.31268]289it [2:26:57, 37.74s/it, lr=6.75e-03, Loss=1.44160, AvgLoss=2.04128, Acc=0.57812, AvgAcc=0.31268]289it [2:26:57, 37.74s/it, lr=6.75e-03, Loss=1.20950, AvgLoss=2.03841, Acc=0.68099, AvgAcc=0.31395]290it [2:26:57, 26.53s/it, lr=6.75e-03, Loss=1.20950, AvgLoss=2.03841, Acc=0.68099, AvgAcc=0.31395]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:19:53,908] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
290it [2:29:02, 26.53s/it, lr=6.75e-03, Loss=1.56711, AvgLoss=2.03679, Acc=0.14453, AvgAcc=0.31336]291it [2:29:02, 55.88s/it, lr=6.75e-03, Loss=1.56711, AvgLoss=2.03679, Acc=0.14453, AvgAcc=0.31336]291it [2:29:02, 55.88s/it, lr=6.75e-03, Loss=1.64011, AvgLoss=2.03543, Acc=0.55208, AvgAcc=0.31418]292it [2:29:02, 39.21s/it, lr=6.75e-03, Loss=1.64011, AvgLoss=2.03543, Acc=0.55208, AvgAcc=0.31418]292it [2:29:02, 39.21s/it, lr=6.75e-03, Loss=1.20511, AvgLoss=2.03260, Acc=0.66276, AvgAcc=0.31537]293it [2:29:02, 27.55s/it, lr=6.75e-03, Loss=1.20511, AvgLoss=2.03260, Acc=0.66276, AvgAcc=0.31537]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:21:55,355] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
293it [2:30:45, 27.55s/it, lr=6.75e-03, Loss=1.63156, AvgLoss=2.03123, Acc=0.16146, AvgAcc=0.31485]294it [2:30:45, 50.02s/it, lr=6.75e-03, Loss=1.63156, AvgLoss=2.03123, Acc=0.16146, AvgAcc=0.31485]294it [2:30:45, 50.02s/it, lr=6.75e-03, Loss=1.37798, AvgLoss=2.02902, Acc=0.60026, AvgAcc=0.31581]295it [2:30:45, 35.11s/it, lr=6.75e-03, Loss=1.37798, AvgLoss=2.02902, Acc=0.60026, AvgAcc=0.31581]295it [2:30:45, 35.11s/it, lr=6.75e-03, Loss=1.22480, AvgLoss=2.02630, Acc=0.64583, AvgAcc=0.31693]296it [2:30:45, 24.67s/it, lr=6.75e-03, Loss=1.22480, AvgLoss=2.02630, Acc=0.64583, AvgAcc=0.31693]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:22:57,025] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:24:08,339] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
296it [2:32:45, 24.67s/it, lr=6.75e-03, Loss=1.56949, AvgLoss=2.02477, Acc=0.16146, AvgAcc=0.31641]297it [2:32:45, 53.13s/it, lr=6.75e-03, Loss=1.56949, AvgLoss=2.02477, Acc=0.16146, AvgAcc=0.31641]297it [2:32:45, 53.13s/it, lr=6.75e-03, Loss=1.39968, AvgLoss=2.02267, Acc=0.60026, AvgAcc=0.31736]298it [2:32:45, 37.28s/it, lr=6.75e-03, Loss=1.39968, AvgLoss=2.02267, Acc=0.60026, AvgAcc=0.31736]298it [2:32:45, 37.28s/it, lr=6.75e-03, Loss=1.17628, AvgLoss=2.01984, Acc=0.66927, AvgAcc=0.31854]299it [2:32:45, 26.19s/it, lr=6.75e-03, Loss=1.17628, AvgLoss=2.01984, Acc=0.66927, AvgAcc=0.31854]299it [2:34:42, 26.19s/it, lr=6.75e-03, Loss=1.62161, AvgLoss=2.01851, Acc=0.15885, AvgAcc=0.31800]300it [2:34:42, 53.27s/it, lr=6.75e-03, Loss=1.62161, AvgLoss=2.01851, Acc=0.15885, AvgAcc=0.31800]300it [2:34:42, 53.27s/it, lr=6.75e-03, Loss=1.27982, AvgLoss=2.01606, Acc=0.63411, AvgAcc=0.31905]301it [2:34:42, 37.37s/it, lr=6.75e-03, Loss=1.27982, AvgLoss=2.01606, Acc=0.63411, AvgAcc=0.31905]301it [2:34:43, 37.37s/it, lr=6.75e-03, Loss=1.25942, AvgLoss=2.01355, Acc=0.62240, AvgAcc=0.32006]302it [2:34:43, 26.27s/it, lr=6.75e-03, Loss=1.25942, AvgLoss=2.01355, Acc=0.62240, AvgAcc=0.32006]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:27:16,862] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:28:23,749] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
302it [2:36:47, 26.27s/it, lr=6.75e-03, Loss=1.56785, AvgLoss=2.01208, Acc=0.14062, AvgAcc=0.31947]303it [2:36:47, 55.63s/it, lr=6.75e-03, Loss=1.56785, AvgLoss=2.01208, Acc=0.14062, AvgAcc=0.31947]303it [2:36:47, 55.63s/it, lr=6.75e-03, Loss=1.39308, AvgLoss=2.01004, Acc=0.61328, AvgAcc=0.32043]304it [2:36:47, 39.04s/it, lr=6.75e-03, Loss=1.39308, AvgLoss=2.01004, Acc=0.61328, AvgAcc=0.32043]304it [2:36:47, 39.04s/it, lr=6.75e-03, Loss=1.23873, AvgLoss=2.00751, Acc=0.61068, AvgAcc=0.32138]305it [2:36:47, 27.45s/it, lr=6.75e-03, Loss=1.23873, AvgLoss=2.00751, Acc=0.61068, AvgAcc=0.32138]305it [2:38:43, 27.45s/it, lr=6.75e-03, Loss=1.47128, AvgLoss=2.00576, Acc=0.21745, AvgAcc=0.32104]306it [2:38:43, 54.03s/it, lr=6.75e-03, Loss=1.47128, AvgLoss=2.00576, Acc=0.21745, AvgAcc=0.32104]306it [2:38:44, 54.03s/it, lr=6.75e-03, Loss=1.27099, AvgLoss=2.00337, Acc=0.62760, AvgAcc=0.32204]307it [2:38:44, 37.92s/it, lr=6.75e-03, Loss=1.27099, AvgLoss=2.00337, Acc=0.62760, AvgAcc=0.32204]307it [2:38:44, 37.92s/it, lr=6.75e-03, Loss=1.26666, AvgLoss=2.00098, Acc=0.57422, AvgAcc=0.32286]308it [2:38:44, 26.64s/it, lr=6.75e-03, Loss=1.26666, AvgLoss=2.00098, Acc=0.57422, AvgAcc=0.32286]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:30:58,710] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:31:46,865] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
308it [2:40:41, 26.64s/it, lr=6.75e-03, Loss=1.53648, AvgLoss=1.99947, Acc=0.17448, AvgAcc=0.32238]309it [2:40:41, 53.60s/it, lr=6.75e-03, Loss=1.53648, AvgLoss=1.99947, Acc=0.17448, AvgAcc=0.32238]309it [2:40:41, 53.60s/it, lr=6.75e-03, Loss=1.36348, AvgLoss=1.99742, Acc=0.58073, AvgAcc=0.32321]310it [2:40:41, 37.63s/it, lr=6.75e-03, Loss=1.36348, AvgLoss=1.99742, Acc=0.58073, AvgAcc=0.32321]310it [2:40:41, 37.63s/it, lr=6.75e-03, Loss=1.20530, AvgLoss=1.99487, Acc=0.56380, AvgAcc=0.32399]311it [2:40:41, 26.46s/it, lr=6.75e-03, Loss=1.20530, AvgLoss=1.99487, Acc=0.56380, AvgAcc=0.32399]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:32:44,818] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
311it [2:42:46, 26.46s/it, lr=6.75e-03, Loss=1.43984, AvgLoss=1.99310, Acc=0.22266, AvgAcc=0.32366]312it [2:42:46, 56.03s/it, lr=6.75e-03, Loss=1.43984, AvgLoss=1.99310, Acc=0.22266, AvgAcc=0.32366]312it [2:42:47, 56.03s/it, lr=6.75e-03, Loss=1.31478, AvgLoss=1.99093, Acc=0.58984, AvgAcc=0.32451]313it [2:42:47, 39.32s/it, lr=6.75e-03, Loss=1.31478, AvgLoss=1.99093, Acc=0.58984, AvgAcc=0.32451]313it [2:42:47, 39.32s/it, lr=6.75e-03, Loss=1.24239, AvgLoss=1.98854, Acc=0.55599, AvgAcc=0.32525]314it [2:42:47, 27.63s/it, lr=6.75e-03, Loss=1.24239, AvgLoss=1.98854, Acc=0.55599, AvgAcc=0.32525]314it [2:44:33, 27.63s/it, lr=6.75e-03, Loss=1.52019, AvgLoss=1.98706, Acc=0.17578, AvgAcc=0.32478]315it [2:44:33, 51.19s/it, lr=6.75e-03, Loss=1.52019, AvgLoss=1.98706, Acc=0.17578, AvgAcc=0.32478]315it [2:44:34, 51.19s/it, lr=6.75e-03, Loss=1.30060, AvgLoss=1.98489, Acc=0.61068, AvgAcc=0.32568]316it [2:44:34, 35.92s/it, lr=6.75e-03, Loss=1.30060, AvgLoss=1.98489, Acc=0.61068, AvgAcc=0.32568]316it [2:44:34, 35.92s/it, lr=6.75e-03, Loss=1.26480, AvgLoss=1.98261, Acc=0.55469, AvgAcc=0.32640]317it [2:44:34, 25.24s/it, lr=6.75e-03, Loss=1.26480, AvgLoss=1.98261, Acc=0.55469, AvgAcc=0.32640]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:36:16,260] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:36:54,297] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
317it [2:46:36, 25.24s/it, lr=6.75e-03, Loss=1.50211, AvgLoss=1.98110, Acc=0.22917, AvgAcc=0.32610]318it [2:46:36, 54.22s/it, lr=6.75e-03, Loss=1.50211, AvgLoss=1.98110, Acc=0.22917, AvgAcc=0.32610]318it [2:46:36, 54.22s/it, lr=6.75e-03, Loss=1.30563, AvgLoss=1.97899, Acc=0.60807, AvgAcc=0.32698]319it [2:46:36, 38.05s/it, lr=6.75e-03, Loss=1.30563, AvgLoss=1.97899, Acc=0.60807, AvgAcc=0.32698]319it [2:46:37, 38.05s/it, lr=6.75e-03, Loss=1.23963, AvgLoss=1.97667, Acc=0.56510, AvgAcc=0.32773]320it [2:46:37, 26.77s/it, lr=6.75e-03, Loss=1.23963, AvgLoss=1.97667, Acc=0.56510, AvgAcc=0.32773]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:39:26,226] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
320it [2:48:31, 26.77s/it, lr=6.75e-03, Loss=1.51616, AvgLoss=1.97524, Acc=0.18229, AvgAcc=0.32727]321it [2:48:31, 53.09s/it, lr=6.75e-03, Loss=1.51616, AvgLoss=1.97524, Acc=0.18229, AvgAcc=0.32727]321it [2:48:31, 53.09s/it, lr=6.75e-03, Loss=1.20807, AvgLoss=1.97286, Acc=0.64062, AvgAcc=0.32825]322it [2:48:31, 37.26s/it, lr=6.75e-03, Loss=1.20807, AvgLoss=1.97286, Acc=0.64062, AvgAcc=0.32825]322it [2:48:32, 37.26s/it, lr=6.75e-03, Loss=1.23895, AvgLoss=1.97059, Acc=0.52865, AvgAcc=0.32887]323it [2:48:32, 26.17s/it, lr=6.75e-03, Loss=1.23895, AvgLoss=1.97059, Acc=0.52865, AvgAcc=0.32887]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:40:52,661] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:41:15,411] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
323it [2:50:34, 26.17s/it, lr=6.75e-03, Loss=1.56474, AvgLoss=1.96933, Acc=0.18099, AvgAcc=0.32841]324it [2:50:34, 54.90s/it, lr=6.75e-03, Loss=1.56474, AvgLoss=1.96933, Acc=0.18099, AvgAcc=0.32841]324it [2:50:34, 54.90s/it, lr=6.75e-03, Loss=1.25733, AvgLoss=1.96714, Acc=0.60938, AvgAcc=0.32927]325it [2:50:34, 38.55s/it, lr=6.75e-03, Loss=1.25733, AvgLoss=1.96714, Acc=0.60938, AvgAcc=0.32927]325it [2:50:34, 38.55s/it, lr=6.75e-03, Loss=1.25707, AvgLoss=1.96496, Acc=0.57292, AvgAcc=0.33002]326it [2:50:34, 27.14s/it, lr=6.75e-03, Loss=1.25707, AvgLoss=1.96496, Acc=0.57292, AvgAcc=0.33002]326it [2:52:34, 27.14s/it, lr=6.75e-03, Loss=1.54299, AvgLoss=1.96367, Acc=0.20312, AvgAcc=0.32963]327it [2:52:34, 54.73s/it, lr=6.75e-03, Loss=1.54299, AvgLoss=1.96367, Acc=0.20312, AvgAcc=0.32963]327it [2:52:34, 54.73s/it, lr=6.75e-03, Loss=1.26855, AvgLoss=1.96155, Acc=0.62370, AvgAcc=0.33053]328it [2:52:34, 38.42s/it, lr=6.75e-03, Loss=1.26855, AvgLoss=1.96155, Acc=0.62370, AvgAcc=0.33053]328it [2:52:34, 38.42s/it, lr=6.75e-03, Loss=1.26831, AvgLoss=1.95945, Acc=0.61589, AvgAcc=0.33140]329it [2:52:34, 27.01s/it, lr=6.75e-03, Loss=1.26831, AvgLoss=1.95945, Acc=0.61589, AvgAcc=0.33140]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:45:29,120] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:45:31,567] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
329it [2:54:22, 27.01s/it, lr=6.75e-03, Loss=1.49774, AvgLoss=1.95805, Acc=0.16276, AvgAcc=0.33089]330it [2:54:22, 51.18s/it, lr=6.75e-03, Loss=1.49774, AvgLoss=1.95805, Acc=0.16276, AvgAcc=0.33089]330it [2:54:22, 51.18s/it, lr=6.75e-03, Loss=1.49113, AvgLoss=1.95664, Acc=0.57031, AvgAcc=0.33161]331it [2:54:22, 35.92s/it, lr=6.75e-03, Loss=1.49113, AvgLoss=1.95664, Acc=0.57031, AvgAcc=0.33161]331it [2:54:23, 35.92s/it, lr=6.75e-03, Loss=1.81937, AvgLoss=1.95622, Acc=0.38802, AvgAcc=0.33178]332it [2:54:23, 25.24s/it, lr=6.75e-03, Loss=1.81937, AvgLoss=1.95622, Acc=0.38802, AvgAcc=0.33178]332it [2:56:12, 25.24s/it, lr=6.75e-03, Loss=1.57449, AvgLoss=1.95508, Acc=0.13802, AvgAcc=0.33120]333it [2:56:12, 50.59s/it, lr=6.75e-03, Loss=1.57449, AvgLoss=1.95508, Acc=0.13802, AvgAcc=0.33120]333it [2:56:13, 50.59s/it, lr=6.75e-03, Loss=2.33804, AvgLoss=1.95622, Acc=0.39974, AvgAcc=0.33140]334it [2:56:13, 35.51s/it, lr=6.75e-03, Loss=2.33804, AvgLoss=1.95622, Acc=0.39974, AvgAcc=0.33140]334it [2:56:13, 35.51s/it, lr=6.75e-03, Loss=1.57870, AvgLoss=1.95510, Acc=0.37500, AvgAcc=0.33153]335it [2:56:13, 24.95s/it, lr=6.75e-03, Loss=1.57870, AvgLoss=1.95510, Acc=0.37500, AvgAcc=0.33153]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:48:36,350] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:49:34,537] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
335it [2:58:06, 24.95s/it, lr=6.75e-03, Loss=4.28331, AvgLoss=1.96203, Acc=0.01953, AvgAcc=0.33061]336it [2:58:06, 51.26s/it, lr=6.75e-03, Loss=4.28331, AvgLoss=1.96203, Acc=0.01953, AvgAcc=0.33061]336it [2:58:06, 51.26s/it, lr=6.75e-03, Loss=1.36547, AvgLoss=1.96026, Acc=0.57292, AvgAcc=0.33132]337it [2:58:06, 35.97s/it, lr=6.75e-03, Loss=1.36547, AvgLoss=1.96026, Acc=0.57292, AvgAcc=0.33132]337it [2:58:06, 35.97s/it, lr=6.75e-03, Loss=1.28546, AvgLoss=1.95826, Acc=0.56120, AvgAcc=0.33200]338it [2:58:06, 25.28s/it, lr=6.75e-03, Loss=1.28546, AvgLoss=1.95826, Acc=0.56120, AvgAcc=0.33200]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:49:53,661] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
338it [2:59:56, 25.28s/it, lr=6.75e-03, Loss=1.53804, AvgLoss=1.95702, Acc=0.21615, AvgAcc=0.33166]339it [2:59:56, 50.64s/it, lr=6.75e-03, Loss=1.53804, AvgLoss=1.95702, Acc=0.21615, AvgAcc=0.33166]339it [2:59:56, 50.64s/it, lr=6.75e-03, Loss=3.61284, AvgLoss=1.96189, Acc=0.19661, AvgAcc=0.33127]340it [2:59:56, 35.55s/it, lr=6.75e-03, Loss=3.61284, AvgLoss=1.96189, Acc=0.19661, AvgAcc=0.33127]340it [2:59:57, 35.55s/it, lr=6.75e-03, Loss=1.29029, AvgLoss=1.95992, Acc=0.63672, AvgAcc=0.33216]341it [2:59:57, 24.99s/it, lr=6.75e-03, Loss=1.29029, AvgLoss=1.95992, Acc=0.63672, AvgAcc=0.33216]341it [3:01:56, 24.99s/it, lr=6.75e-03, Loss=1.74343, AvgLoss=1.95929, Acc=0.13411, AvgAcc=0.33158]342it [3:01:56, 53.29s/it, lr=6.75e-03, Loss=1.74343, AvgLoss=1.95929, Acc=0.13411, AvgAcc=0.33158]342it [3:01:56, 53.29s/it, lr=6.75e-03, Loss=1.94270, AvgLoss=1.95924, Acc=0.50130, AvgAcc=0.33208]343it [3:01:56, 37.40s/it, lr=6.75e-03, Loss=1.94270, AvgLoss=1.95924, Acc=0.50130, AvgAcc=0.33208]343it [3:01:57, 37.40s/it, lr=6.75e-03, Loss=1.40951, AvgLoss=1.95764, Acc=0.50911, AvgAcc=0.33259]344it [3:01:57, 26.35s/it, lr=6.75e-03, Loss=1.40951, AvgLoss=1.95764, Acc=0.50911, AvgAcc=0.33259]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:53:44,605] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:54:09,192] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
344it [3:03:55, 26.35s/it, lr=6.75e-03, Loss=1.61266, AvgLoss=1.95664, Acc=0.24870, AvgAcc=0.33235]345it [3:03:55, 53.84s/it, lr=6.75e-03, Loss=1.61266, AvgLoss=1.95664, Acc=0.24870, AvgAcc=0.33235]345it [3:03:55, 53.84s/it, lr=6.75e-03, Loss=1.65736, AvgLoss=1.95578, Acc=0.56120, AvgAcc=0.33301]346it [3:03:55, 37.78s/it, lr=6.75e-03, Loss=1.65736, AvgLoss=1.95578, Acc=0.56120, AvgAcc=0.33301]346it [3:03:56, 37.78s/it, lr=6.75e-03, Loss=1.77176, AvgLoss=1.95525, Acc=0.38021, AvgAcc=0.33315]347it [3:03:56, 26.54s/it, lr=6.75e-03, Loss=1.77176, AvgLoss=1.95525, Acc=0.38021, AvgAcc=0.33315]347it [3:05:53, 26.54s/it, lr=6.75e-03, Loss=1.88184, AvgLoss=1.95504, Acc=0.10677, AvgAcc=0.33250]348it [3:05:53, 53.71s/it, lr=6.75e-03, Loss=1.88184, AvgLoss=1.95504, Acc=0.10677, AvgAcc=0.33250]348it [3:05:53, 53.71s/it, lr=6.75e-03, Loss=1.65844, AvgLoss=1.95419, Acc=0.54036, AvgAcc=0.33309]349it [3:05:53, 37.70s/it, lr=6.75e-03, Loss=1.65844, AvgLoss=1.95419, Acc=0.54036, AvgAcc=0.33309]349it [3:05:53, 37.70s/it, lr=6.75e-03, Loss=1.40420, AvgLoss=1.95261, Acc=0.58724, AvgAcc=0.33382]350it [3:05:53, 26.48s/it, lr=6.75e-03, Loss=1.40420, AvgLoss=1.95261, Acc=0.58724, AvgAcc=0.33382]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 01:57:47,482] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 01:58:12,897] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 01:58:30,751] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
350it [3:07:56, 26.48s/it, lr=6.75e-03, Loss=1.71214, AvgLoss=1.95193, Acc=0.16276, AvgAcc=0.33333]351it [3:07:56, 55.48s/it, lr=6.75e-03, Loss=1.71214, AvgLoss=1.95193, Acc=0.16276, AvgAcc=0.33333]351it [3:07:57, 55.48s/it, lr=6.75e-03, Loss=1.78739, AvgLoss=1.95146, Acc=0.50911, AvgAcc=0.33383]352it [3:07:57, 38.94s/it, lr=6.75e-03, Loss=1.78739, AvgLoss=1.95146, Acc=0.50911, AvgAcc=0.33383]352it [3:07:57, 38.94s/it, lr=6.75e-03, Loss=1.34572, AvgLoss=1.94975, Acc=0.56250, AvgAcc=0.33448]353it [3:07:57, 27.35s/it, lr=6.75e-03, Loss=1.34572, AvgLoss=1.94975, Acc=0.56250, AvgAcc=0.33448]353it [3:09:50, 27.35s/it, lr=6.75e-03, Loss=1.64020, AvgLoss=1.94887, Acc=0.20833, AvgAcc=0.33412]354it [3:09:50, 53.06s/it, lr=6.75e-03, Loss=1.64020, AvgLoss=1.94887, Acc=0.20833, AvgAcc=0.33412]354it [3:09:50, 53.06s/it, lr=6.75e-03, Loss=1.51194, AvgLoss=1.94764, Acc=0.58333, AvgAcc=0.33482]355it [3:09:50, 37.23s/it, lr=6.75e-03, Loss=1.51194, AvgLoss=1.94764, Acc=0.58333, AvgAcc=0.33482]355it [3:09:51, 37.23s/it, lr=6.75e-03, Loss=1.32308, AvgLoss=1.94589, Acc=0.60547, AvgAcc=0.33558]356it [3:09:51, 26.17s/it, lr=6.75e-03, Loss=1.32308, AvgLoss=1.94589, Acc=0.60547, AvgAcc=0.33558]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 02:02:15,927] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 02:02:51,502] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
356it [3:11:32, 26.17s/it, lr=6.75e-03, Loss=1.61688, AvgLoss=1.94496, Acc=0.17708, AvgAcc=0.33514]357it [3:11:32, 48.73s/it, lr=6.75e-03, Loss=1.61688, AvgLoss=1.94496, Acc=0.17708, AvgAcc=0.33514]357it [3:11:32, 48.73s/it, lr=6.75e-03, Loss=1.56137, AvgLoss=1.94389, Acc=0.54427, AvgAcc=0.33572]358it [3:11:33, 34.22s/it, lr=6.75e-03, Loss=1.56137, AvgLoss=1.94389, Acc=0.54427, AvgAcc=0.33572]358it [3:11:33, 34.22s/it, lr=6.75e-03, Loss=1.31030, AvgLoss=1.94213, Acc=0.61068, AvgAcc=0.33649]359it [3:11:33, 24.07s/it, lr=6.75e-03, Loss=1.31030, AvgLoss=1.94213, Acc=0.61068, AvgAcc=0.33649]359it [3:13:29, 24.07s/it, lr=6.75e-03, Loss=1.71307, AvgLoss=1.94149, Acc=0.16927, AvgAcc=0.33602]360it [3:13:29, 51.82s/it, lr=6.75e-03, Loss=1.71307, AvgLoss=1.94149, Acc=0.16927, AvgAcc=0.33602]360it [3:13:30, 51.82s/it, lr=6.75e-03, Loss=1.50262, AvgLoss=1.94028, Acc=0.55469, AvgAcc=0.33663]361it [3:13:30, 36.38s/it, lr=6.75e-03, Loss=1.50262, AvgLoss=1.94028, Acc=0.55469, AvgAcc=0.33663]361it [3:13:30, 36.38s/it, lr=6.75e-03, Loss=1.26887, AvgLoss=1.93842, Acc=0.62370, AvgAcc=0.33742]362it [3:13:30, 25.57s/it, lr=6.75e-03, Loss=1.26887, AvgLoss=1.93842, Acc=0.62370, AvgAcc=0.33742]=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 02:06:11,978] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 02:06:31,290] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
362it [3:15:23, 25.57s/it, lr=6.75e-03, Loss=1.62438, AvgLoss=1.93756, Acc=0.19271, AvgAcc=0.33702]363it [3:15:23, 51.68s/it, lr=6.75e-03, Loss=1.62438, AvgLoss=1.93756, Acc=0.19271, AvgAcc=0.33702]363it [3:15:23, 51.68s/it, lr=6.75e-03, Loss=1.45171, AvgLoss=1.93622, Acc=0.58594, AvgAcc=0.33771]364it [3:15:23, 36.27s/it, lr=6.75e-03, Loss=1.45171, AvgLoss=1.93622, Acc=0.58594, AvgAcc=0.33771]364it [3:15:23, 36.27s/it, lr=6.75e-03, Loss=1.29258, AvgLoss=1.93446, Acc=0.53906, AvgAcc=0.33826]365it [3:15:23, 25.49s/it, lr=6.75e-03, Loss=1.29258, AvgLoss=1.93446, Acc=0.53906, AvgAcc=0.33826]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 02:07:09,998] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
365it [3:17:21, 25.49s/it, lr=6.75e-03, Loss=1.65856, AvgLoss=1.93370, Acc=0.14714, AvgAcc=0.33774]366it [3:17:21, 53.23s/it, lr=6.75e-03, Loss=1.65856, AvgLoss=1.93370, Acc=0.14714, AvgAcc=0.33774]366it [3:17:22, 53.23s/it, lr=6.75e-03, Loss=1.42601, AvgLoss=1.93232, Acc=0.58724, AvgAcc=0.33842]367it [3:17:22, 37.37s/it, lr=6.75e-03, Loss=1.42601, AvgLoss=1.93232, Acc=0.58724, AvgAcc=0.33842]367it [3:17:22, 37.37s/it, lr=6.75e-03, Loss=1.25458, AvgLoss=1.93048, Acc=0.60807, AvgAcc=0.33915]368it [3:17:22, 26.26s/it, lr=6.75e-03, Loss=1.25458, AvgLoss=1.93048, Acc=0.60807, AvgAcc=0.33915]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 02:10:43,132] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
368it [3:19:15, 26.26s/it, lr=6.75e-03, Loss=1.64180, AvgLoss=1.92970, Acc=0.14453, AvgAcc=0.33862]369it [3:19:15, 52.25s/it, lr=6.75e-03, Loss=1.64180, AvgLoss=1.92970, Acc=0.14453, AvgAcc=0.33862]369it [3:19:15, 52.25s/it, lr=6.75e-03, Loss=1.41875, AvgLoss=1.92832, Acc=0.58333, AvgAcc=0.33928]370it [3:19:15, 36.67s/it, lr=6.75e-03, Loss=1.41875, AvgLoss=1.92832, Acc=0.58333, AvgAcc=0.33928]370it [3:19:16, 36.67s/it, lr=6.75e-03, Loss=1.32165, AvgLoss=1.92668, Acc=0.51953, AvgAcc=0.33977]371it [3:19:16, 25.75s/it, lr=6.75e-03, Loss=1.32165, AvgLoss=1.92668, Acc=0.51953, AvgAcc=0.33977]=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 02:11:27,477] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
371it [3:21:04, 25.75s/it, lr=6.75e-03, Loss=1.60249, AvgLoss=1.92581, Acc=0.23568, AvgAcc=0.33949]372it [3:21:04, 50.53s/it, lr=6.75e-03, Loss=1.60249, AvgLoss=1.92581, Acc=0.23568, AvgAcc=0.33949]372it [3:21:04, 50.53s/it, lr=6.75e-03, Loss=1.37959, AvgLoss=1.92434, Acc=0.60286, AvgAcc=0.34020]373it [3:21:04, 35.46s/it, lr=6.75e-03, Loss=1.37959, AvgLoss=1.92434, Acc=0.60286, AvgAcc=0.34020]373it [3:21:05, 35.46s/it, lr=6.75e-03, Loss=1.23890, AvgLoss=1.92251, Acc=0.62760, AvgAcc=0.34096]374it [3:21:05, 24.92s/it, lr=6.75e-03, Loss=1.23890, AvgLoss=1.92251, Acc=0.62760, AvgAcc=0.34096]374it [3:23:01, 24.92s/it, lr=6.75e-03, Loss=1.61738, AvgLoss=1.92170, Acc=0.13411, AvgAcc=0.34041]375it [3:23:01, 52.48s/it, lr=6.75e-03, Loss=1.61738, AvgLoss=1.92170, Acc=0.13411, AvgAcc=0.34041]375it [3:23:02, 52.48s/it, lr=6.75e-03, Loss=1.31010, AvgLoss=1.92007, Acc=0.59766, AvgAcc=0.34110]376it [3:23:02, 36.83s/it, lr=6.75e-03, Loss=1.31010, AvgLoss=1.92007, Acc=0.59766, AvgAcc=0.34110]376it [3:23:02, 36.83s/it, lr=6.75e-03, Loss=1.28722, AvgLoss=1.91839, Acc=0.62240, AvgAcc=0.34184]377it [3:23:02, 25.90s/it, lr=6.75e-03, Loss=1.28722, AvgLoss=1.91839, Acc=0.62240, AvgAcc=0.34184]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 02:15:04,541] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker0, seed=2540573464 ===
[2024-04-23 02:15:20,648] INFO: Restarted DataIter train_worker0, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/dnnTuples_8065357-99.root",
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/dnnTuples_6839710-30.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 02:15:58,433] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
377it [3:25:01, 25.90s/it, lr=6.75e-03, Loss=1.46877, AvgLoss=1.91720, Acc=0.19271, AvgAcc=0.34145]378it [3:25:01, 53.77s/it, lr=6.75e-03, Loss=1.46877, AvgLoss=1.91720, Acc=0.19271, AvgAcc=0.34145]378it [3:25:01, 53.77s/it, lr=6.75e-03, Loss=1.28998, AvgLoss=1.91555, Acc=0.61589, AvgAcc=0.34217]379it [3:25:01, 37.73s/it, lr=6.75e-03, Loss=1.28998, AvgLoss=1.91555, Acc=0.61589, AvgAcc=0.34217]379it [3:25:01, 37.73s/it, lr=6.75e-03, Loss=1.22446, AvgLoss=1.91373, Acc=0.63151, AvgAcc=0.34293]380it [3:25:01, 26.50s/it, lr=6.75e-03, Loss=1.22446, AvgLoss=1.91373, Acc=0.63151, AvgAcc=0.34293]380it [3:26:57, 26.50s/it, lr=6.75e-03, Loss=1.47775, AvgLoss=1.91259, Acc=0.19010, AvgAcc=0.34253]381it [3:26:57, 53.28s/it, lr=6.75e-03, Loss=1.47775, AvgLoss=1.91259, Acc=0.19010, AvgAcc=0.34253]381it [3:26:58, 53.28s/it, lr=6.75e-03, Loss=1.39614, AvgLoss=1.91123, Acc=0.59115, AvgAcc=0.34318]382it [3:26:58, 37.41s/it, lr=6.75e-03, Loss=1.39614, AvgLoss=1.91123, Acc=0.59115, AvgAcc=0.34318]382it [3:26:58, 37.41s/it, lr=6.75e-03, Loss=1.27592, AvgLoss=1.90957, Acc=0.55208, AvgAcc=0.34373]383it [3:26:58, 26.29s/it, lr=6.75e-03, Loss=1.27592, AvgLoss=1.90957, Acc=0.55208, AvgAcc=0.34373]=== Restarting DataIter train_worker2, seed=2540573466 ===
[2024-04-23 02:19:23,372] INFO: Restarted DataIter train_worker2, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839711-9.root"
  ]
}
=== Restarting DataIter train_worker1, seed=2540573465 ===
[2024-04-23 02:20:13,113] INFO: Restarted DataIter train_worker1, load_range=(0.0, 0.8), file_list:
{
  "_": [
    "/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/dnnTuples_6839712-7.root"
  ]
}
383it [3:28:44, 26.29s/it, lr=6.75e-03, Loss=1.48514, AvgLoss=1.90847, Acc=0.19661, AvgAcc=0.34335]384it [3:28:44, 50.16s/it, lr=6.75e-03, Loss=1.48514, AvgLoss=1.90847, Acc=0.19661, AvgAcc=0.34335]384it [3:28:44, 50.16s/it, lr=6.75e-03, Loss=1.29680, AvgLoss=1.90688, Acc=0.60417, AvgAcc=0.34402]385it [3:28:44, 35.21s/it, lr=6.75e-03, Loss=1.29680, AvgLoss=1.90688, Acc=0.60417, AvgAcc=0.34402]385it [3:28:44, 35.21s/it, lr=6.75e-03, Loss=1.21782, AvgLoss=1.90510, Acc=0.56510, AvgAcc=0.34460]386it [3:28:44, 24.76s/it, lr=6.75e-03, Loss=1.21782, AvgLoss=1.90510, Acc=0.56510, AvgAcc=0.34460]