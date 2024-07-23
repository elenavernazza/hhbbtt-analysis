# Config for ZttHbb analysis common for all years
import itertools
from analysis_tools import ObjectCollection, Category, Process, Dataset, Feature, Systematic
from analysis_tools.utils import DotDict, join_root_selection as jrs
from plotting_tools import Label

from config.base_config import get_common_processes, BaseConfig
from config.base_config_ZH import get_ZH_common_features, get_ZH_common_processes, resonant_masses_ZH, reduced_resonant_masses_ZH

class ConfigZttHbb(BaseConfig):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.dnn = DotDict(
            nonresonant=DotDict(
                model_folder="/grid_mnt/data__data.polcms/cms/cuisset/ZHbbtautau/framework/nanoaod_base_analysis/data/cmssw/CMSSW_12_3_0_pre6/src/cms_runII_dnn_models/models/arc_checks/zz_bbtt/2024-05-10/ZttHbb-0",
                out_branch="dnn_ZHbbtt_kl_1",
                systematics=["tes", "jer", "jec"]
            ),
            resonant=DotDict(
                model_folder="/grid_mnt/data__data.polcms/cms/cuisset/ZHbbtautau/framework/nanoaod_base_analysis/data/cmssw/CMSSW_12_3_0_pre6/src/cms_runII_dnn_models/models/arc_checks/zz_bbtt/2024-05-10/ResZttHbb-0/",
                resonant_masses=resonant_masses_ZH,
                out_branch="dnn_ZHbbtt_kl_1_{mass}",
                systematics=["tes", "jer", "jec"]
            ),
        )

    def add_categories(self, **kwargs):
        categories = super().add_categories(**kwargs)

        elliptical_cut_90 = ("((({{Ztt_svfit_mass}} - 85.0) * ({{Ztt_svfit_mass}} - 85.0) / ( 92.0 *  92.0)"
                " + ({{Hbb_mass}} - 115.0) * ({{Hbb_mass}} - 115.0) / (130.0 * 130.0)) < 1)")
        elliptical_cut_90_inv = f"!({elliptical_cut_90})"

        # orthogonality condition between ZbbHtt & ZttHbb
        orthogonality = "({{Hbb_mass}} > 1.33*{{Ztt_svfit_mass}} - 40)"

        # old elliptical cut pre-21/05/24
        # elliptical_cut_90 = ("((({{Ztt_svfit_mass}} - 91.) * ({{Ztt_svfit_mass}} - 91.) / (83. * 83.)"
        #         " + ({{Hbb_mass}} - 102.) * ({{Hbb_mass}} - 102.) / (143. * 143.)) < 1)")
        # elliptical_cut_90_inv = ("((({{Ztt_svfit_mass}} - 91.) * ({{Ztt_svfit_mass}} - 91.) / (83. * 83.)"
        #         " + ({{Hbb_mass}} - 102.) * ({{Hbb_mass}} - 102.) / (143. * 143.)) >= 1)")

        sr_cut = ("(((pairType == 0) && (isOS == 1) && (dau2_idDeepTau2017v2p1VSjet >= {0})) || "
                    "((pairType == 1) && (isOS == 1) && (dau2_idDeepTau2017v2p1VSjet >= {0})) || "
                    "((pairType == 2) && (isOS == 1) && "
                    "(dau1_idDeepTau2017v2p1VSjet >= {0}) && (dau2_idDeepTau2017v2p1VSjet >= {0}))) "
                    .format(self.deeptau.vsjet.Medium))
        bjets = self.get_bjets_requirements()
        # TODO see if there is SFs applying here and if we need to use {{ ... }} syntax to have migrating events
        boosted_pnet_cut = f"(FatJet_particleNetLegacy_Xbb/(FatJet_particleNetLegacy_Xbb+FatJet_particleNetLegacy_QCD) >= {self.particleNetMD_legacy.low})"
        
        categories += ObjectCollection([

            Category("ZttHbb_elliptical_cut_90", "Elliptical cut E=90%",
                selection=elliptical_cut_90),
            Category("ZttHbb_elliptical_cut_90_sr", "ZH mass cut E=90% && Signal region",
                selection="("+elliptical_cut_90+") && ("+sr_cut+")"),

            Category("ZttHbb_elliptical_cut_90_CR_mutau", "CR ZH mass cut E=90%",
                selection="("+elliptical_cut_90_inv+") && (pairType == 0)"),
            Category("ZttHbb_elliptical_cut_90_CR_etau", "CR ZH mass cut E=90%",
                selection="("+elliptical_cut_90_inv+") && (pairType == 1)"),
            Category("ZttHbb_elliptical_cut_90_CR_tautau", "CR ZH mass cut E=90%",
                selection="("+elliptical_cut_90_inv+") && (pairType == 2)"),

            Category("ZttHbb_elliptical_cut_90_mutau", "ZH mass cut E=90%",
                selection="("+elliptical_cut_90+") && (pairType == 0)"),
            Category("ZttHbb_elliptical_cut_90_etau", "ZH mass cut E=90%",
                selection="("+elliptical_cut_90+") && (pairType == 1)"),
            Category("ZttHbb_elliptical_cut_90_tautau", "ZH mass cut E=90%",
                selection="("+elliptical_cut_90+") && (pairType == 2)"),
            
            Category("ZttHbb_elliptical_cut_90_resolved_1b", "Z_{#tau#tau}H_{bb} SR & resolved 1b",
                selection=f"({elliptical_cut_90}) && isBoosted == 0 && ({bjets.req_1b})"),
            Category("ZttHbb_elliptical_cut_90_resolved_2b", "Z_{#tau#tau}H_{bb} SR & resolved 2b",
                selection=f"({elliptical_cut_90}) && isBoosted == 0 && ({bjets.req_2b})"),
            Category("ZttHbb_elliptical_cut_90_boosted", "Z_{#tau#tau}H_{bb} SR & boosted",
                selection=f"({elliptical_cut_90}) && isBoosted == 1 && ({boosted_pnet_cut})"),
            Category("ZttHbb_elliptical_cut_90_boosted_noPNet", "Z_{#tau#tau}H_{bb} SR & boosted",
                selection=f"({elliptical_cut_90}) && isBoosted == 1 "),
            
            Category("ZttHbb_orthogonal_cut_90_resolved_1b", "Z_{#tau#tau}H_{bb} SR & resolved 1b",
                selection=f"({elliptical_cut_90}) && ({orthogonality}) && isBoosted == 0 && ({bjets.req_1b})"),
            Category("ZttHbb_orthogonal_cut_90_resolved_2b", "Z_{#tau#tau}H_{bb} SR & resolved 2b",
                selection=f"({elliptical_cut_90}) && ({orthogonality}) && isBoosted == 0 && ({bjets.req_2b})"),
            Category("ZttHbb_orthogonal_cut_90_boosted", "Z_{#tau#tau}H_{bb} SR & boosted",
                selection=f"({elliptical_cut_90}) && ({orthogonality}) && isBoosted == 1 && ({boosted_pnet_cut})"),
            Category("ZttHbb_orthogonal_cut_90_boosted_noPNet", "Z_{#tau#tau}H_{bb} SR & boosted",
                selection=f"({elliptical_cut_90}) && ({orthogonality}) && isBoosted == 1 "),
            
            Category("ZttHbb_orthogonal_cut_90_CR", "CR orthogonal",
                selection=f"({elliptical_cut_90_inv}) && ({orthogonality})"),
            
            Category("ZttHbb_orthogonal_cut_90_CR_resolved_1b", "Z_{#tau#tau}H_{bb} CR & resolved 1b",
                selection=f"({elliptical_cut_90_inv}) && ({orthogonality}) && isBoosted == 0 && ({bjets.req_1b})"),
            Category("ZttHbb_orthogonal_cut_90_CR_resolved_2b", "Z_{#tau#tau}H_{bb} CR & resolved 2b",
                selection=f"({elliptical_cut_90_inv}) && ({orthogonality}) && isBoosted == 0 && ({bjets.req_2b})"),
            Category("ZttHbb_orthogonal_cut_90_CR_boosted", "Z_{#tau#tau}H_{bb} CR & boosted",
                selection=f"({elliptical_cut_90_inv}) && ({orthogonality}) && isBoosted == 1 && ({boosted_pnet_cut})"),
            Category("ZttHbb_orthogonal_cut_90_CR_boosted_noPNet", "Z_{#tau#tau}H_{bb} CR & boosted",
                selection=f"({elliptical_cut_90_inv}) && ({orthogonality}) && isBoosted == 1 "),
        ])

        return categories
    
    #@override
    def add_features(self):
        """ Add features specific to ZH, in addition to the common ones defined in base_config.py 
        There are features for both ZbbHtt and ZttHbb analyses. TODO split them
        """
        base_features = super().add_features() + get_ZH_common_features()
        zttHbb_features = [
            # Hbb
            Feature("Hbb_pt", "Hbb_pt", binning=(15, 50, 200),
                x_title=Label("H(b#bar{b}) p_{T}"),
                units="GeV",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("Hbb_eta", "Hbb_eta", binning=(20, -5., 5.),
                x_title=Label("H(b#bar{b}) #eta"),
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("Hbb_phi", "Hbb_phi", binning=(20, -3.2, 3.2),
                x_title=Label("H(b#bar{b}) #phi"),
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("Hbb_mass", "Hbb_mass", binning=(30, 0, 250),
                x_title=Label("H(b#bar{b}) mass"),
                units="GeV",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("Hbb_mass_ellipse", "Hbb_mass", binning=(50, 0, 500),
                x_title=Label("H(b#bar{b}) mass"),
                units="GeV"),

            # Ztt
            Feature("Ztt_pt", "Ztt_pt", binning=(10, 50, 150),
                x_title=Label("Z(#tau^{+}#tau^{-}) p_{T}"),
                units="GeV",
                systematics=["tes"]),
            Feature("Ztt_eta", "Ztt_eta", binning=(20, -5., 5.),
                x_title=Label("Z(#tau^{+}#tau^{-}) #eta"),
                systematics=["tes"]),
            Feature("Ztt_phi", "Ztt_phi", binning=(20, -3.2, 3.2),
                x_title=Label("Z(#tau^{+}#tau^{-}) #phi"),
                systematics=["tes"]),
            Feature("Ztt_mass", "Ztt_mass", binning=(30, 0, 150),
                x_title=Label("Z(#tau^{+}#tau^{-}) mass"),
                units="GeV",
                systematics=["tes"]),

            # Ztt + met
            Feature("Ztt_met_pt", "Ztt_met_pt", binning=(15, 50, 200),
                x_title=Label("Z(#tau^{+}#tau^{-}+MET) p_{T}"),
                units="GeV",
                systematics=["tes"]),
            Feature("Ztt_met_eta", "Ztt_met_eta", binning=(20, -5., 5.),
                x_title=Label("Z(#tau^{+}#tau^{-}+MET) #eta"),
                systematics=["tes"]),
            Feature("Ztt_met_phi", "Ztt_met_phi", binning=(20, -3.2, 3.2),
                x_title=Label("Z(#tau^{+}#tau^{-}+MET) #phi"),
                systematics=["tes"]),
            Feature("Ztt_met_mass", "Ztt_met_mass", binning=(25, 0, 500),
                x_title=Label("Z(#tau^{+}#tau^{-}+MET) mass"),
                units="GeV",
                systematics=["tes"]),

            # Ztt (SVFit)
            Feature("Ztt_svfit_pt", "Xtt_svfit_pt", binning=(15, 50, 200),
                x_title=Label("Z(#tau^{+}#tau^{-}) p_{T} (SVFit)"),
                units="GeV",
                systematics=["tes"]),
            Feature("Ztt_svfit_eta", "Xtt_svfit_eta", binning=(20, -5., 5.),
                x_title=Label("Z(#tau^{+}#tau^{-}) #eta (SVFit)"),
                systematics=["tes"]),
            Feature("Ztt_svfit_phi", "Xtt_svfit_phi", binning=(20, -3.2, 3.2),
                x_title=Label("Z(#tau^{+}#tau^{-}) #phi (SVFit)"),
                systematics=["tes"]),
            Feature("Ztt_svfit_mass", "Xtt_svfit_mass", binning=(25, 1, 501),
                x_title=Label("Z(#tau^{+}#tau^{-}) mass (SVFit)"),
                units="GeV",
                systematics=["tes"]),
            Feature("Ztt_svfit_mass_ellipse", "Xtt_svfit_mass", binning=(35, 0, 350),
                x_title=Label("Z(#tau^{+}#tau^{-}) mass (SVFit)"),
                units="GeV"),
        ]
        return base_features + ObjectCollection(zttHbb_features)

    #@override
    def add_processes(self):
        processes, process_group_names, process_training_names = get_common_processes()
        zh_processes, zh_process_group_names, zh_process_training_names = get_ZH_common_processes()
        processes += zh_processes
        process_group_names.update(zh_process_group_names)
        process_training_names.update(zh_process_training_names)

        resonant_dataset_names = [f"Zprime_Zh_Ztautauhbb_M{mass}" for mass in resonant_masses_ZH]
        resonant_dataset_names_reduced = [f"Zprime_Zh_Ztautauhbb_M{mass}" for mass in reduced_resonant_masses_ZH]

        process_group_names.update({
        "Zprime_Zh_Ztautauhbb": resonant_dataset_names,
        "plot": [
            "zh_ztt_hbb_signal",
            "higgs", # includes zh_ztt_hbb & zh_ztt_hbb_background
            "vv_v",
            "wjets",
            "dy",
            "others",
            "tt",
            "ttx",
            "data",
        ],
        "plot_res": [
            *[f"Zprime_Zh_Ztautauhbb_M{mass}" for mass in resonant_masses_ZH],
            *[f"Zprime_Zh_Zbbhtautau_M{mass}" for mass in resonant_masses_ZH],
            "higgs", # includes zh_ztt_hbb & zh_zbb_htt_background
            "vv_v",
            "wjets",
            "dy",
            "others",
            "tt",
            "ttx",
            "data",
        ],
        "plot_res_reduced": [ # smaller number of mass points to avoid cluttering plot
            *[f"Zprime_Zh_Ztautauhbb_M{mass}" for mass in reduced_resonant_masses_ZH],
            *[f"Zprime_Zh_Zbbhtautau_M{mass}" for mass in reduced_resonant_masses_ZH],
            "higgs", # includes zh_zbb_htt and zh_zbb_htt_background
            "vv_v",
            "wjets",
            "dy",
            "others",
            "tt",
            "ttx",
            "data",
        ],
        "zh_split_signal": [
            "zh_ztt_hbb_signal",
            "zh_ztt_hbb_background",         
        ],
        "zh_sig_vs_bkg": [
            "all_background",
            "zh_ztt_hbb_signal",
        ],
        })     
        return processes, process_group_names, process_training_names