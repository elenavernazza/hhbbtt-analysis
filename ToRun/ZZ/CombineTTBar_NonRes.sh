########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# Datacards ZZ SR (blind)

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam ; 
done

for cat in ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam ;
done

# Datacards ZZ CR (unblind)

for cat in ZZ_elliptical_cut_90_CR_resolved_1b ZZ_elliptical_cut_90_CR_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1 
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

for cat in ZZ_elliptical_cut_90_CR_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ;
done

# Datacards ZZ SR (unblind)

for cat in ZZ_elliptical_cut_90_resolved_1b ZZ_elliptical_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

for cat in ZZ_elliptical_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_2,dnn_ZZbbtt_kl_3,ZZKinFit_mass_fit_2 \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ;
done

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# Datacards ZbbHtt SR (blind)

for cat in ZbbHtt_orthogonal_cut_90_resolved_1b ZbbHtt_orthogonal_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam ; 
done

for cat in ZbbHtt_orthogonal_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam ; 
done

# Datacards ZbbHtt CR (unblind)

for cat in ZbbHtt_orthogonal_cut_90_CR_resolved_1b ZbbHtt_orthogonal_cut_90_CR_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

for cat in ZbbHtt_orthogonal_cut_90_CR_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

# Datacards ZbbHtt SR (unblind)

for cat in ZbbHtt_orthogonal_cut_90_resolved_1b ZbbHtt_orthogonal_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

for cat in ZbbHtt_orthogonal_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZbbHtt_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_zbb_htt_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_ztt_hbb_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# Datacards ZttHbb SR (blind)

for cat in ZttHbb_orthogonal_cut_90_resolved_1b ZttHbb_orthogonal_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam ; 
done

for cat in ZttHbb_orthogonal_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data True --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam ; 
done

# Datacards ZttHbb CR (unblind)

for cat in ZttHbb_orthogonal_cut_90_CR_resolved_1b ZttHbb_orthogonal_cut_90_CR_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

for cat in ZttHbb_orthogonal_cut_90_CR_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

# Datacards ZttHbb SR (unblind)

for cat in ZttHbb_orthogonal_cut_90_resolved_1b ZttHbb_orthogonal_cut_90_resolved_2b; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

for cat in ZttHbb_orthogonal_cut_90_boosted_noPNet; do
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name etau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name etau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name mutau_os_iso --stack --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_mutau_a,data_mutau_b,data_mutau_c,data_mutau_d,data_mutau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name mutau_os_iso --add-TTrateParam --unblind
law run FeaturePlot --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --save-png --category-name ${cat} --region-name tautau_os_iso --stack --do-qcd --hide-data False --log-y --histogram-minimum 0.1
law run CreateDatacards --version prod_240723 --FeatureHistogram-version prod_240723 --PrePlot-version prod_240723 --config-name ul_${YEAR}_ZttHbb_v12 \
 --feature-names dnn_ZHbbtt_kl_1,dnn_ZHbbtt_kl_2,dnn_ZHbbtt_kl_3,ZHKinFit_mass_fit_2 \
 --dataset-names zh_ztt_hbb_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_dl,zz_sl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_ztt_hbb_background,zh_zbb_htt_signal,zh_zbb_htt_background,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_tau_a,data_tau_b,data_tau_c,data_tau_d,data_tau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 --MergeCategorization-version prod_240522 \
 --process-group-name datacard --category-name ${cat} --region-name tautau_os_iso --do-qcd --propagate-syst-qcd --add-TTrateParam --unblind ; 
done

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# Fit unblind CR and blind SR

ulimit -s unlimited

python3 RunNonResLimitsTTRate.py --ver ul_2016_ZZ_v12,ul_2016_HIPM_ZZ_v12,ul_2017_ZZ_v12,ul_2018_ZZ_v12 \
    --cat cat_ZZ_elliptical_cut_90_resolved_1b,cat_ZZ_elliptical_cut_90_resolved_2b,cat_ZZ_elliptical_cut_90_boosted_noPNet \
    --cr_cat cat_ZZ_elliptical_cut_90_CR_resolved_1b,cat_ZZ_elliptical_cut_90_CR_resolved_2b,cat_ZZ_elliptical_cut_90_CR_boosted_noPNet \
    --feat dnn_ZZbbtt_kl_1 --prd prod_240723 --grp datacard_zz --num 4 --TTrate

python3 RunNonResLimitsTTRate.py --ver ul_2016_ZbbHtt_v12,ul_2016_HIPM_ZbbHtt_v12,ul_2017_ZbbHtt_v12,ul_2018_ZbbHtt_v12 \
    --cat cat_ZbbHtt_orthogonal_cut_90_resolved_1b,cat_ZbbHtt_orthogonal_cut_90_resolved_2b,cat_ZbbHtt_orthogonal_cut_90_boosted_noPNet \
    --cr_cat cat_ZbbHtt_orthogonal_cut_90_CR_resolved_1b,cat_ZbbHtt_orthogonal_cut_90_CR_resolved_2b,cat_ZbbHtt_orthogonal_cut_90_CR_boosted_noPNet \
    --feat dnn_ZHbbtt_kl_1 --prd prod_240723 --grp datacard --num 4 --TTrate

