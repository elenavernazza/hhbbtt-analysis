
###############################################################################################################################################
############################################################  PREPROCESS  #####################################################################
###############################################################################################################################################

YEAR=2018
# New definition of the elliptical mass cut !!!

###############################################################################################################################################
# COMMON STEP TO ALL THE ANALYES: 
###############################################################################################################################################

law run PreprocessRDFWrapper --version prod_240305 --category-names base_selection --config-name ul_${YEAR}_ZZ_v12 \
 --dataset-names zz_sl_signal,zz_sl_background,zh_htt,zh_hbb_zll,zz_bbtt,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j \
 --PreprocessRDF-modules-file modulesrdf \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file --workers 10 \
 --PreprocessRDF-workflow htcondor --PreprocessRDF-htcondor-scheduler llrt3condor.in2p3.fr --PreprocessRDF-transfer-logs \
 --PreprocessRDF-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=long,WNTag=el7'

law run PreprocessRDFWrapper --version prod_240305 --category-names base_selection --config-name ul_${YEAR}_ZZ_v12 \
 --dataset-names ewk_z,ewk_wplus,ewk_wminus,tt_dl,tt_sl,tt_fh,st_tw_antitop,st_tw_top,st_antitop,st_top,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm \
 --PreprocessRDF-modules-file modulesrdf \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file --workers 10 \
 --PreprocessRDF-workflow htcondor --PreprocessRDF-htcondor-scheduler llrt3condor.in2p3.fr --PreprocessRDF-transfer-logs \
 --PreprocessRDF-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=reserv,WNTag=el7'

law run PreprocessRDFWrapper --version prod_240305 --category-names base_selection --config-name ul_${YEAR}_ZZ_v12 \
 --dataset-names data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_etau_a,data_etau_b,data_etau_c,data_etau_d \
 --PreprocessRDF-modules-file modulesrdf \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file --workers 10 \
 --PreprocessRDF-workflow htcondor --PreprocessRDF-htcondor-scheduler llrt3condor.in2p3.fr --PreprocessRDF-transfer-logs \
 --PreprocessRDF-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=long,WNTag=el7'

###############################################################################################################################################
############################################################  PRECOUNTER  #####################################################################
###############################################################################################################################################

###############################################################################################################################################
# COMMON STEP TO ALL THE ANALYES: 
###############################################################################################################################################

law run MergeCategorizationStatsWrapper --version prod_240305 --config-name ul_${YEAR}_ZZ_v12 \
 --dataset-tags secondary \
 --workers 30 --PreCounter-weights-file weights --systematic-names pu \
 --PreCounter-workflow htcondor --PreCounter-htcondor-scheduler llrt3condor.in2p3.fr --PreCounter-transfer-logs \
 --PreCounter-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'

###############################################################################################################################################
############################################################  CATEGORIZATION  #################################################################
###############################################################################################################################################

###############################################################################################################################################
# ELLIPTICAL MASS CUT
###############################################################################################################################################

law run CategorizationWrapper --version prod_240312 --category-names base --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary,res \
 --PreprocessRDF-version prod_240305 \
 --Categorization-base-category-name base_selection --Categorization-feature-modules-file modulesrdf_Ellipse --workers 30 \
 --Categorization-workflow htcondor --Categorization-htcondor-scheduler llrt3condor.in2p3.fr --Categorization-transfer-logs \
 --Categorization-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'

law run CategorizationWrapper --version prod_240326 --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary,res --category-names base \
 --PreprocessRDF-version prod_240305 \
 --PreprocessRDF-modules-file modulesrdf \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file \
 --Categorization-base-category-name base_selection \
 --Categorization-feature-modules-file modulesrdf_syst --workers 50 \
 --Categorization-workflow htcondor --Categorization-htcondor-scheduler llrt3condor.in2p3.fr --Categorization-transfer-logs \
 --Categorization-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'

###############################################################################################################################################
# CONTROL REGION ETAU, MUTAU, TAUTAU
###############################################################################################################################################

law run CategorizationWrapper --version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary --category-names ZZ_elliptical_cut_90_CR_resolved_1b,ZZ_elliptical_cut_90_CR_resolved_2b,ZZ_elliptical_cut_90_CR_boosted_noPNet,ZZ_elliptical_cut_90_CR \
 --PreprocessRDF-version prod_240305 \
 --Categorization-base-category-name base_selection \
 --Categorization-feature-modules-file modulesrdf_syst --workers 20 --Categorization-tasks-per-job 5 --Categorization-poll-interval 5 \
 --Categorization-workflow htcondor --Categorization-htcondor-scheduler llrt3condor.in2p3.fr --Categorization-transfer-logs \
 --Categorization-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'

law run MergeCategorizationWrapper --version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary --category-names ZZ_elliptical_cut_90_CR_resolved_1b,ZZ_elliptical_cut_90_CR_resolved_2b,ZZ_elliptical_cut_90_CR_boosted_noPNet,ZZ_elliptical_cut_90_CR \
 --PreprocessRDF-version prod_240305 --Categorization-version prod_240522 \
 --JoinDNNInference-base-category-name base_selection \
 --JoinDNNInference-feature-modules-file modulesrdf_syst \
 --MergeCategorization-from-DNN-inference True --workers 10

