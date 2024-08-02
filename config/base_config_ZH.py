""" Base configuration for X->ZH->bbtautau analysis (no specific year). Inherits from base_config.py """
from analysis_tools import ObjectCollection, Category, Process, Dataset, Feature, Systematic
from plotting_tools import Label
import itertools

from config.base_config import get_common_processes, BaseConfig

resonant_masses_ZH = [500,600,700,800,1000,1200,1400,1600,1800,2000,2500,3000,3500,4000,4500,5000,5500,6000]
""" Masses for resonant central samples of ZH (both ZbbHtt and ZttHbb)"""
reduced_resonant_masses_ZH = [600, 800, 1000, 1500, 2000, 2500, 3000, 3500, 4000, 5000, 6000]
""" reduced set of masses to declutter plots """

def get_ZH_common_features():
    """ Returns the features that are common to both ZH analyses"""
    return ObjectCollection([
        # ZH
        Feature("ZH_pt", "ZH_pt", binning=(10, 50, 150),
            x_title=Label("ZH p_{T}"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_eta", "ZH_eta", binning=(20, -5., 5.),
            x_title=Label("ZH #eta"),
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_phi", "ZH_phi", binning=(20, -3.2, 3.2),
            x_title=Label("ZH #phi"),
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_mass", "ZH_mass", binning=(50, 0, 1000),
            x_title=Label("ZH_{bb#tau#tau} mass"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_mass_fine", "ZH_mass", binning=(600, 0, 3000),
            x_title=Label("ZH_{bb#tau#tau} mass"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

        # ZH (SVFit)
        Feature("ZH_svfit_pt", "ZH_svfit_pt", binning=(20, 30, 330),
            x_title=Label("ZH p_{T} (SVFit)"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_svfit_eta", "ZH_svfit_eta", binning=(20, -5., 5.),
            x_title=Label("ZH #eta (SVFit)"),
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_svfit_phi", "ZH_svfit_phi", binning=(20, -3.2, 3.2),
            x_title=Label("ZH #phi (SVFit)"),
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_svfit_mass", "ZH_svfit_mass", binning=(50, 150, 1150),
            x_title=Label("ZH_{bb#tau#tau}^{SVFit} mass"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZH_svfit_mass_fine", "ZH_svfit_mass", binning=(600, 0, 3000),
            x_title=Label("ZH_{bb#tau#tau}^{SVFit} mass"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

        # ZH KinFit
        Feature("ZHKinFit_mass", "ZHKinFit_mass", binning=(50, 150, 1150),
            x_title=Label("ZH mass (Kin. Fit)"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZHKinFit_highmass", "ZHKinFit_mass",
            binning=(79-1, 160, 2500),
            # Attempts at variable binning. Looks super ugly
            # the +1 is to include the last bin edge
            #old binning=(175, 150, 3550),
            #binning=np.concatenate([np.arange(160, 1000, 20), np.arange(1000, 1500, 50), np.arange(1500, 2000, 100), np.arange(2000, 3500+1, 500)]),
            #binning=np.concatenate([np.arange(160, 1000, 20), np.arange(1000, 1500, 50), np.arange(1500, 2000, 100), np.arange(2000, 3500+1, 500)]),
            x_title=Label("ZH mass (Kin. Fit)"), 
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZHKinFit_mass_res", "ZHKinFit_mass", binning=(50, 150, 1150),
            x_title=Label("ZH mass (Kin. Fit)"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZHKinFit_highmass_res", "ZHKinFit_mass", binning=(175, 150, 3650),
            x_title=Label("ZH mass (Kin. Fit)"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZHKinFit_mass_fit_2", "ZHKinFit_mass", binning=(24, 180, 780),
            x_title=Label("ZH mass (Kin. Fit)"),
            units="GeV",
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                            # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        Feature("ZHKinFit_chi2", "ZHKinFit_chi2", binning=(30, 0, 50),
            x_title=Label("ZH #chi^{2} (Kin. Fit)"),
            systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        
        Feature("dnn_ZHbbtt_kl_1", "dnn_ZHbbtt_kl_1", binning=(10, 0, 1),
                x_title=Label("DNN ZH"),
                systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

        Feature("dnn_ZHbbtt_kl_2", "dnn_ZHbbtt_kl_1", binning=(20, 0, 1),
                x_title=Label("DNN ZH"),
                systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

        Feature("dnn_ZHbbtt_kl_3", "dnn_ZHbbtt_kl_1", binning=(30, 0, 1),
                x_title=Label("DNN ZH"),
                systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

        Feature("dnn_ZHbbtt_kl_1_CR", "dnn_ZHbbtt_kl_1", binning=(30, 0, 1),
                x_title=Label("DNN ZH"),
                systematics=["tes", "jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        
        *[Feature(f"dnn_ZHbbtt_kl_1_{mass}", f"dnn_ZHbbtt_kl_1_{mass}", binning=(10, 0, 1),
                x_title=Label(f"PNN ZH {mass} GeV" if mass < 1000 else f"PNN ZH {mass/1000:g} TeV"),
                systematics=["tes", "jer", "jec"]) # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
        for mass in resonant_masses_ZH]
    ])

def get_ZH_common_processes():
    """ Returns the processes that are common to both ZH analyses"""
    # https://leonardocolor.io/scales.html#
    # long version
    colors_res = itertools.cycle([(31, 0, 117), (4, 41, 100), (0, 55, 101), (0, 66, 106), (0, 78, 110), (0, 88, 113), (0, 99, 115), (0, 109, 115), (0, 119, 114), (0, 129, 111), (0, 139, 105), (14, 148, 99), (48, 155, 92), (78, 161, 84), (103, 165, 76), (127, 169, 68), (151, 172, 60), (174, 174, 55)])
    #short version
    colors_res = itertools.cycle([(31, 0, 117), (0, 66, 106), (0, 99, 115), (0, 129, 111), (48, 155, 92), (127, 169, 68), (174, 174, 55)])

    processes = [
        ######### Common ZbbHtt / ZttHbb backgrounds
        # ZZ_SL
        Process("zz_sl", Label("zz_sl"), color=(130, 39, 197), parent_process="zz"),
        Process("zh_hbb_zqq", Label("zh_hbb_zqq"), color=(28, 130, 145), parent_process="zh"),

        # ZH includes all ZH processes that are not signal (ie not ZbbHtt, ZttHbb and resonant)
        Process("zh", Label("ZH"), color=(130, 39, 197), parent_process="higgs", llr_name="ZH"),

        ######### ZbbHtt
        # ZHToTauTau_M125 dataset with genfilter Z->bb,H->tautau
        # ONLY TO BE USED FOR NON-RESONANT (use dataset selection)
        Process("zh_zbb_htt_signal", Label("Z_{bb}H_{#tau#tau}"),
                ProcType="Zbb_Htautau", isSigBBTT=True, isSignal=True, color=(0, 165, 80), llr_name="ZbbHtt"),
        # same as above but with reversed genfilter (ZH, Z->anything except bb, H->tautau)
        Process("zh_zbb_htt_background", Label("ZH (H#rightarrow#tau#tau) bkg"), parent_process='zh',
                ProcType="Zbb_Htautau", isBkgBBTT=True, color=(224, 190, 79)),
        # resonant
        *[Process(f"Zprime_Zh_Zbbhtautau_M{mass}", Label(f"qqZ' {mass} GeV" if mass < 1000 else f"qqZ' {mass/1000:g} TeV"), color=next(colors_res), 
                isSigBBTT=True, ProcType="Zbb_Htautau", isSignal=True, llr_name="ZprimeZbbHtt")
            for mass in resonant_masses_ZH],
        
        # background for resonant analysis (zh_zbb_htt_signal with isSignal=False, dataset is the exact same)
        # Need to be very careful with dataset selection to only include this for resonant analysis (otherwise it duplicates zh_zbb_htt_signal)
        Process("zh_zbb_htt", Label("Z_{bb}H_{#tau#tau}"), color=(0, 165, 80), 
                ProcType="Zbb_Htautau", isSigBBTT=True, parent_process='zh'),
        
        ######### ZttHbb
        # ZH_Hbb_Zll dataset with genfilter Z->tautau,H->bb
        Process("zh_ztt_hbb_signal", Label("Z_{#tau#tau}H_{bb}"),
                ProcType="Ztautau_Hbb", isSigBBTT=True, isSignal=True, color=(0, 165, 80), llr_name="ZttHbb"),
        # same as above but with reversed genfilter (Z->ll except tautau, H->bb)
        Process("zh_ztt_hbb_background", Label("ZH (Z#rightarrow ll, H#rightarrow bb) bkg"), parent_process='zh',
                ProcType="Ztautau_Hbb", isBkgBBTT=True, color=(224, 190, 79)),
        # resonant
        *[Process(f"Zprime_Zh_Ztautauhbb_M{mass}", Label(f"qqZ' {mass} GeV" if mass < 1000 else f"qqZ' {mass/1000:g} TeV"), color=next(colors_res),
                    isSigBBTT=True, ProcType="Ztautau_Hbb", isSignal=True, llr_name="ZprimeZttHbb")
            for mass in resonant_masses_ZH],

        # background for resonant analysis (zh_ztt_hbb_signal with isSignal=False, dataset is the exact same)
        # Need to be very careful with dataset selection to only include this for resonant analysis (otherwise it duplicates zh_ztt_hbb_signal)
        Process("zh_ztt_hbb", Label("Z_{#tau#tau}H_{bb}"), color=(0, 165, 80), 
                ProcType="Ztautau_Hbb", isSigBBTT=True, parent_process='zh'
                ),
    ]

    process_group_names = {
        "datacard": [
            "zh_zbb_htt_signal",
            "zh_ztt_hbb_signal",
            "ttH",
            "dy",
            "vvv",
            "vbf_htt",
            "ggH_ZZ",
            "ttx",
            "vv", # this includes zz which in turn includes zz_sl
            "wh",
            "zh", # this is actually ZH processes not part of signal
            "tw",
            "singlet",
            "ewk",
            "wjets",
            "tt",
            "ggf_sm",
            "data",
        ],
        "datacard_res": [
            *[f"Zprime_Zh_Zbbhtautau_M{mass}" for mass in resonant_masses_ZH],
            *[f"Zprime_Zh_Ztautauhbb_M{mass}" for mass in resonant_masses_ZH],
            # "zh_zbb_htt", # ZbbHtt as background for resonant analysis -> included in zh
            # "zh_ztt_hbb", # background for resonant analysis -> included in zh
            #"zh_zbb_htt_background", # -> goes in zh
            "ttH",
            "dy",
            "vvv",
            "vbf_htt",
            "ggH_ZZ",
            "ttx",
            "vv", # this includes zz
            "wh",
            "zh", # this is actually zh_background ie ZH processes not part of signal
            # "zh_hbb_zqq", # included in zh
            #"zh_hbb", # TODO this would be included in zh but the dataset is not available
            "tw",
            "singlet",
            "ewk",
            "wjets",
            "tt",
            "ggf_sm",
            "data",
        ],
    }

    process_training_names = {}

    return ObjectCollection(processes), process_group_names, process_training_names