python3 RunNonResLimitsTTRate.py --ver ul_2016_ZttHbb_v12,ul_2016_HIPM_ZttHbb_v12,ul_2017_ZttHbb_v12,ul_2018_ZttHbb_v12 \
    --cat cat_ZttHbb_orthogonal_cut_90_resolved_1b,cat_ZttHbb_orthogonal_cut_90_resolved_2b,cat_ZttHbb_orthogonal_cut_90_boosted_noPNet \
    --cr_cat cat_ZttHbb_orthogonal_cut_90_CR_resolved_1b,cat_ZttHbb_orthogonal_cut_90_CR_resolved_2b,cat_ZttHbb_orthogonal_cut_90_CR_boosted_noPNet \
    --feat dnn_ZHbbtt_kl_1 --prd prod_240723 --grp datacard --num 4 --TTrate

# Fit unblind CR and unblind SR

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

########################################################################################################################################################
########################################################################################################################################################
########################################################################################################################################################

# Testing recipes

combineCards.py /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt > test.txt
text2workspace.py test.txt -o model.root
combine -M MultiDimFit model.root --algo=grid --points 10 --preFitValue 1 --expectSignal 1 -t -1 --rMin 0 --rMax 2
combineTool.py -M Impacts -d model.root -m 125 --expectSignal 1 -t -1 --preFitValue 1 --rMin 0 --rMax 2 --doInitialFit --robustFit 1 --parallel 50
combineTool.py -M Impacts -d model.root -m 125 --expectSignal 1 -t -1 --preFitValue 1 --rMin 0 --rMax 2 --doFits --robustFit 1 --parallel 50
combineTool.py -M Impacts -d model.root -m 125 -o impacts.json --parallel 50
plotImpacts.py -i impacts.json -o Impacts

combineCards.py /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt > test.txt
text2workspace.py test.txt -o model.root
combine -M MultiDimFit model.root --algo=grid --points 10 --expectSignal 1 -t -1 --rMin 0 --rMax 2 --setParameters r=1,ttbarRate=1 
combineTool.py -M Impacts -d model.root -m 125 --expectSignal 1 -t -1 --rMin 0 --rMax 2 --doInitialFit --robustFit 1 --parallel 50 --setParameters r=1,ttbarRate=1
combineTool.py -M Impacts -d model.root -m 125 --expectSignal 1 -t -1 --rMin 0 --rMax 2 --doFits --robustFit 1 --parallel 50 --setParameters r=1,ttbarRate=1
combineTool.py -M Impacts -d model.root -m 125 -o impacts.json --parallel 50
plotImpacts.py -i impacts.json -o Impacts

combineCards.py /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt > test.txt
text2workspace.py test.txt -o model.root
combine -M MultiDimFit model.root --algo=grid --points 10 --expectSignal 1 -t -1 --rMin 0 --rMax 2 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 --expectSignal 1 -t -1 --rMin 0 --rMax 2 --doInitialFit --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 --expectSignal 1 -t -1 --rMin 0 --rMax 2 --doFits --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 -o impacts.json --parallel 50 --setParameterRanges ttbarRate=0.0,2 --rMin 0 --rMax 2
plotImpacts.py -i impacts.json -o Impacts

combineCards.py /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt > test.txt
text2workspace.py test.txt -o model.root
combine -M MultiDimFit model.root --algo=grid --points 10 -t -1 --rMin 0 --rMax 2 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 -t -1 --rMin 0 --rMax 2 --doInitialFit --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 -t -1 --rMin 0 --rMax 2 --doFits --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 -o impacts.json --parallel 50 --setParameterRanges ttbarRate=0.0,2 --rMin 0 --rMax 2
plotImpacts.py -i impacts.json -o Impacts

# Unblind CR datacards
cat=ZZ_elliptical_cut_90_CR_resolved_2b
law run CreateDatacards --version prod_240720_Thesis --FeatureHistogram-version prod_240605 --PrePlot-version prod_240605 --config-name ul_${YEAR}_ZZ_v12 \
 --feature-names dnn_ZZbbtt_kl_1,dnn_ZZbbtt_kl_1_CR \
 --dataset-names zz_sl_signal,dy,dy_ptz1,dy_ptz2,dy_ptz3,dy_ptz4,dy_ptz5,dy_ptz6,dy_0j,dy_1j,dy_2j,\