law run MergeCategorizationWrapper --version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary --category-names ZZ_elliptical_cut_90_CR \
 --PreprocessRDF-version prod_240305 --Categorization-version prod_240522 \
 --JoinDNNInference-base-category-name base_selection \
 --JoinDNNInference-feature-modules-file modulesrdf_syst \
 --MergeCategorization-from-DNN-inference True --workers 10

###############################################################################################################################################
# ANALYSIS ETAU, MUTAU, TAUTAU
###############################################################################################################################################

law run CategorizationWrapper --version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary --category-names ZZ_elliptical_cut_90_resolved_1b,ZZ_elliptical_cut_90_resolved_2b,ZZ_elliptical_cut_90_boosted_noPNet \
 --PreprocessRDF-version prod_240305 \
 --Categorization-base-category-name base_selection \
 --Categorization-feature-modules-file modulesrdf_syst --workers 20 --Categorization-tasks-per-job 5 --Categorization-poll-interval 5 \
 --Categorization-workflow htcondor --Categorization-htcondor-scheduler llrt3condor.in2p3.fr --Categorization-transfer-logs \
 --Categorization-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'
law run MergeCategorizationWrapper --version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --skip-dataset-tags secondary --category-names ZZ_elliptical_cut_90_resolved_1b,ZZ_elliptical_cut_90_resolved_2b,ZZ_elliptical_cut_90_boosted_noPNet \
 --PreprocessRDF-version prod_240305 --Categorization-version prod_240522 \
 --JoinDNNInference-base-category-name base_selection \
 --JoinDNNInference-feature-modules-file modulesrdf_syst \
 --MergeCategorization-from-DNN-inference True --workers 30

###############################################################################################################################################
############################################################  PLOTTING  #######################################################################
###############################################################################################################################################

###############################################################################################################################################
# ANALYSIS ETAU, MUTAU, TAUTAU - AN BASELINE PLOTS
###############################################################################################################################################

law run FeaturePlot --version prod_240605 --PrePlot-skip-merging --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,ZZKinFit_chi2,ZZKinFit_mass,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name etau_os_iso  --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240605 --PrePlot-skip-merging --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,ZZKinFit_chi2,ZZKinFit_mass,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name mutau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240605 --PrePlot-skip-merging --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,ZZKinFit_chi2,ZZKinFit_mass,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name tautau_os_iso --stack --do-qcd --hide-data False

law run FeaturePlot --version prod_240605 --PrePlot-skip-merging --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,btagging \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name etau_os_iso  --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240605 --PrePlot-skip-merging --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,btagging \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240605 --PrePlot-skip-merging --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,btagging \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1

python3 ToRun/MoveToEos.py --region CR --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_base --prd prod_240605 --grp zz


# for the thesis
law run FeaturePlot --version prod_240708 --PrePlot-skip-merging --PrePlot-version prod_240708 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ele_pt,ele_eta,bjet1_pt,bjet1_eta,met_pt \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name etau_os_iso  --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240708 --PrePlot-skip-merging --PrePlot-version prod_240708 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names muon_pt,muon_eta,bjet1_pt,bjet1_eta,met_pt \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name mutau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240708 --PrePlot-skip-merging --PrePlot-version prod_240708 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names tau_pt,tau_eta,bjet1_pt,bjet1_eta,met_pt \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240326 \
 --process-group-name zz --save-png --category-name base --region-name tautau_os_iso --stack --do-qcd --hide-data False

###############################################################################################################################################
# ANALYSIS ETAU, MUTAU, TAUTAU - AN CR (WITH AND WITHOUT CATEGORIES) PLOTS
###############################################################################################################################################

for cat in ZZ_elliptical_cut_90_CR_resolved_1b ZZ_elliptical_cut_90_CR_resolved_2b ZZ_elliptical_cut_90_CR_boosted_noPNet ZZ_elliptical_cut_90_CR; do
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,ZZKinFit_mass,ZZKinFit_mass_fit_1,ZZKinFit_mass_fit_2,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,ZZKinFit_mass,ZZKinFit_mass_fit_1,ZZKinFit_mass_fit_2,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,ZZKinFit_mass,ZZKinFit_mass_fit_1,ZZKinFit_mass_fit_2,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False ; 
done

for cat in ZZ_elliptical_cut_90_CR_resolved_1b ZZ_elliptical_cut_90_CR_resolved_2b ZZ_elliptical_cut_90_CR_boosted_noPNet ZZ_elliptical_cut_90_CR; do
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,btagging \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,btagging \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR,dnn_ZZbbtt_kl_1,btagging \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1 ; 
done

python3 ToRun/MoveToEos.py --region CR --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_ZZ_elliptical_cut_90_CR_resolved_1b,cat_ZZ_elliptical_cut_90_CR_resolved_2b,cat_ZZ_elliptical_cut_90_CR_boosted_noPNet,cat_ZZ_elliptical_cut_90_CR \
    --prd prod_240605 --grp zz

