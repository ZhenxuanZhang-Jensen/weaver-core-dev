[2024-04-22 21:29:33,026] INFO: args:
 - ('train_mode', 'hybrid')
 - ('data_config', '/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/data_new/nonMD/ak8_nonMD_inclv8_forTop.yaml')
 - ('data_train', ['/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/*1*.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*1*.root', '/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*1*.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/*1*.root'])
 - ('data_val', [])
 - ('data_test', ['qcd:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*1*.root', 'Zprime:/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/infer/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*1*.root'])
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
 - ('num_workers', 10)
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
[2024-04-22 21:29:33,031] INFO: Running in hybrid mode
flist ['/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToZZToZhadZhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/*1*.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/ZprimeToTT_M1200to4500_W12to45_TuneCP2_PSweights/*1*.root', '/cms/user/zhangzhx/GloParT_data/20230504_ak8_UL17_v8/QCD_Pt_170toInf_ptBinned_TuneCP5_13TeV_pythia8/*1*.root', '/cms/user/zhangzhx/nonMD_TOP_ParT_data/nonMD_top_data/BulkGravToWWToWhadWhad_narrow_M-500to4500_TuneCP5_13TeV-madgraph-pythia/*1*.root']
[2024-04-22 21:29:49,192] INFO: Using 157 files for training, range: (0, 0.8)
[2024-04-22 21:29:49,192] INFO: Using 157 files for validation, range: (0.8, 1)
[2024-04-22 21:29:49,237] INFO: [0;37mpreprocess config: {'method': 'manual', 'data_fraction': None, 'params': None}[0m
[2024-04-22 21:29:49,237] INFO: [0;37mselection: (jet_tightId==1) & (jet_no<2) & (fj_pt>200) & (fj_pt<2500) & (fj_sdmass>=20) & (fj_sdmass<260) & (
  ( (fj_label_noH >= 28) & (fj_label_noH < 33) & (sample_isQCD==1) & (event_no%7!=0) ) |
  ( (fj_label_noH < 28) & (sample_isQCD==0)  & (event_no%7!=0) )
)[0m
[2024-04-22 21:29:49,237] INFO: [0;37mtest_time_selection: (jet_tightId==1) & (jet_no<2) & (
  ((sample_isQCD==1) & (event_no%2==0)) |
  (sample_isQCD==0)
)[0m
[2024-04-22 21:29:49,237] INFO: [0;37mvar_funcs:
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
[2024-04-22 21:29:49,237] INFO: [0;37minput_names: ('cpf_features', 'cpf_vectors', 'cpf_mask', 'npf_features', 'npf_vectors', 'npf_mask', 'sv_features', 'sv_vectors', 'sv_mask')[0m
[2024-04-22 21:29:49,237] INFO: [0;37minput_dicts:
 - ('cpf_features', ['cpfcandlt_pt_log_nopuppi_sort', 'cpfcandlt_e_log_nopuppi_sort', 'cpfcandlt_etarel_sort', 'cpfcandlt_phirel_sort', 'cpfcandlt_abseta_sort', 'cpfcandlt_charge_sort', 'cpfcandlt_isEl_sort', 'cpfcandlt_isMu_sort', 'cpfcandlt_isChargedHad_sort', 'cpfcandlt_isLostTrack_sort', 'cpfcandlt_VTX_ass_sort', 'cpfcandlt_lostInnerHits_sort', 'cpfcandlt_normchi2_sort', 'cpfcandlt_quality_sort', 'cpfcandlt_dz_sort', 'cpfcandlt_dzsig_sort', 'cpfcandlt_dxy_sort', 'cpfcandlt_dxysig_sort', 'cpfcandlt_btagEtaRel_sort', 'cpfcandlt_btagPtRatio_sort', 'cpfcandlt_btagPParRatio_sort', 'cpfcandlt_btagSip3dVal_sort', 'cpfcandlt_btagSip3dSig_sort', 'cpfcandlt_btagJetDistVal_sort', 'cpfcandlt_pixelBarrelLayersWithMeasurement_sort', 'cpfcandlt_pixelEndcapLayersWithMeasurement_sort', 'cpfcandlt_stripTECLayersWithMeasurement_sort', 'cpfcandlt_stripTIBLayersWithMeasurement_sort', 'cpfcandlt_stripTIDLayersWithMeasurement_sort', 'cpfcandlt_stripTOBLayersWithMeasurement_sort'])
 - ('cpf_vectors', ['cpfcandlt_px_sort', 'cpfcandlt_py_sort', 'cpfcandlt_pz_sort', 'cpfcandlt_energy_sort'])
 - ('cpf_mask', ['cpfcandlt_mask'])
 - ('npf_features', ['npfcand_pt_log_nopuppi', 'npfcand_e_log_nopuppi', 'npfcand_etarel', 'npfcand_phirel', 'npfcand_abseta', 'npfcand_isGamma', 'npfcand_isNeutralHad'])
 - ('npf_vectors', ['npfcand_px', 'npfcand_py', 'npfcand_pz', 'npfcand_energy'])
 - ('npf_mask', ['npfcand_mask'])
 - ('sv_features', ['sv_pt_log', 'sv_mass', 'sv_etarel', 'sv_phirel', 'sv_abseta', 'sv_ntracks', 'sv_normchi2', 'sv_dxy', 'sv_dxysig', 'sv_d3d', 'sv_d3dsig'])
 - ('sv_vectors', ['sv_px', 'sv_py', 'sv_pz', 'sv_energy'])
 - ('sv_mask', ['sv_mask'])[0m
[2024-04-22 21:29:49,237] INFO: [0;37minput_shapes:
 - ('cpf_features', (-1, 30, 90))
 - ('cpf_vectors', (-1, 4, 90))
 - ('cpf_mask', (-1, 1, 90))
 - ('npf_features', (-1, 7, 60))
 - ('npf_vectors', (-1, 4, 60))
 - ('npf_mask', (-1, 1, 60))
 - ('sv_features', (-1, 11, 10))
 - ('sv_vectors', (-1, 4, 10))
 - ('sv_mask', (-1, 1, 10))[0m
[2024-04-22 21:29:49,238] INFO: [0;37mpreprocess_params:
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
[2024-04-22 21:29:49,238] INFO: [0;37mlabel_names: ('_label_',)[0m
[2024-04-22 21:29:49,238] INFO: [0;37mobserver_names: ('event_no', 'fj_label', 'fj_pt', 'fj_eta', 'fj_phi', 'fj_mass', 'fj_sdmass', 'fj_sdmass_fromsubjets', 'fj_gen_mass', 'fj_genparts_mass', 'fj_genjet_sdmass', 'fj_genjet_nomu_sdmass', 'sample_isQCD', 'pfParticleNetDiscriminatorsJetTags_ZvsQCD', 'pfParticleNetDiscriminatorsJetTags_TvsQCD', 'pfParticleNetDiscriminatorsJetTags_WvsQCD', 'pfParticleNetJetTags_probHbb', 'pfParticleNetJetTags_probHcc', 'pfParticleNetJetTags_probHqqqq', 'pfParticleNetJetTags_probQCDb', 'pfParticleNetJetTags_probQCDbb', 'pfParticleNetJetTags_probQCDc', 'pfParticleNetJetTags_probQCDcc', 'pfParticleNetJetTags_probQCDothers', 'pfParticleNetJetTags_probTbc', 'pfParticleNetJetTags_probTbcq', 'pfParticleNetJetTags_probTbel', 'pfParticleNetJetTags_probTbmu', 'pfParticleNetJetTags_probTbq', 'pfParticleNetJetTags_probTbqq', 'pfParticleNetJetTags_probTbta', 'pfParticleNetJetTags_probWcq', 'pfParticleNetJetTags_probWqq', 'pfParticleNetJetTags_probZbb', 'pfParticleNetJetTags_probZcc', 'pfParticleNetJetTags_probZqq')[0m
[2024-04-22 21:29:49,238] INFO: [0;37mmonitor_variables: ()[0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_method: flat[0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_basewgt: None[0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_branches: ('fj_pt', 'fj_sdmass')[0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_bins: ([200, 251, 316, 398, 501, 630, 793, 997, 1255, 1579, 1987, 2500], [-99999, 99999])[0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_classes: ('fj_isQCD', 'fj_isTop', 'fj_isW', 'fj_isZ')[0m
[2024-04-22 21:29:49,238] INFO: [0;37mclass_weights: [1, 1, 1, 1][0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_threshold: 10[0m
[2024-04-22 21:29:49,238] INFO: [0;37mreweight_discard_under_overflow: True[0m
  0%|                                                                                             | 0/157 [00:00<?, ?it/s]  1%|▌                                                                                    | 1/157 [00:01<03:45,  1.45s/it]  1%|█                                                                                    | 2/157 [00:02<02:38,  1.02s/it]  2%|█▌                                                                                   | 3/157 [00:03<03:23,  1.32s/it]  3%|██▏                                                                                  | 4/157 [00:05<03:45,  1.47s/it]  3%|██▋                                                                                  | 5/157 [00:06<03:37,  1.43s/it]  4%|███▏                                                                                 | 6/157 [00:08<03:22,  1.34s/it]  4%|███▊                                                                                 | 7/157 [00:09<03:22,  1.35s/it]  5%|████▎                                                                                | 8/157 [00:10<03:10,  1.28s/it]  6%|████▊                                                                                | 9/157 [00:12<03:41,  1.50s/it]  6%|█████▎                                                                              | 10/157 [00:13<03:31,  1.44s/it]  7%|█████▉                                                                              | 11/157 [00:15<03:43,  1.53s/it]  8%|██████▍                                                                             | 12/157 [00:17<04:09,  1.72s/it]  8%|██████▉                                                                             | 13/157 [00:19<04:03,  1.69s/it]  9%|███████▍                                                                            | 14/157 [00:21<04:07,  1.73s/it] 10%|████████                                                                            | 15/157 [00:22<04:01,  1.70s/it] 10%|████████▌                                                                           | 16/157 [00:25<04:39,  1.99s/it] 11%|█████████                                                                           | 17/157 [00:28<05:30,  2.36s/it] 11%|█████████▋                                                                          | 18/157 [00:31<05:38,  2.44s/it] 12%|██████████▏                                                                         | 19/157 [00:33<05:09,  2.24s/it] 13%|██████████▋                                                                         | 20/157 [00:34<04:33,  2.00s/it] 13%|███████████▏                                                                        | 21/157 [00:36<04:47,  2.11s/it] 14%|███████████▊                                                                        | 22/157 [00:38<04:40,  2.08s/it] 15%|████████████▎                                                                       | 23/157 [00:40<04:12,  1.88s/it] 15%|████████████▊                                                                       | 24/157 [00:41<03:45,  1.69s/it] 16%|█████████████▍                                                                      | 25/157 [00:42<03:19,  1.51s/it] 17%|█████████████▉                                                                      | 26/157 [00:44<03:38,  1.67s/it] 17%|██████████████▍                                                                     | 27/157 [00:46<03:35,  1.66s/it] 18%|██████████████▉                                                                     | 28/157 [00:47<03:24,  1.58s/it] 18%|███████████████▌                                                                    | 29/157 [00:48<03:07,  1.46s/it] 19%|████████████████                                                                    | 30/157 [00:50<03:02,  1.44s/it] 20%|████████████████▌                                                                   | 31/157 [00:52<03:30,  1.67s/it] 20%|█████████████████                                                                   | 32/157 [00:54<03:22,  1.62s/it] 21%|█████████████████▋                                                                  | 33/157 [00:55<03:02,  1.47s/it] 22%|██████████████████▏                                                                 | 34/157 [00:56<03:00,  1.47s/it] 22%|██████████████████▋                                                                 | 35/157 [00:57<02:44,  1.35s/it] 23%|███████████████████▎                                                                | 36/157 [00:58<02:40,  1.32s/it] 24%|███████████████████▊                                                                | 37/157 [01:00<02:40,  1.33s/it] 24%|████████████████████▎                                                               | 38/157 [01:02<02:55,  1.48s/it] 25%|████████████████████▊                                                               | 39/157 [01:03<02:44,  1.39s/it] 25%|█████████████████████▍                                                              | 40/157 [01:04<02:38,  1.35s/it] 26%|█████████████████████▉                                                              | 41/157 [01:06<02:58,  1.54s/it] 27%|██████████████████████▍                                                             | 42/157 [01:08<03:06,  1.62s/it] 27%|███████████████████████                                                             | 43/157 [01:09<02:55,  1.54s/it] 28%|███████████████████████▌                                                            | 44/157 [01:11<02:47,  1.48s/it] 29%|████████████████████████                                                            | 45/157 [01:12<02:38,  1.42s/it] 29%|████████████████████████▌                                                           | 46/157 [01:13<02:22,  1.28s/it] 30%|█████████████████████████▏                                                          | 47/157 [01:15<02:42,  1.48s/it] 31%|█████████████████████████▋                                                          | 48/157 [01:16<02:38,  1.45s/it] 31%|██████████████████████████▏                                                         | 49/157 [01:17<02:31,  1.40s/it] 32%|██████████████████████████▊                                                         | 50/157 [01:19<02:30,  1.41s/it] 32%|███████████████████████████▎                                                        | 51/157 [01:20<02:34,  1.46s/it] 33%|███████████████████████████▊                                                        | 52/157 [01:23<02:55,  1.67s/it] 34%|████████████████████████████▎                                                       | 53/157 [01:24<02:45,  1.59s/it] 34%|████████████████████████████▉                                                       | 54/157 [01:25<02:31,  1.47s/it] 35%|█████████████████████████████▍                                                      | 55/157 [01:26<02:25,  1.43s/it] 36%|█████████████████████████████▉                                                      | 56/157 [01:28<02:18,  1.37s/it] 36%|██████████████████████████████▍                                                     | 57/157 [01:29<02:27,  1.47s/it] 37%|███████████████████████████████                                                     | 58/157 [01:32<02:44,  1.66s/it] 38%|███████████████████████████████▌                                                    | 59/157 [01:33<02:40,  1.64s/it] 38%|████████████████████████████████                                                    | 60/157 [01:34<02:23,  1.48s/it] 39%|████████████████████████████████▋                                                   | 61/157 [01:36<02:32,  1.58s/it] 39%|█████████████████████████████████▏                                                  | 62/157 [01:37<02:05,  1.32s/it] 40%|█████████████████████████████████▋                                                  | 63/157 [01:37<01:46,  1.13s/it] 41%|██████████████████████████████████▏                                                 | 64/157 [01:39<01:46,  1.14s/it] 41%|██████████████████████████████████▊                                                 | 65/157 [01:40<01:44,  1.14s/it] 42%|███████████████████████████████████▎                                                | 66/157 [01:41<01:51,  1.22s/it] 43%|███████████████████████████████████▊                                                | 67/157 [01:43<02:04,  1.38s/it] 43%|████████████████████████████████████▍                                               | 68/157 [01:44<01:59,  1.34s/it] 44%|████████████████████████████████████▉                                               | 69/157 [01:45<01:56,  1.32s/it] 45%|█████████████████████████████████████▍                                              | 70/157 [01:47<01:49,  1.26s/it] 45%|█████████████████████████████████████▉                                              | 71/157 [01:48<01:45,  1.22s/it] 46%|██████████████████████████████████████▌                                             | 72/157 [01:49<01:39,  1.17s/it] 46%|███████████████████████████████████████                                             | 73/157 [01:51<02:04,  1.48s/it] 47%|███████████████████████████████████████▌                                            | 74/157 [01:52<01:45,  1.27s/it] 48%|████████████████████████████████████████▏                                           | 75/157 [01:53<01:43,  1.26s/it] 48%|████████████████████████████████████████▋                                           | 76/157 [01:54<01:41,  1.25s/it] 49%|█████████████████████████████████████████▏                                          | 77/157 [01:55<01:38,  1.23s/it] 50%|█████████████████████████████████████████▋                                          | 78/157 [01:57<01:37,  1.23s/it] 50%|██████████████████████████████████████████▎                                         | 79/157 [01:59<01:59,  1.54s/it] 51%|██████████████████████████████████████████▊                                         | 80/157 [02:00<01:51,  1.44s/it] 52%|███████████████████████████████████████████▎                                        | 81/157 [02:02<01:50,  1.45s/it] 52%|███████████████████████████████████████████▊                                        | 82/157 [02:03<01:43,  1.38s/it] 53%|████████████████████████████████████████████▍                                       | 83/157 [02:04<01:47,  1.45s/it] 54%|████████████████████████████████████████████▉                                       | 84/157 [02:06<01:59,  1.64s/it] 54%|█████████████████████████████████████████████▍                                      | 85/157 [02:07<01:41,  1.41s/it] 55%|██████████████████████████████████████████████                                      | 86/157 [02:09<01:38,  1.39s/it] 55%|██████████████████████████████████████████████▌                                     | 87/157 [02:10<01:35,  1.36s/it] 56%|███████████████████████████████████████████████                                     | 88/157 [02:11<01:35,  1.38s/it] 57%|███████████████████████████████████████████████▌                                    | 89/157 [02:13<01:29,  1.31s/it] 57%|████████████████████████████████████████████████▏                                   | 90/157 [02:14<01:32,  1.38s/it] 58%|████████████████████████████████████████████████▋                                   | 91/157 [02:15<01:23,  1.27s/it] 59%|█████████████████████████████████████████████████▏                                  | 92/157 [02:17<01:36,  1.49s/it] 59%|█████████████████████████████████████████████████▊                                  | 93/157 [02:19<01:43,  1.62s/it] 60%|██████████████████████████████████████████████████▎                                 | 94/157 [02:21<01:48,  1.72s/it] 61%|██████████████████████████████████████████████████▊                                 | 95/157 [02:22<01:35,  1.54s/it] 61%|███████████████████████████████████████████████████▎                                | 96/157 [02:23<01:21,  1.33s/it] 62%|███████████████████████████████████████████████████▉                                | 97/157 [02:25<01:33,  1.55s/it] 62%|████████████████████████████████████████████████████▍                               | 98/157 [02:27<01:35,  1.63s/it] 63%|████████████████████████████████████████████████████▉                               | 99/157 [02:29<01:36,  1.66s/it] 64%|████████████████████████████████████████████████████▊                              | 100/157 [02:30<01:29,  1.58s/it] 64%|█████████████████████████████████████████████████████▍                             | 101/157 [02:32<01:43,  1.84s/it] 65%|█████████████████████████████████████████████████████▉                             | 102/157 [02:34<01:40,  1.83s/it] 66%|██████████████████████████████████████████████████████▍                            | 103/157 [02:36<01:35,  1.76s/it] 66%|██████████████████████████████████████████████████████▉                            | 104/157 [02:38<01:47,  2.03s/it] 67%|███████████████████████████████████████████████████████▌                           | 105/157 [02:40<01:42,  1.97s/it] 68%|████████████████████████████████████████████████████████                           | 106/157 [02:43<01:50,  2.16s/it] 68%|████████████████████████████████████████████████████████▌                          | 107/157 [02:44<01:30,  1.80s/it] 68%|████████████████████████████████████████████████████████▌                          | 107/157 [02:45<01:17,  1.55s/it]
Traceback (most recent call last):
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 923, in <module>
    main()
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 919, in main
    _main(args)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 712, in _main
    train_loader, val_loader, data_config, train_input_names, train_label_names = train_load(args)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/train.py", line 227, in train_load
    train_data = SimpleIterDataset(train_file_dict, args.data_config, for_training=True,
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/dataset.py", line 340, in __init__
    self._data_config = w.produce(data_config_autogen_file)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/data/preprocess.py", line 274, in produce
    table = self.read_file(self._filelist)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/data/preprocess.py", line 176, in read_file
    table = _read_files(filelist, self.load_branches, show_progressbar=True, treename=self._data_config.treename)
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/data/fileio.py", line 310, in _read_files
    a = _read_root(filepath, branches, load_range=load_range, treename=kwargs.get('treename', None))
  File "/hpcfs/cms/cmsgpu/zhangzhx/weaver-core-dev/weaver/utils/data/fileio.py", line 265, in _read_root
    outputs = tree.arrays(filter_name=_branches, entry_start=start, entry_stop=stop)
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/behaviors/TBranch.py", line 842, in arrays
    _ranges_or_baskets_to_arrays(
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/behaviors/TBranch.py", line 3140, in _ranges_or_baskets_to_arrays
    decompression_executor.submit(chunk_to_basket, obj, *args)
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/source/futures.py", line 104, in submit
    return TrivialFuture(task(*args, **kwargs))
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/behaviors/TBranch.py", line 3062, in chunk_to_basket
    basket = uproot.models.TBasket.Model_TBasket.read(
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/model.py", line 858, in read
    self.read_members(chunk, cursor, context, file)
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/models/TBasket.py", line 291, in read_members
    uncompressed = uproot.compression.decompress(
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/compression.py", line 411, in decompress
    uncompressed_bytestring = decompressor.decompress(
  File "/hpcfs/cms/cmsgpu/zhangzhx/miniconda3/envs/ML_env/lib/python3.10/site-packages/uproot/compression.py", line 94, in decompress
    return zlib.decompress(data)
KeyboardInterrupt
