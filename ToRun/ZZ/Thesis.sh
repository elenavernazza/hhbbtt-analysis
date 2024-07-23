########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# CR plots ZZ

for cat in ZZ_elliptical_cut_90_CR_resolved_1b ZZ_elliptical_cut_90_CR_resolved_2b ZZ_elliptical_cut_90_CR_boosted_noPNet ZZ_elliptical_cut_90_CR; do
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass,Ztt_svfit_mass,Zbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass,Ztt_svfit_mass,Zbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3 
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass,Ztt_svfit_mass,Zbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False ; 
done

# CR plots ZbbHtt

law run MergeCategorizationStatsWrapper --version prod_240305 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --dataset-tags secondary \
 --workers 30 --PreCounter-weights-file weights --systematic-names pu \
 --PreCounter-workflow htcondor --PreCounter-htcondor-scheduler llrt3condor.in2p3.fr --PreCounter-transfer-logs \
 --PreCounter-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'

for cat in ZbbHtt_orthogonal_cut_90_CR_resolved_1b ZbbHtt_orthogonal_cut_90_CR_resolved_2b ZbbHtt_orthogonal_cut_90_CR_boosted_noPNet ZbbHtt_orthogonal_cut_90_CR; do
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names ZHKinFit_mass,Htt_svfit_mass,Zbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names ZHKinFit_mass,Htt_svfit_mass,Zbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names ZHKinFit_mass,Htt_svfit_mass,Zbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False ;
done

# CR plots ZttHbb

law run MergeCategorizationStatsWrapper --version prod_240305 --config-name ul_${YEAR}_ZttHbb_v12 \
 --dataset-tags secondary \
 --workers 30 --PreCounter-weights-file weights --systematic-names pu \
 --PreCounter-workflow htcondor --PreCounter-htcondor-scheduler llrt3condor.in2p3.fr --PreCounter-transfer-logs \
 --PreCounter-custom-condor-tag 'include : /opt/exp_soft/cms/t3/t3queue |,T3queue=short,WNTag=el7'

for cat in ZttHbb_orthogonal_cut_90_CR_resolved_1b ZttHbb_orthogonal_cut_90_CR_resolved_2b ZttHbb_orthogonal_cut_90_CR_boosted_noPNet ZttHbb_orthogonal_cut_90_CR; do
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names ZHKinFit_mass,Ztt_svfit_mass,Hbb_mass \
 --dataset-names ddy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names ZHKinFit_mass,Ztt_svfit_mass,Hbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names ZHKinFit_mass,Ztt_svfit_mass,Hbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False ;
done

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# SR plots ZZ

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso  --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name mutau_os_iso  --stack --do-qcd --hide-data True
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1 ; 
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True ; 
done

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################












for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --do-qcd --hide-data True --propagate-syst-qcd
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --do-qcd --hide-data True --propagate-syst-qcd
law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,ZZKinFit_mass \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --hide-data True --propagate-syst-qcd ; 
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





























law run BayesianBlocksOptimization --version prod_test --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --category-name ZZ_elliptical_cut_90_CR_resolved_1b --region-name etau_os_iso --FeatureHistogram-do-qcd --hide-data False


law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1_CR \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y True --histogram-minimum 0.3


law run FeaturePlot --version prod_240720_Thesis --FeatureHistogram-version prod_240604_nonres --PrePlot-version prod_240604_nonres --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names ZHKinFit_mass,Ztt_svfit_mass,Hbb_mass \
 --dataset-names dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_zbb_htt_signal,zh_zbb_htt_background,zh_ztt_hbb_background,zh_hbb,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name plot --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False ;


########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# Systematics variation ZZ

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlotSyst --version prod_240720 --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --process-group-name zz_sig_vs_bkg --save-png --category-name ${cat} --region-name etau_os_iso --FeatureHistogram-do-qcd True
law run FeaturePlotSyst --version prod_240720 --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --process-group-name zz_sig_vs_bkg --save-png --category-name ${cat} --region-name mutau_os_iso --FeatureHistogram-do-qcd True
law run FeaturePlotSyst --version prod_240720 --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --process-group-name zz_sig_vs_bkg --save-png --category-name ${cat} --region-name tautau_os_iso --FeatureHistogram-do-qcd True ;
done