###############################################################################################################################################
# ANALYSIS ETAU, MUTAU, TAUTAU - AN SR PLOTS NON RES
###############################################################################################################################################

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass,ZZKinFit_mass_fit_1,ZZKinFit_mass_fit_2,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass,ZZKinFit_mass_fit_1,ZZKinFit_mass_fit_2,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True 
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass,ZZKinFit_mass_fit_1,ZZKinFit_mass_fit_2,ZZ_svfit_pt,ZZ_svfit_eta,ZZ_svfit_phi,ZZ_svfit_mass,Ztt_svfit_pt,Ztt_svfit_eta,Ztt_svfit_phi,Ztt_svfit_mass,\
Ztt_met_pt,Ztt_met_eta,Ztt_met_phi,Ztt_met_mass,Zbb_pt,Zbb_eta,Zbb_phi,Zbb_mass,lep1_pt,lep1_eta,lep1_phi,lep2_pt,lep2_eta,lep2_phi,bjet1_eta,bjet1_phi,bjet1_pt,bjet2_eta,bjet2_phi,bjet2_pt,\
met_pt,met_phi,btagging,dR_tautau \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True ; 
done

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso \
 --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso \
 --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1 ; 
done

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --multiply-signals-normalization 10.
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --multiply-signals-normalization 10.
law run FeaturePlot --version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --multiply-signals-normalization 10. ; 
done

python3 ToRun/MoveToEos.py --region SR --type NonRes --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_ZZ_elliptical_cut_90_resolved_1b,cat_ZZ_elliptical_cut_90_resolved_2b,cat_ZZ_elliptical_cut_90_boosted_noPNet \
    --prd prod_240605 --grp zz

###############################################################################################################################################
# ANALYSIS ETAU, MUTAU, TAUTAU - AN SR PLOTS RES
###############################################################################################################################################

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeatureHistogram --version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_low,ZZKinFit_mass_res_high,dnn_ZZbbtt_kl_1_200,dnn_ZZbbtt_kl_1_210,dnn_ZZbbtt_kl_1_220,dnn_ZZbbtt_kl_1_230,\
dnn_ZZbbtt_kl_1_240,dnn_ZZbbtt_kl_1_250,dnn_ZZbbtt_kl_1_260,dnn_ZZbbtt_kl_1_270,dnn_ZZbbtt_kl_1_280,dnn_ZZbbtt_kl_1_300,dnn_ZZbbtt_kl_1_320,\
dnn_ZZbbtt_kl_1_350,dnn_ZZbbtt_kl_1_360,dnn_ZZbbtt_kl_1_400,dnn_ZZbbtt_kl_1_450,dnn_ZZbbtt_kl_1_500,dnn_ZZbbtt_kl_1_550,dnn_ZZbbtt_kl_1_600,\
dnn_ZZbbtt_kl_1_650,dnn_ZZbbtt_kl_1_700,dnn_ZZbbtt_kl_1_750,dnn_ZZbbtt_kl_1_800,dnn_ZZbbtt_kl_1_850,dnn_ZZbbtt_kl_1_900,dnn_ZZbbtt_kl_1_1000,\
dnn_ZZbbtt_kl_1_1100,dnn_ZZbbtt_kl_1_1200,dnn_ZZbbtt_kl_1_1300,dnn_ZZbbtt_kl_1_1400,dnn_ZZbbtt_kl_1_1500,dnn_ZZbbtt_kl_1_1600,dnn_ZZbbtt_kl_1_1700,\
dnn_ZZbbtt_kl_1_1800,dnn_ZZbbtt_kl_1_1900,dnn_ZZbbtt_kl_1_2000,dnn_ZZbbtt_kl_1_2200,dnn_ZZbbtt_kl_1_2400,dnn_ZZbbtt_kl_1_2500,dnn_ZZbbtt_kl_1_2600,\
dnn_ZZbbtt_kl_1_2800,dnn_ZZbbtt_kl_1_3000,dnn_ZZbbtt_kl_1_3500,dnn_ZZbbtt_kl_1_4000,dnn_ZZbbtt_kl_1_4500,dnn_ZZbbtt_kl_1_5000 \
 --dataset-names GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M210,GluGluToXToZZTo2B2Tau_M220,GluGluToXToZZTo2B2Tau_M230,\