wjets_ht1,wjets_ht2,wjets_ht3,wjets_ht4,wjets_ht5,wjets_ht6,wjets_ht7,wjets_ht8,tt_dl,tt_sl,tt_fh,\
zz_sl_background,zz_dl,zz_fh,zz_lnu,zz_qnu,wz_lllnu,wz_lnuqq,wz_lnununu,wz_llqq,ww_llnunu,ww_lnuqq,ww_qqqq,zzz,wzz,www,wwz,\
zh_htt,zh_hbb_zll,wminush_htt,wplush_htt,tth_bb,tth_tautau,ggH_ZZ,ggf_sm,ttw_lnu,ttw_qq,ttww,ttwz,ttwh,ttzh,ttz_llnunu,ttz_qq,ttzz,\
ewk_z,ewk_wplus,ewk_wminus,st_tw_antitop,st_tw_top,st_antitop,st_top,data_etau_a,data_etau_b,data_etau_c,data_etau_d,data_etau_e \
 --workers 20 --MergeCategorizationStats-version prod_240305 --Categorization-version prod_240522 \
 --process-group-name datacard_zz --category-name ${cat} --region-name etau_os_iso --do-qcd --hide-data False --propagate-syst-qcd \
 --additional-lines 'ttbarRate rateParam Y'${YEAR}'_res2b_etau_CR_dnn_ZZbbtt_kl_1 tt 1.' --signal-region CR

# Unblinding not correct
text2workspace.py /data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso__unblind.txt -o model.root
combine -M MultiDimFit model.root --algo=grid --points 10 --setParameters r=1 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 --setParameters r=1 --doInitialFit --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 --setParameters r=1 --doFits --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -m 125 -o impacts.json --parallel 50 --setParameterRanges ttbarRate=0.0,2 --setParameters r=1
plotImpacts.py -i impacts.json -o Impacts

# Masksking
combineCards.py SR=/data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt CR=/data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso__unblind.txt > test.txt
text2workspace.py test.txt -m 125 --channel-masks -o model.root
# --> Olivier's recipe Run the following if running with SR blind. This creates a signal region asimov dataset based on the data and MC in the control regions
mask_SR_channels=""
for i in $(seq 1 1 165); do
  mask_SR_channels+="mask_ch${i}_SR=1,"
done
combine all_cards.root -M MultiDimFit --saveWorkspace --setParameters "${mask_SR_channels}r=1" --freezeParameters r -n _MLECRData -m 125 --X-rtd MINIMIZER_no_analytic
combine -M MultiDimFit model.root --algo=grid --points 10 --setParameters r=1,mask_SR=1 --setParameterRanges ttbarRate=0.0,2 --rMin 0 --rMax 2 
combine model.root -M MultiDimFit --saveWorkspace --setParameters r=1,mask_SR=1 --freezeParameters r -m 125 

combine -M MultiDimFit model.root --algo=grid --points 10 --setParameters r=1,mask_SR=1 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -v 3 -t -1 -m 125 --doInitialFit --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -v 3 -t -1 -m 125 --doFits --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -v 3 -t -1-m 125 -o impacts.json --parallel 50 --setParameterRanges ttbarRate=0.0,2
plotImpacts.py -i impacts.json -o Impacts


# --> Andrew's recipe
combineCards.py SR=/data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso.txt CR=/data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240720_Thesis/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso__unblind.txt > test.txt
text2workspace.py test.txt -m 125 --channel-masks -o model.root
combine -M GenerateOnly model.root -t -1 --setParameters r=1,mask_SR=1 --toysFrequentist --saveToys -n .asimov
combine -M MultiDimFit model.root -v 3 -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -n .fit --setParameterRanges ttbarRate=0.0,2
combine -M MultiDimFit model.root -v 3 -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -n .fit1 --setParameterRanges ttbarRate=0.0,2 --algo=grid
combine -M MultiDimFit model.root -v 3 -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -n .fit2 --setParameterRanges ttbarRate=0.0,2 --algo=grid --rMin 0 --rMax 2

combineTool.py -M Impacts -d model.root -v 3 -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -m 125 --doInitialFit --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -v 3 -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -m 125 --doFits --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -v 3 -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -m 125 -o impacts.json --parallel 50 --setParameterRanges ttbarRate=0.0,2
plotImpacts.py -i impacts.json -o Impacts


python3 ../../PlotSingle1DScan.py higgsCombineTest.MultiDimFit.mH120.root 
# python plot1DScan.py higgsCombineTest.MultiDimFit.mH120.root

combineCards.py SR=/data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_2b/prod_240723/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso__TTrate.txt CR=/data_CMS/cms/vernazza/cmt/CreateDatacards/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_CR_resolved_2b/prod_240723/dnn_ZZbbtt_kl_1_datacard_zz_etau_os_iso__unblind__TTrate.txt > test.txt
text2workspace.py test.txt -m 125 --channel-masks -o model.root

combine -M GenerateOnly model.root -t -1 --setParameters r=1,mask_etau_SR=1,mask_mutau_SR=1,mask_tautau_SR=1 --toysFrequentist --saveToys -n .asimov -v 3 --setParameterRanges ttbarRate=0.0,2
combine -M MultiDimFit model.root -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -n .fit --setParameterRanges ttbarRate=0.0,2 --algo=grid --points 20 --rMin 0 --rMax 2

combineTool.py -M Impacts -d model.root -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -m 125 --doInitialFit --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -m 125 --doFits --robustFit 1 --parallel 50 --setParameterRanges ttbarRate=0.0,2
combineTool.py -M Impacts -d model.root -t -1 --toysFrequentist --toysFile higgsCombine.asimov.GenerateOnly.mH120.123456.root -m 125 -o impacts.json --parallel 50
plotImpacts.py -i impacts.json -o Impacts