GluGluToXToZZTo2B2Tau_M240,GluGluToXToZZTo2B2Tau_M250,GluGluToXToZZTo2B2Tau_M260,GluGluToXToZZTo2B2Tau_M270,GluGluToXToZZTo2B2Tau_M280,\
GluGluToXToZZTo2B2Tau_M300,GluGluToXToZZTo2B2Tau_M320,GluGluToXToZZTo2B2Tau_M350,GluGluToXToZZTo2B2Tau_M360,GluGluToXToZZTo2B2Tau_M400,\
GluGluToXToZZTo2B2Tau_M450,GluGluToXToZZTo2B2Tau_M500,GluGluToXToZZTo2B2Tau_M550,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M650,\
GluGluToXToZZTo2B2Tau_M700,GluGluToXToZZTo2B2Tau_M750,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M850,GluGluToXToZZTo2B2Tau_M900,\
GluGluToXToZZTo2B2Tau_M1000,GluGluToXToZZTo2B2Tau_M1100,GluGluToXToZZTo2B2Tau_M1200,GluGluToXToZZTo2B2Tau_M1300,GluGluToXToZZTo2B2Tau_M1400,\
GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M1600,GluGluToXToZZTo2B2Tau_M1700,GluGluToXToZZTo2B2Tau_M1800,GluGluToXToZZTo2B2Tau_M1900,\
GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M2200,GluGluToXToZZTo2B2Tau_M2400,GluGluToXToZZTo2B2Tau_M2500,GluGluToXToZZTo2B2Tau_M2600,\
GluGluToXToZZTo2B2Tau_M2800,GluGluToXToZZTo2B2Tau_M3000,GluGluToXToZZTo2B2Tau_M3500,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M4500,\
GluGluToXToZZTo2B2Tau_M5000,zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 30 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name etau_os_iso --do-qcd --hide-data True
law run FeatureHistogram --version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_low,ZZKinFit_mass_res_high,dnn_ZZbbtt_kl_1_200,dnn_ZZbbtt_kl_1_210,dnn_ZZbbtt_kl_1_220,dnn_ZZbbtt_kl_1_230,\
dnn_ZZbbtt_kl_1_240,dnn_ZZbbtt_kl_1_250,dnn_ZZbbtt_kl_1_260,dnn_ZZbbtt_kl_1_270,dnn_ZZbbtt_kl_1_280,dnn_ZZbbtt_kl_1_300,dnn_ZZbbtt_kl_1_320,\
dnn_ZZbbtt_kl_1_350,dnn_ZZbbtt_kl_1_360,dnn_ZZbbtt_kl_1_400,dnn_ZZbbtt_kl_1_450,dnn_ZZbbtt_kl_1_500,dnn_ZZbbtt_kl_1_550,dnn_ZZbbtt_kl_1_600,\
dnn_ZZbbtt_kl_1_650,dnn_ZZbbtt_kl_1_700,dnn_ZZbbtt_kl_1_750,dnn_ZZbbtt_kl_1_800,dnn_ZZbbtt_kl_1_850,dnn_ZZbbtt_kl_1_900,dnn_ZZbbtt_kl_1_1000,\
dnn_ZZbbtt_kl_1_1100,dnn_ZZbbtt_kl_1_1200,dnn_ZZbbtt_kl_1_1300,dnn_ZZbbtt_kl_1_1400,dnn_ZZbbtt_kl_1_1500,dnn_ZZbbtt_kl_1_1600,dnn_ZZbbtt_kl_1_1700,\
dnn_ZZbbtt_kl_1_1800,dnn_ZZbbtt_kl_1_1900,dnn_ZZbbtt_kl_1_2000,dnn_ZZbbtt_kl_1_2200,dnn_ZZbbtt_kl_1_2400,dnn_ZZbbtt_kl_1_2500,dnn_ZZbbtt_kl_1_2600,\
dnn_ZZbbtt_kl_1_2800,dnn_ZZbbtt_kl_1_3000,dnn_ZZbbtt_kl_1_3500,dnn_ZZbbtt_kl_1_4000,dnn_ZZbbtt_kl_1_4500,dnn_ZZbbtt_kl_1_5000 \
 --dataset-names GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M210,GluGluToXToZZTo2B2Tau_M220,GluGluToXToZZTo2B2Tau_M230,\
GluGluToXToZZTo2B2Tau_M240,GluGluToXToZZTo2B2Tau_M250,GluGluToXToZZTo2B2Tau_M260,GluGluToXToZZTo2B2Tau_M270,GluGluToXToZZTo2B2Tau_M280,\
GluGluToXToZZTo2B2Tau_M300,GluGluToXToZZTo2B2Tau_M320,GluGluToXToZZTo2B2Tau_M350,GluGluToXToZZTo2B2Tau_M360,GluGluToXToZZTo2B2Tau_M400,\
GluGluToXToZZTo2B2Tau_M450,GluGluToXToZZTo2B2Tau_M500,GluGluToXToZZTo2B2Tau_M550,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M650,\
GluGluToXToZZTo2B2Tau_M700,GluGluToXToZZTo2B2Tau_M750,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M850,GluGluToXToZZTo2B2Tau_M900,\
GluGluToXToZZTo2B2Tau_M1000,GluGluToXToZZTo2B2Tau_M1100,GluGluToXToZZTo2B2Tau_M1200,GluGluToXToZZTo2B2Tau_M1300,GluGluToXToZZTo2B2Tau_M1400,\
GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M1600,GluGluToXToZZTo2B2Tau_M1700,GluGluToXToZZTo2B2Tau_M1800,GluGluToXToZZTo2B2Tau_M1900,\
GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M2200,GluGluToXToZZTo2B2Tau_M2400,GluGluToXToZZTo2B2Tau_M2500,GluGluToXToZZTo2B2Tau_M2600,\
GluGluToXToZZTo2B2Tau_M2800,GluGluToXToZZTo2B2Tau_M3000,GluGluToXToZZTo2B2Tau_M3500,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M4500,\
GluGluToXToZZTo2B2Tau_M5000,zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 30 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name mutau_os_iso --do-qcd --hide-data True
law run FeatureHistogram --version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_low,ZZKinFit_mass_res_high,dnn_ZZbbtt_kl_1_200,dnn_ZZbbtt_kl_1_210,dnn_ZZbbtt_kl_1_220,dnn_ZZbbtt_kl_1_230,\
dnn_ZZbbtt_kl_1_240,dnn_ZZbbtt_kl_1_250,dnn_ZZbbtt_kl_1_260,dnn_ZZbbtt_kl_1_270,dnn_ZZbbtt_kl_1_280,dnn_ZZbbtt_kl_1_300,dnn_ZZbbtt_kl_1_320,\
dnn_ZZbbtt_kl_1_350,dnn_ZZbbtt_kl_1_360,dnn_ZZbbtt_kl_1_400,dnn_ZZbbtt_kl_1_450,dnn_ZZbbtt_kl_1_500,dnn_ZZbbtt_kl_1_550,dnn_ZZbbtt_kl_1_600,\
dnn_ZZbbtt_kl_1_650,dnn_ZZbbtt_kl_1_700,dnn_ZZbbtt_kl_1_750,dnn_ZZbbtt_kl_1_800,dnn_ZZbbtt_kl_1_850,dnn_ZZbbtt_kl_1_900,dnn_ZZbbtt_kl_1_1000,\
dnn_ZZbbtt_kl_1_1100,dnn_ZZbbtt_kl_1_1200,dnn_ZZbbtt_kl_1_1300,dnn_ZZbbtt_kl_1_1400,dnn_ZZbbtt_kl_1_1500,dnn_ZZbbtt_kl_1_1600,dnn_ZZbbtt_kl_1_1700,\
dnn_ZZbbtt_kl_1_1800,dnn_ZZbbtt_kl_1_1900,dnn_ZZbbtt_kl_1_2000,dnn_ZZbbtt_kl_1_2200,dnn_ZZbbtt_kl_1_2400,dnn_ZZbbtt_kl_1_2500,dnn_ZZbbtt_kl_1_2600,\
dnn_ZZbbtt_kl_1_2800,dnn_ZZbbtt_kl_1_3000,dnn_ZZbbtt_kl_1_3500,dnn_ZZbbtt_kl_1_4000,dnn_ZZbbtt_kl_1_4500,dnn_ZZbbtt_kl_1_5000 \
 --dataset-names GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M210,GluGluToXToZZTo2B2Tau_M220,GluGluToXToZZTo2B2Tau_M230,\
GluGluToXToZZTo2B2Tau_M240,GluGluToXToZZTo2B2Tau_M250,GluGluToXToZZTo2B2Tau_M260,GluGluToXToZZTo2B2Tau_M270,GluGluToXToZZTo2B2Tau_M280,\
GluGluToXToZZTo2B2Tau_M300,GluGluToXToZZTo2B2Tau_M320,GluGluToXToZZTo2B2Tau_M350,GluGluToXToZZTo2B2Tau_M360,GluGluToXToZZTo2B2Tau_M400,\
GluGluToXToZZTo2B2Tau_M450,GluGluToXToZZTo2B2Tau_M500,GluGluToXToZZTo2B2Tau_M550,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M650,\
GluGluToXToZZTo2B2Tau_M700,GluGluToXToZZTo2B2Tau_M750,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M850,GluGluToXToZZTo2B2Tau_M900,\
GluGluToXToZZTo2B2Tau_M1000,GluGluToXToZZTo2B2Tau_M1100,GluGluToXToZZTo2B2Tau_M1200,GluGluToXToZZTo2B2Tau_M1300,GluGluToXToZZTo2B2Tau_M1400,\
GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M1600,GluGluToXToZZTo2B2Tau_M1700,GluGluToXToZZTo2B2Tau_M1800,GluGluToXToZZTo2B2Tau_M1900,\
GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M2200,GluGluToXToZZTo2B2Tau_M2400,GluGluToXToZZTo2B2Tau_M2500,GluGluToXToZZTo2B2Tau_M2600,\
GluGluToXToZZTo2B2Tau_M2800,GluGluToXToZZTo2B2Tau_M3000,GluGluToXToZZTo2B2Tau_M3500,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M4500,\
GluGluToXToZZTo2B2Tau_M5000,zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 30 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name tautau_os_iso --do-qcd --hide-data True ;
done

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_low \
 --dataset-names GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M400,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M1000,\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_low \
 --dataset-names GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M400,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M1000,\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_low \
 --dataset-names GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M400,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M1000,\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_high \
 --dataset-names GluGluToXToZZTo2B2Tau_M1200,GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M3000,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M5000,\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_high \
 --dataset-names GluGluToXToZZTo2B2Tau_M1200,GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M3000,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M5000,\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names ZZKinFit_mass_res_high \
 --dataset-names GluGluToXToZZTo2B2Tau_M1200,GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M3000,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M5000,\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_res --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png ;
done

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
    for res_mass in 200 210 220 230 240 250 260 270 280 300 320 350 360 400 450 500 550 600 650 700 750 800 850 900 1000 \
                    1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2200 2400 2500 2600 2800 3000 3500 4000 4500 5000; do
    law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
    --feature-names dnn_ZZbbtt_kl_1_${res_mass} --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
    --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
    --process-group-name zz_res --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
    law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
    --feature-names dnn_ZZbbtt_kl_1_${res_mass} --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
    --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
    --process-group-name zz_res --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png
    law run FeaturePlot --version prod_240528 --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
    --feature-names dnn_ZZbbtt_kl_1_${res_mass} --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
    --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
    --process-group-name zz_res --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y True --histogram-minimum 0.1 --save-png ;
    done ;
done

python3 ToRun/MoveToEos.py --region SR --type Res --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_ZZ_elliptical_cut_90_resolved_1b,cat_ZZ_elliptical_cut_90_resolved_2b,cat_ZZ_elliptical_cut_90_boosted_noPNet \
    --prd prod_240528 --grp zz_res

###############################################################################################################################################
############################################################  DATACARDS  ######################################################################
###############################################################################################################################################

###############################################################################################################################################
# DATACARDS NON RES
###############################################################################################################################################

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b; do
law run CreateDatacards --version prod_240523 --PrePlot-version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-root --save-png --category-name ${cat} --region-name etau_os_iso \
 --save-yields --stack --do-qcd --hide-data True --propagate-syst-qcd
law run CreateDatacards --version prod_240523 --PrePlot-version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-root --save-png --category-name ${cat} --region-name mutau_os_iso \
 --save-yields --stack --do-qcd --hide-data True --propagate-syst-qcd
law run CreateDatacards --version prod_240523 --PrePlot-version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-root --save-png --category-name ${cat} --region-name tautau_os_iso \
 --save-yields --stack --do-qcd --hide-data True --propagate-syst-qcd ; 
done

for cat in ZZ_elliptical_cut_90_boosted_noPNet; do
law run CreateDatacards --version prod_240523 --PrePlot-version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-root --save-png --category-name ${cat} --region-name etau_os_iso \
 --save-yields --stack --hide-data True
law run CreateDatacards --version prod_240523 --PrePlot-version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-root --save-png --category-name ${cat} --region-name mutau_os_iso \
 --save-yields --stack --hide-data True
law run CreateDatacards --version prod_240523 --PrePlot-version prod_240522 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-root --save-png --category-name ${cat} --region-name tautau_os_iso \
 --save-yields --stack --do-qcd --hide-data True --propagate-syst-qcd ; 
done

python3 RunNonResLimits.py --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_ZZ_elliptical_cut_90_resolved_1b,cat_ZZ_elliptical_cut_90_resolved_2b,cat_ZZ_elliptical_cut_90_boosted_noPNet \
    --feat dnn_ZZbbtt_kl_1 --prd prod_240523 --grp datacard_zz

###############################################################################################################################################
# DATACARDS RES
###############################################################################################################################################

for cat in ZZ_elliptical_cut_90_resolved_1b; do
    for res_mass in 200 210 220 230 240 250 260 270 280 300 320 350 360 400 450 500 550 600 650 700 750 800 850 900 1000 \
                    1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2200 2400 2500 2600 2800 3000 3500 4000 4500 5000; do
        law run CreateDatacards --version prod_240528_M${res_mass} --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
        --feature-names dnn_ZZbbtt_kl_1_${res_mass} \
        --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
        --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
        --process-group-name datacard_zz_res --category-name ${cat} --region-name etau_os_iso \
        --do-qcd --hide-data True --propagate-syst-qcd
        law run CreateDatacards --version prod_240528_M${res_mass} --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
        --feature-names dnn_ZZbbtt_kl_1_${res_mass} \
        --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
        --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
        --process-group-name datacard_zz_res --category-name ${cat} --region-name mutau_os_iso \
        --do-qcd --hide-data True --propagate-syst-qcd
        law run CreateDatacards --version prod_240528_M${res_mass} --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
        --feature-names dnn_ZZbbtt_kl_1_${res_mass} \
        --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
        --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
        --process-group-name datacard_zz_res --category-name ${cat} --region-name tautau_os_iso \
        --do-qcd --hide-data True --propagate-syst-qcd ;
    done ;
done

for cat in ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
    for res_mass in 200 210 220 230 240 250 260 270 280 300 320 350 360 400 450 500 550 600 650 700 750 800 850 900 1000\
                    1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2200 2400 2500 2600 2800 3000 3500 4000 4500 5000; do
        law run CreateDatacards --version prod_240528_M${res_mass} --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
        --feature-names dnn_ZZbbtt_kl_1_${res_mass} \
        --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
        --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
        --process-group-name datacard_zz_res --category-name ${cat} --region-name etau_os_iso --hide-data True 
        law run CreateDatacards --version prod_240528_M${res_mass} --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
        --feature-names dnn_ZZbbtt_kl_1_${res_mass} \
        --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
        --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
        --process-group-name datacard_zz_res --category-name ${cat} --region-name mutau_os_iso --hide-data True 
        law run CreateDatacards --version prod_240528_M${res_mass} --FeatureHistogram-version prod_240528 --PrePlot-version prod_240528 --config-name ul_${YEAR}_ZZ_v12 \
        --feature-names dnn_ZZbbtt_kl_1_${res_mass} \
        --dataset-names GluGluToXToZZTo2B2Tau_M${res_mass},\
zz_bbtt,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
        --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
        --process-group-name datacard_zz_res --category-name ${cat} --region-name tautau_os_iso \
        --do-qcd --hide-data True --propagate-syst-qcd ;
    done ;
done

python3 RunAsymptoticLimits.py --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_ZZ_elliptical_cut_90_resolved_1b,cat_ZZ_elliptical_cut_90_resolved_2b,cat_ZZ_elliptical_cut_90_boosted_noPNet \
    --feat dnn_ZZbbtt_kl_1 --featureDependsOnMass --prd prod_240528 --grp datacard_zz_res --move_eos --user_eos evernazz \
    --mass 200,210,220,230,240,250,260,280,300,320,350,360,400,450,500,550,600,650,700,750,800,850,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2200,2400,2500,2600,2800,3000,3500,4000,4500,5000

###############################################################################################################################################
##############################################################  CUTFLOW  ######################################################################
###############################################################################################################################################

# ZZbbtt
law run PreprocessRDFWrapper --version prod_240712_CutFlow --category-names base_selection --config-name ul_${YEAR}_ZZ_v12 \
 --dataset-names zz_sl_signal,GluGluToXToZZTo2B2Tau_M200,GluGluToXToZZTo2B2Tau_M210,GluGluToXToZZTo2B2Tau_M220,GluGluToXToZZTo2B2Tau_M230,GluGluToXToZZTo2B2Tau_M240,GluGluToXToZZTo2B2Tau_M250,\
GluGluToXToZZTo2B2Tau_M260,GluGluToXToZZTo2B2Tau_M270,GluGluToXToZZTo2B2Tau_M280,GluGluToXToZZTo2B2Tau_M300,GluGluToXToZZTo2B2Tau_M320,GluGluToXToZZTo2B2Tau_M350,GluGluToXToZZTo2B2Tau_M360,\
GluGluToXToZZTo2B2Tau_M400,GluGluToXToZZTo2B2Tau_M450,GluGluToXToZZTo2B2Tau_M500,GluGluToXToZZTo2B2Tau_M550,GluGluToXToZZTo2B2Tau_M600,GluGluToXToZZTo2B2Tau_M650,GluGluToXToZZTo2B2Tau_M700,\
GluGluToXToZZTo2B2Tau_M750,GluGluToXToZZTo2B2Tau_M800,GluGluToXToZZTo2B2Tau_M850,GluGluToXToZZTo2B2Tau_M900,GluGluToXToZZTo2B2Tau_M1000,GluGluToXToZZTo2B2Tau_M1100,GluGluToXToZZTo2B2Tau_M1200,\
GluGluToXToZZTo2B2Tau_M1300,GluGluToXToZZTo2B2Tau_M1400,GluGluToXToZZTo2B2Tau_M1500,GluGluToXToZZTo2B2Tau_M1600,GluGluToXToZZTo2B2Tau_M1700,GluGluToXToZZTo2B2Tau_M1800,GluGluToXToZZTo2B2Tau_M1900,\
GluGluToXToZZTo2B2Tau_M2000,GluGluToXToZZTo2B2Tau_M2200,GluGluToXToZZTo2B2Tau_M2400,GluGluToXToZZTo2B2Tau_M2500,GluGluToXToZZTo2B2Tau_M2600,GluGluToXToZZTo2B2Tau_M2800,GluGluToXToZZTo2B2Tau_M3000,\
GluGluToXToZZTo2B2Tau_M3500,GluGluToXToZZTo2B2Tau_M4000,GluGluToXToZZTo2B2Tau_M4500,GluGluToXToZZTo2B2Tau_M5000 \
 --PreprocessRDF-modules-file modulesrdf_cutflow \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file --PreprocessRDF-compute-filter-efficiency --workers 20 \
 --PreprocessRDF-workflow htcondor --PreprocessRDF-htcondor-scheduler llrt3condor.in2p3.fr --PreprocessRDF-transfer-logs \
 --PreprocessRDF-custom-condor-tag "include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7"

# ZbbHtt
law run PreprocessRDFWrapper --version prod_240712_CutFlow --category-names base_selection --config-name ul_${YEAR}_ZbbHtt_v12 \
 --dataset-names zh_zbb_htt_signal,ZprimeToZH_ZToBB_HToTauTau_M500,ZprimeToZH_ZToBB_HToTauTau_M600,ZprimeToZH_ZToBB_HToTauTau_M800,ZprimeToZH_ZToBB_HToTauTau_M1000,ZprimeToZH_ZToBB_HToTauTau_M1200,\
ZprimeToZH_ZToBB_HToTauTau_M1400,ZprimeToZH_ZToBB_HToTauTau_M1600,ZprimeToZH_ZToBB_HToTauTau_M1800,ZprimeToZH_ZToBB_HToTauTau_M2000,ZprimeToZH_ZToBB_HToTauTau_M2500,\
ZprimeToZH_ZToBB_HToTauTau_M3000,ZprimeToZH_ZToBB_HToTauTau_M3500,ZprimeToZH_ZToBB_HToTauTau_M4000,ZprimeToZH_ZToBB_HToTauTau_M4500,ZprimeToZH_ZToBB_HToTauTau_M5000 \
 --PreprocessRDF-modules-file modulesrdf_cutflow \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file --PreprocessRDF-compute-filter-efficiency --workers 20 \
 --PreprocessRDF-workflow htcondor --PreprocessRDF-htcondor-scheduler llrt3condor.in2p3.fr --PreprocessRDF-transfer-logs \
 --PreprocessRDF-custom-condor-tag "include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7"

# ZttHbb
law run PreprocessRDFWrapper --version prod_240712_CutFlow --category-names base_selection --config-name ul_${YEAR}_ZttHbb_v12 \
 --dataset-names zh_ztt_hbb_signal,ZprimeToZH_ZToTauTau_HToBB_M500,ZprimeToZH_ZToTauTau_HToBB_M600,ZprimeToZH_ZToTauTau_HToBB_M800,ZprimeToZH_ZToTauTau_HToBB_M1000,ZprimeToZH_ZToTauTau_HToBB_M1200,\
ZprimeToZH_ZToTauTau_HToBB_M1400,ZprimeToZH_ZToTauTau_HToBB_M1600,ZprimeToZH_ZToTauTau_HToBB_M1800,ZprimeToZH_ZToTauTau_HToBB_M2000,ZprimeToZH_ZToTauTau_HToBB_M2500,\
ZprimeToZH_ZToTauTau_HToBB_M3000,ZprimeToZH_ZToTauTau_HToBB_M3500,ZprimeToZH_ZToTauTau_HToBB_M4000,ZprimeToZH_ZToTauTau_HToBB_M4500,ZprimeToZH_ZToTauTau_HToBB_M5000 \
 --PreprocessRDF-modules-file modulesrdf_cutflow \
 --PreprocessRDF-keep-and-drop-file keep_and_drop_file --PreprocessRDF-compute-filter-efficiency --workers 20 \
 --PreprocessRDF-workflow htcondor --PreprocessRDF-htcondor-scheduler llrt3condor.in2p3.fr --PreprocessRDF-transfer-logs \
 --PreprocessRDF-custom-condor-tag "include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7"

###############################################################################################################################################
##############################################################  TESTS  ########################################################################
###############################################################################################################################################

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240531 --PrePlot-version prod_240531 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names zz_kinfit_chi2,zz_kinfit_m,sv_mass,dR_l1_l2_x_sv_pT,l1_mt,l_2_pT,dR_l1_l2,dphi_sv_met,z_bb_mass,b_2_hhbtag,diZ_mass_sv,\
dphi_zbb_sv,z_bb_pT,dR_l1_l2_boosted_ztt_met,l_1_pT,b_1_pT,phi,costheta_l2_zttmet,b_1_cvsb,b_1_cvsl,boosted,is_vbf,jet_1_quality,jet_2_quality \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz_sig_vs_bkg --save-png --category-name ${cat} --region-name os_iso \
 --hide-data True ;
done

law run FeaturePlot --version prod_240531 --PrePlot-version prod_240531 --category-name ZZ_elliptical_cut_90_sr --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names zz_kinfit_chi2,zz_kinfit_m,sv_mass,dR_l1_l2_x_sv_pT,l1_mt,l_2_pT,dR_l1_l2,dphi_sv_met,z_bb_mass,b_2_hhbtag,diZ_mass_sv,\
dphi_zbb_sv,z_bb_pT,dR_l1_l2_boosted_ztt_met,l_1_pT,b_1_pT,phi,costheta_l2_zttmet,b_1_cvsb,b_1_cvsl,boosted,is_vbf,jet_1_quality,jet_2_quality \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top \
 --PrePlot-skip-merging --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240318 --region-name os_iso \
 --workers 10 --process-group-name zz_sig_vs_bkg --save-png



# test elliptical mass cut for boosted

law run CategorizationWrapper --version prod_240703 --config-name ul_2018_ZZ_v12 \
 --dataset-names GluGluToXToZZTo2B2Tau_M2000 --category-names ZZ_elliptical_cut_90_boosted_noPNet \
 --PreprocessRDF-version prod_240305 \
 --Categorization-base-category-name base_selection \
 --Categorization-feature-modules-file modulesrdf_syst --workers 20 --Categorization-tasks-per-job 5 --Categorization-poll-interval 5 \
 --Categorization-workflow htcondor --Categorization-htcondor-scheduler llrt3condor.in2p3.fr --Categorization-transfer-logs \
 --Categorization-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'