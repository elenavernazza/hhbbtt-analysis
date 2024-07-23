# Put all processes that are not specific to the ZZ or ZH analysis here
from analysis_tools import ObjectCollection, Category, Process, Dataset, Feature, Systematic
from analysis_tools.utils import DotDict
from analysis_tools.utils import join_root_selection as jrs
from plotting_tools import Label
from collections import OrderedDict

from cmt.config.base_config import Config as cmt_config
from cmt.base_tasks.base import Task

from config.xs_config import cross_section_dict


def get_common_processes():
    processes = [
        # W
        Process("wjets", Label("Wjets"), color=(244, 44, 4), parent_process="all_background", llr_name="WJets"),

        Process("wjets_ht1", Label("Wjets HT1"), color=(5, 87, 92), 
                parent_process="wjets"),
        Process("wjets_ht2", Label("Wjets HT2"), color=(54, 125, 135), 
                parent_process="wjets"),
        Process("wjets_ht3", Label("Wjets HT3"), color=(77, 149, 167), 
                parent_process="wjets"),
        Process("wjets_ht4", Label("Wjets HT4"), color=(99, 173, 199), 
                parent_process="wjets"),
        Process("wjets_ht5", Label("Wjets HT5"), color=(144, 221, 244), 
                parent_process="wjets"),
        Process("wjets_ht6", Label("Wjets HT6"), color=(127, 232, 214), 
                parent_process="wjets"),
        Process("wjets_ht7", Label("Wjets HT7"), color=(109, 243, 187), 
                parent_process="wjets"),
        Process("wjets_ht8", Label("Wjets HT8"), color=(126, 238, 124), 
                parent_process="wjets"),

        Process("wjets_fxfx", Label("Wjets FXFX"), color=(5, 87, 92), 
                parent_process="wjets"),
        Process("wjets_mlm", Label("Wjets MLM"), color=(54, 125, 135), 
                parent_process="wjets"),
        Process("wjets_fxfx_0j", Label("Wjets FXFX 0j"), color=(77, 149, 167), 
                parent_process="wjets"),
        Process("wjets_fxfx_1j", Label("Wjets FXFX 1j"), color=(99, 173, 199), 
                parent_process="wjets"),
        Process("wjets_fxfx_2j", Label("Wjets FXFX 2j"), color=(144, 221, 244), 
                parent_process="wjets"),
        Process("wjets_mlm_1j", Label("Wjets MLM 1j"), color=(127, 232, 214), 
                parent_process="wjets"),
        Process("wjets_mlm_2j", Label("Wjets MLM 2j"), color=(109, 243, 187), 
                parent_process="wjets"),
        Process("wjets_mlm_3j", Label("Wjets MLM 3j"), color=(126, 238, 124), 
                parent_process="wjets"),
        Process("wjets_mlm_4j", Label("Wjets MLM 4j"), color=(126, 238, 124), 
                parent_process="wjets"),

        # DY
        Process("dy", Label("DY"), color=(255, 149, 5), parent_process="all_background", llr_name="DY", isDY=True),

        Process("dy_incl", Label("DY Incl"), color=(0, 165, 80), 
                parent_process="dy", isDY=True),
        Process("dy_ptz1", Label("DY PtZ1"), color=(86, 3, 173), 
                parent_process="dy", isDY=True),
        Process("dy_ptz2", Label("DY PtZ2"), color=(109, 53,186), 
                parent_process="dy", isDY=True),
        Process("dy_ptz3", Label("DY PtZ3"), color=(131, 103,199), 
                parent_process="dy", isDY=True),
        Process("dy_ptz4", Label("DY PtZ4"), color=(179, 161, 232), 
                parent_process="dy", isDY=True),
        Process("dy_ptz5", Label("DY PtZ5"), color=(210, 208, 237), 
                parent_process="dy", isDY=True),
        Process("dy_ptz6", Label("DY PtZ6"), color=(225, 232, 239), 
                parent_process="dy", isDY=True),
        Process("dy_0j", Label("DY 0j"), color=(91, 179, 207), 
                parent_process="dy", isDY=True),
        Process("dy_1j", Label("DY 1j"), color=(109, 243, 187), 
                parent_process="dy", isDY=True),
        Process("dy_2j", Label("DY 2j"), color=(83, 223, 124), 
                parent_process="dy", isDY=True),

        # EWK
        Process("ewk_z",      Label("EWK Z"),     color=(255, 230, 0), parent_process="ewk"),
        Process("ewk_wplus",  Label("EWK W^{+}"), color=(255, 230, 0), parent_process="ewk"),
        Process("ewk_wminus", Label("EWK W^{-}"), color=(255, 230, 0), parent_process="ewk"),
        Process("ewk", Label("EWK"), color=(255, 230, 0), parent_process="others", llr_name="EWK"),

        # TT
        Process("tt_dl", Label("t#bar{t} DL"), color=(40, 194, 255), parent_process="tt"),
        Process("tt_sl", Label("t#bar{t} SL"), color=(40, 194, 255), parent_process="tt"),
        Process("tt_fh", Label("t#bar{t} FH"), color=(40, 194, 255), parent_process="tt"),
        Process("tt", Label("t#bar{t}"), color=(40, 194, 255), parent_process="all_background", llr_name="TT"),
        # TW
        Process("tw", Label("t+W"), color=(255, 230, 0), parent_process="others", llr_name="TW"),
        # singleT
        Process("singlet", Label("st"), color=(255, 230, 0), parent_process="others", llr_name="singleT"),

        # VV
        Process("zz", Label("ZZ"), color=(20, 60, 255), parent_process="vv"),
        Process("wz", Label("WZ"), color=(20, 60, 255), parent_process="vv"),
        Process("ww", Label("WW"), color=(20, 60, 255), parent_process="vv"),
        Process("vv", Label("VV"), color=(20, 60, 255), parent_process="vv_v", llr_name="VV"),
        # VVV
        Process("zzz", Label("ZZZ"), color=(20, 60, 255), parent_process="vvv"),
        Process("wzz", Label("WZZ"), color=(20, 60, 255), parent_process="vvv"),
        Process("www", Label("WWW"), color=(20, 60, 255), parent_process="vvv"),
        Process("wwz", Label("WWZ"), color=(20, 60, 255), parent_process="vvv"),
        Process("vvv", Label("VVV"), color=(20, 60, 255), parent_process="vv_v", llr_name="VVV"),
        Process("vv_v", Label("VV(V)"), color=(20, 60, 255), parent_process="all_background"),

        # TTX
        Process("ttw", Label("TTW"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttz", Label("TTZ"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttww", Label("TTWW"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttwz", Label("TTWZ"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttwh", Label("TTWH"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttzh", Label("TTZH"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttzz", Label("TTZZ"), color=(4, 240, 106), parent_process="ttx"),
        Process("ttx", Label("TTX"), color=(4, 240, 106), parent_process="all_background", llr_name="TTX"),
        
        # zh_hbb_zqq : is defined in ZZ and ZH configs
        # WH_htt
        Process("wh_htt", Label("wh_htt"), color=(130, 39, 197), parent_process="wh"),
        Process("wh", Label("WH"), color=(130, 39, 197), parent_process="higgs", llr_name="WH"),
        # VBF_htt
        Process("vbf_htt", Label("vbf_htt"), color=(130, 39, 197), parent_process="higgs", llr_name="qqH"),
        # ggHZZ
        Process("ggH_ZZ", Label("ggH_ZZ"), color=(130, 39, 197), parent_process="higgs", llr_name="ggH"),
        # ttH_hbb
        Process("tth_bb", Label("t#bar{t}H bb"), color=(130, 39, 197), parent_process="ttH"),
        Process("tth_tautau", Label("t#bar{t}H #tau#tau"), color=(130, 39, 197), parent_process="ttH"),
        Process("tth_nonbb", Label("t#bar{t}H nonbb"), color=(130, 39, 197), parent_process="ttH"),
        Process("ttH", Label("t#bar{t}H"), color=(130, 39, 197), parent_process="higgs", llr_name="ttH"),
        # ggHH
        Process("ggf_sm", Label("HH_{ggF}"), color=(130, 39, 197), isSignal=False, parent_process="higgs", llr_name="ggHH_kl_1_kt_1_hbbhtt"),
        Process("higgs", Label("Higgs"), color=(130, 39, 197), parent_process="all_background", llr_name="Higgs"),

        Process("others", Label("Others"), color=(255, 230, 0),
            parent_process="all_background"),

        # Data
        Process("data", Label("Data"), color=(0, 0, 0), isData=True),
        Process("data_tau", Label("Data"), color=(0, 0, 0), parent_process="data", isData=True),
        Process("data_etau", Label("Data"), color=(0, 0, 0), parent_process="data", isData=True),
        Process("data_mutau", Label("Data"), color=(0, 0, 0), parent_process="data", isData=True),

        # unused currently for ZZ/ZH analysis
        Process("ggf", Label("HH_{ggF}"), color=(130, 39, 197), isSignal=False, llr_name="ggH",
            parent_process="all_background"),
        Process("ggf_0_1", Label("HH_{ggF}^{(0, 1)}"), color=(0, 0, 0), isSignal=False,
            parent_process="ggf"),
        Process("ggf_2p45_1", Label("HH_{ggF}^{(2.45, 1)}"), color=(0, 0, 0), isSignal=False,
            parent_process="ggf"),
        Process("ggf_5_1", Label("HH_{ggF}^{(5, 1)}"), color=(0, 0, 0), isSignal=False,
            parent_process="ggf"),

        # unused currently for ZZ/ZH analysis
        Process("vbf", Label("HH_{VBF}"), color=(0, 0, 0), isSignal=False, llr_name="qqH"),
        Process("vbf_sm", Label("HH_{VBF}"), color=(0, 0, 0), isSignal=False, parent_process="vbf"),
        Process("vbf_0p5_1_1", Label("HH_{VBF}^{(0.5,1,1)}"), color=(0, 0, 0),
            isSignal=False, parent_process="vbf"),
        Process("vbf_1p5_1_1", Label("HH_{VBF}^{(1.5,1,1)}"), color=(0, 0, 0),
            isSignal=False, parent_process="vbf"),
        Process("vbf_1_0_1", Label("HH_{VBF}^{(1,0,1)}"), color=(255, 153, 0),
            isSignal=False, parent_process="vbf"),
        Process("vbf_1_1_0", Label("HH_{VBF}^{(1,1,0)}"), color=(0, 0, 0),
            isSignal=False, parent_process="vbf"),
        Process("vbf_1_1_2", Label("HH_{VBF}^{(1,1,2)}"),
            color=(0, 0, 0), isSignal=False, parent_process="vbf"),
        Process("vbf_1_2_1", Label("HH_{VBF}^{(1,2,1)}"),
            color=(255, 102, 102), isSignal=False, parent_process="vbf"),

        Process("all_background", Label("Background"), color=(0, 0, 255)),

    ]

    process_group_names = {
        "data_tau": [
            "data_tau",
        ],
        "data_etau": [
            "data_etau",
        ],
        "bkg": [
            "tt_dl",
        ],
        "signal": [
            "ggf_sm",
        ],
        "etau": [
            "tt_dl",
            "tt_sl",
            "tt_fh",
            "dy",
            "others",
            "data_etau",
        ],
        "mutau": [
            "tt_dl",
            "tt_sl",
            "tt_fh",
            "dy",
            "others",
            "data_mutau",
        ],
        "mutau_tmp": [
            "tt_dl",
            "tt_sl",
            "tt_fh",
            "dy",
            "wjets",
            "data_mutau",
        ],
        "tautau": [
            "tt_dl",
            "tt_sl",
            "tt_fh",
            "dy",
            "others",
            "data_tau",
        ],
        "vbf": [
            "vbf_sm",
            "vbf_0p5_1_1",
            "vbf_1p5_1_1",
            "vbf_1_0_1",
            "vbf_1_1_0",
            "vbf_1_1_2",
            "vbf_1_2_1"
        ],
        "ggf": [
            "ggf_sm",
            "ggf_0_1",
            "ggf_2p45_1",
            "ggf_5_1",
        ],
    }

    process_training_names = {
        "default": [
            "ggf_sm",
            "dy"
        ]
    }

    return ObjectCollection(processes), process_group_names, process_training_names

class BaseConfig(cmt_config):
    def __init__(self, *args, **kwargs):
        self.channels = self.add_channels()
        self.regions = self.add_regions()
        self.categories = self.add_categories()
        self.cross_section_dict = cross_section_dict
        super().__init__(*args, **kwargs)

    def join_selection_channels(self, selection):
        """ Takes a dict channel -> [selection], where the list of selections is first and-ed (with parentheses) 
        and makes a selection (etau && selection[etau]) || (mutau && selection[mutau]) || (tautau && selection[tautau])
        Channel selections are taken from self.channels.selection (aka pairType)
        """
        return jrs([jrs(jrs(selection[ch.name], op="and"), ch.selection, op="and")
            for ch in self.channels], op="or")

    def combine_selections_per_channel(self, selection1, selection2):
        selection = DotDict()
        for channel in selection1:
            selection[channel] = jrs(jrs(selection1[channel], op="and"),
                jrs(selection2[channel], op="and"), op="or")
        return selection

    def add_regions(self):
        selection = OrderedDict()
        region_names = ["Signal region", "OS inv. iso", "SS iso", "SS inv. iso"]
        selection["os_iso"] = {
            "mutau": ["isOS == 1",
                "dau2_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium],
            "etau": ["isOS == 1",
                "dau2_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium],
            "tautau": ["isOS == 1",
                "dau1_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium,
                "dau2_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium],
        }
        selection["os_inviso"] = {
            "mutau": ["isOS == 1", "dau2_idDeepTau2017v2p1VSjet >= 1",
                "dau2_idDeepTau2017v2p1VSjet < %s" % self.deeptau.vsjet.Medium],
            "etau": ["isOS == 1", "dau2_idDeepTau2017v2p1VSjet >= 1",
                "dau2_idDeepTau2017v2p1VSjet < %s" % self.deeptau.vsjet.Medium],
            "tautau": ["isOS == 1",
                "dau1_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium,
                "dau2_idDeepTau2017v2p1VSjet >= 1",
                "dau2_idDeepTau2017v2p1VSjet < %s" % self.deeptau.vsjet.Medium],
        }
        selection["ss_iso"] = {
            "mutau": ["isOS == 0",
                "dau2_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium],
            "etau": ["isOS == 0",
                "dau2_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium],
            "tautau": ["isOS == 0",
                "dau1_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium,
                "dau2_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium],
        }
        selection["ss_inviso"] = {
            "mutau": ["isOS == 0", "dau2_idDeepTau2017v2p1VSjet >= 1",
                "dau2_idDeepTau2017v2p1VSjet < %s" % self.deeptau.vsjet.Medium],
            "etau": ["isOS == 0", "dau2_idDeepTau2017v2p1VSjet >= 1",
                "dau2_idDeepTau2017v2p1VSjet < %s" % self.deeptau.vsjet.Medium],
            "tautau": ["isOS == 0",
                "dau1_idDeepTau2017v2p1VSjet >= %s" % self.deeptau.vsjet.Medium,
                "dau2_idDeepTau2017v2p1VSjet >= 1",
                "dau2_idDeepTau2017v2p1VSjet < %s" % self.deeptau.vsjet.Medium],
        }
        regions = []
        for ikey, key in enumerate(selection):
            regions.append(Category(key, label=Label(region_names[ikey]),
                selection=self.join_selection_channels(selection[key])))
            for channel in self.channels:
                regions.append(Category("_".join([channel.name, key]),
                    label=Label(", ".join([channel.label.root, region_names[ikey]])),
                    selection=jrs(channel.selection,
                        jrs(selection[key][channel.name], op="and"), op="and")))
        return ObjectCollection(regions)

    def add_channels(self):
        channels = [
            Category("mutau", Label("#tau_{#mu}#tau_{h}"), selection="pairType == 0"),
            Category("etau", Label("#tau_{e}#tau_{h}"), selection="pairType == 1"),
            Category("tautau", Label("#tau_{h}#tau_{h}"), selection="pairType == 2"),
        ]
        return ObjectCollection(channels)
    
    def get_bjets_requirements(self):
        """ Compute the requirements for btagging for the different categories.
        Returns dict with keys req_1b, req_2b, req_ll 
        Uses self.btag
        """
        reqs = DotDict()
        btag = "Jet_btagDeepFlavB.at(bjet{}_JetIdx)"
        df = lambda i, op, wp: "{} {} {}".format(btag.format(i), op, self.btag[wp])
        reqs.req_1b = jrs(jrs(df(1, ">", "medium"), df(2, "<", "medium"), op="and"),
                jrs(df(1, "<", "medium"), df(2, ">", "medium"), op="and"), op="or")  # exactly one b jet passes medium (for res1b)
        reqs.req_2b = jrs(df(1, ">", "medium"), df(2, ">", "medium")) # both bjets pass medium (for res2b)
        reqs.req_ll = jrs(df(1, ">", "loose"), df(2, ">", "loose")) # both bjets pass loose (for boosted) 
        return reqs

    def add_categories(self, **kwargs):
        """ NOT USED """
        reject_sel = ["pairType == -31415"]

        sel = DotDict()
        btag = kwargs.pop("btag", "Jet_btagDeepFlavB.at(bjet{}_JetIdx)")
        df = lambda i, op, wp: "{} {} {}".format(btag.format(i), op, self.btag[wp])
        sel["btag"] = DotDict(
            m_first=[df(1, ">", "medium")], # bjet 1 passes medium btag WP
            m_second=[df(2, ">", "medium")],
            m_any=[jrs(df(1, ">", "medium"), df(2, ">", "medium"), op="or")], # at least one of bjet 1 or 2 passes medium WP
            l=[df(1, ">", "loose"), df(2, "<", "loose")], # bjet1 passes loose, bjet 2 fails loose
            ll=[df(1, ">", "loose"), df(2, ">", "loose")], # both bjets pass loose
            m=[jrs(jrs(df(1, ">", "medium"), df(2, "<", "medium"), op="and"),
                jrs(df(1, "<", "medium"), df(2, ">", "medium"), op="and"), op="or")], # exactly one b jet passes medium
            mm=[df(1, ">", "medium"), df(2, ">", "medium")], # both bjets pass medium
            not_mm=[df(1, "<", "medium"), df(2, "<", "medium")], # both bjets fail medium
        )

        # If we use {{}} the name of the feature is replaced by the expression we define in the feature object (including syst in case)
        _excl_vbf_loose_nob = ["{{VBFjj_mass}} > 500", "abs({{VBFjj_deltaEta}}) > 3",
            "isVBFtrigger == 0"]
        _excl_vbf_loose = _excl_vbf_loose_nob + sel.btag.m_any
        _excl_non_vbf_loose = ["!" + jrs(_excl_vbf_loose, op="and")]

        _excl_vbf_tight_nob = ["{{vbfjet1_pt}} > 140", "{{vbfjet2_pt}} > 60", "{{VBFjj_mass}} > 800",
            "abs({{VBFjj_deltaEta}}) > 3", "isVBFtrigger == 1"]
        _excl_vbf_tight = _excl_vbf_tight_nob + sel.btag.m_any
        _excl_non_vbf_tight = ["!" + jrs(_excl_vbf_tight, op="and")]

        _excl_non_vbf = ["!" + jrs(jrs(_excl_vbf_loose, op="and"), jrs(_excl_vbf_tight, op="and"),
            op="or")]

        mass_ellipse_sel = ["(({{Htt_svfit_mass}} - 129.) * ({{Htt_svfit_mass}} - 129.)/ (53. * 53.)"
            " + ({{Hbb_mass}} - 169.) * ({{Hbb_mass}} - 169.) / (145. * 145.)) < 1"]
        mass_boost_sel = ["(({{Htt_svfit_mass}} - 128.) * ({{Htt_svfit_mass}} - 128.) / (60. * 60.)"
            " + ({{Hbb_mass}} - 159.) * ({{Hbb_mass}} - 159.) / (94. * 94.)) < 1"]
        sel["resolved_1b"] = DotDict({
            ch: (sel.btag.m + mass_ellipse_sel + ["isBoosted != 1"]
                + _excl_non_vbf_loose)
            for ch in self.channels.names()
        })
        sel["resolved_1b_combined"] = self.join_selection_channels(sel["resolved_1b"])
        sel["resolved_2b"] = DotDict({
            ch: (sel.btag.mm + mass_ellipse_sel + ["isBoosted != 1"]
                + _excl_non_vbf)
            for ch in self.channels.names()
        })
        sel["resolved_2b_combined"] = self.join_selection_channels(sel["resolved_2b"])
        sel["boosted"] = DotDict({
            ch: (sel.btag.ll + mass_boost_sel + ["isBoosted == 1"]
                + _excl_non_vbf)
            for ch in self.channels.names()
        })
        sel["boosted_combined"] = self.join_selection_channels(sel["boosted"])
        sel["vbf_loose"] = DotDict({
            ch: _excl_vbf_loose
            for ch in self.channels.names()
        })
        sel["vbf_loose_combined"] = self.join_selection_channels(sel.vbf_loose)
        sel["vbf_tight"] = DotDict(
            mutau=reject_sel,  # category not used, should always reject
            etau=reject_sel,  # category not used, should always reject
            tautau=_excl_vbf_tight + sel.btag.m_any,
        )
        sel["vbf_tight_combined"] = self.join_selection_channels(sel.vbf_tight)
        sel["vbf"] = self.combine_selections_per_channel(sel.vbf_tight, sel.vbf_loose)
        sel["vbf_combined"] = self.join_selection_channels(sel.vbf)

        categories = [
            Category("base", "base", selection="event >= 0"),
            Category("base_NoSyst", "base", selection="event >= 0"),
            Category("base_fixedGenWeight", "base with genWeight (fixed)", selection="1"),
            Category("base_oldGenWeight", "base with old genWeight (no fix)", selection="1"),
            Category("baseline", "Baseline", selection="pairType >= 0 && pairType <= 2"),
            Category("base_selection", "base",
                nt_selection="(Sum$(Tau_pt->fElements > 17) > 0"
                    " && ((Sum$(Muon_pt->fElements > 17) > 0"
                    " || Sum$(Electron_pt->fElements > 17) > 0)"
                    " || Sum$(Tau_pt->fElements > 17) > 1)"
                    " && Sum$(Jet_pt->fElements > 17) > 1)",
                selection="Tau_pt[Tau_pt > 17].size() > 0 "
                    "&& ((Muon_pt[Muon_pt > 17].size() > 0"
                    "|| Electron_pt[Electron_pt > 17].size() > 0)"
                    "|| Tau_pt[Tau_pt > 17].size() > 1)"
                    "&& Jet_pt[Jet_pt > 17].size() > 0"),
            Category("baseline_sr", "baseline Signal region",
                selection="((pairType == 0) && (isOS == 1) && (dau2_idDeepTau2017v2p1VSjet >= {0})) || "
                    "((pairType == 1) && (isOS == 1) && (dau2_idDeepTau2017v2p1VSjet >= {0})) || "
                    "((pairType == 2) && (isOS == 1) && "
                    "(dau2_idDeepTau2017v2p1VSjet >= {0}) && (dau2_idDeepTau2017v2p1VSjet >= {0})) "
                    .format(self.deeptau.vsjet.Medium)),
            # Category("dum", "dummy category", selection="event == 220524669"),
            Category("dum", "dummy category", selection="event == 74472670"),
            Category("debug", "debug category", selection="(event >= 31122668) && (event <= 31185105)"),
            Category("mutau", "#mu#tau channel", selection="pairType == 0"),
            Category("etau", "e#tau channel", selection="pairType == 1"),
            Category("tautau", "#tau#tau channel", selection="pairType == 2"),
            Category("resolved_1b", label="Resolved 1b category",
                selection=sel["resolved_1b_combined"]),
            Category("resolved_2b", label="Resolved 2b category",
                selection=sel["resolved_2b_combined"]),
            Category("boosted", label="Boosted category",
                selection=sel["boosted_combined"]),
            Category("vbf_loose", label="VBF (loose) category",
                selection=sel["vbf_loose_combined"]),
            Category("vbf_tight", label="VBF (tight) category",
                selection=sel["vbf_tight_combined"]),
            Category("vbf", label="VBF category",
                selection=sel["vbf_combined"]),
        ]
        return ObjectCollection(categories)
    
    def add_features(self):
        features = [
            Feature("nJet", "nJet", binning=(20, 0, 20),
                x_title=Label("nJet")),
            
            Feature("jet_pt", "Jet_pt", binning=(30, 0, 300),
                x_title=Label("jet p_{T}"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]),
            Feature("jet_eta", "Jet_eta", binning=(20, 0, 300),
                x_title=Label("jet #eta")),

            Feature("muon_pt", "dau1_pt", binning=(20, 0, 200),
                x_title=Label("p_{T}^{#mu}"),
                units="GeV",
                systematics=["tes"]),
            Feature("muon_eta", "dau1_eta", binning=(20, -2.3, 2.3),
                x_title=Label("#eta_{#mu}")),

            Feature("ele_pt", "dau1_pt", binning=(30, 0, 300),
                x_title=Label("p_{T}^{e}"),
                units="GeV",
                systematics=["tes"]),
            Feature("ele_eta", "dau1_eta", binning=(20, -2.3, 2.3),
                x_title=Label("#eta_{e}")),

            Feature("tau_pt", "dau1_pt", binning=(30, 0, 300),
                x_title=Label("p_{T}^{#tau1}"),
                units="GeV",
                systematics=["tes"]),
            Feature("tau_eta", "dau1_eta", binning=(20, -2.1, 2.1),
                x_title=Label("#eta_{#tau1}")),

            Feature("lep1_pt_NoSyst", "dau1_pt", binning=(10, 50, 150),
                x_title=Label("#tau_{1} p_{T}"),
                units="GeV"),
            Feature("lep2_pt_NoSyst", "dau2_pt", binning=(10, 50, 150),
                x_title=Label("#tau_{1} p_{T}"),
                units="GeV"),

            # bjet features
            Feature("bjet1_pt", "Jet_pt.at(bjet1_JetIdx)", binning=(30, 20, 200),
                x_title=Label("p_{T}^{b1}"),
                units="GeV",
                central="jet_smearing",
                selection="abs({{bjet1_eta}}) < 2.1", #[FIXME]?
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("bjet1_eta", "Jet_eta.at(bjet1_JetIdx)", binning=(20, -2.4, 2.4),
                x_title=Label("#eta_{b1}")),
            Feature("bjet1_phi", "Jet_phi.at(bjet1_JetIdx)", binning=(20, -5, 5),
                x_title=Label("b_{1} #phi")),
            Feature("bjet1_mass", "Jet_mass.at(bjet1_JetIdx)", binning=(10, 50, 150),
                x_title=Label("b_{1} m"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("bjet2_pt", "Jet_pt.at(bjet2_JetIdx)", binning=(10, 50, 150),
                x_title=Label("b_{2} p_{T}"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("bjet2_eta", "Jet_eta.at(bjet2_JetIdx)", binning=(20, -3.2, 3.2),
                x_title=Label("b_{2} #eta")),
            Feature("bjet2_phi", "Jet_phi.at(bjet2_JetIdx)", binning=(20, -5, 5),
                x_title=Label("b_{2} #phi")),
            Feature("bjet2_mass", "Jet_mass.at(bjet2_JetIdx)", binning=(10, 50, 150),
                x_title=Label("b_{2} m"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

            # jets features
            Feature("ctjet1_pt", "Jet_pt.at(ctjet_indexes.at(0))", binning=(10, 50, 150),
                x_title=Label("add. central jet 1 p_{t}"),
                units="GeV",
                central="jet_smearing",
                selection="ctjet_indexes.size() > 0",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("ctjet1_eta", "Jet_eta.at(ctjet_indexes.at(0))", binning=(20, -5., 5.),
                x_title=Label("add. central jet 1 #eta"),
                selection="ctjet_indexes.size() > 0"),
            Feature("ctjet1_phi", "Jet_phi.at(ctjet_indexes.at(0))", binning=(20, -3.2, 3.2),
                x_title=Label("add. central jet 1 #phi"),
                selection="ctjet_indexes.size() > 0"),
            Feature("ctjet1_mass", "Jet_mass.at(ctjet_indexes.at(0))", binning=(10, 50, 150),
                x_title=Label("add. central jet 1 m"),
                units="GeV",
                central="jet_smearing",
                selection="ctjet_indexes.size() > 0",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("fwjet1_pt", "Jet_pt.at(fwjet_indexes.at(0))", binning=(10, 50, 150),
                x_title=Label("add. forward jet 1 p_t"),
                units="GeV",
                central="jet_smearing",
                selection="fwjet_indexes.size() > 0",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("fwjet1_eta", "Jet_eta.at(fwjet_indexes.at(0))", binning=(20, -5., 5.),
                x_title=Label("add. forward jet 1 #eta"),
                selection="fwjet_indexes.size() > 0"),
            Feature("fwjet1_phi", "Jet_phi.at(fwjet_indexes.at(0))", binning=(20, -3.2, 3.2),
                x_title=Label("add. forward jet 1  #phi"),
                selection="fwjet_indexes.size() > 0"),
            Feature("fwjet1_mass", "Jet_mass.at(fwjet_indexes.at(0))", binning=(10, 50, 150),
                x_title=Label("add. forward jet 1  m"),
                units="GeV",
                central="jet_smearing",
                selection="fwjet_indexes.size() > 0",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

            Feature("bjet_difpt", "abs({{bjet1_pt}} - {{bjet2_pt}})", binning=(10, 50, 150),
                x_title=Label("bb #Delta p_t"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

            # lepton features
            Feature("lep1_pt", "dau1_pt", binning=(10, 50, 150),
                x_title=Label("#tau_{1} p_{T}"),
                units="GeV",
                systematics=["tes"]),
            Feature("lep1_eta", "dau1_eta", binning=(20, -5., 5.),
                x_title=Label("#tau_{1} #eta")),
            Feature("lep1_phi", "dau1_phi", binning=(20, -3.2, 3.2),
                x_title=Label("#tau_{1} #phi")),
            Feature("lep1_mass", "dau1_mass", binning=(10, 50, 150),
                x_title=Label("#tau_{1} m"),
                units="GeV",
                systematics=["tes"]),

            Feature("lep2_pt", "dau2_pt", binning=(10, 50, 150),
                x_title=Label("#tau_{2} p_{T}"),
                units="GeV",
                systematics=["tes"]),
            Feature("lep2_eta", "dau2_eta", binning=(20, -5., 5.),
                x_title=Label("#tau_{2} #eta")),
            Feature("lep2_phi", "dau2_phi", binning=(20, -3.2, 3.2),
                x_title=Label("#tau_{2} #phi")),
            Feature("lep2_mass", "dau2_mass", binning=(10, 50, 150),
                x_title=Label("#tau_{2} m"),
                units="GeV",
                systematics=["tes"]),

            Feature("dR_tautau", "sqrt((dau1_eta - dau2_eta)*(dau1_eta - dau2_eta) "
                " + (dau1_phi - dau2_phi)*(dau1_phi - dau2_phi))",
                binning=(30, 0, 5),
                x_title=Label("#Delta R (#tau_{1}, #tau_{2})")),

            # MET
            Feature("met_pt", "MET_pt", binning=(35, 0, 350),
                x_title=Label("p_{T}^{miss}"),
                units="GeV",
                central="met_smearing",
                systematics=["jer_MET", "tes_MET", "jec_MET"]), # "jec_MET_1", "jec_MET_2", "jec_MET_3", 
                            #  "jec_MET_4", "jec_MET_5", "jec_MET_6", "jec_MET_7", "jec_MET_8",
                            #  "jec_MET_9", "jec_MET_10", "jec_MET_11"]),
            Feature("met_phi", "MET_phi", binning=(20, -3.2, 3.2),
                x_title=Label("MET #phi"),
                central="met_smearing",
                systematics=["jer_MET", "tes_MET", "jec_MET_1"]), # "jec_MET_2", "jec_MET_3", 
                            #  "jec_MET_4", "jec_MET_5", "jec_MET_6", "jec_MET_7", "jec_MET_8",
                            #  "jec_MET_9", "jec_MET_10", "jec_MET_11"]),
            
            Feature("btagging", "Jet_btagDeepFlavB", binning=(30,0,1),
                x_title=Label("b-tagging score")),

            # # Hbb
            # Feature("Hbb_pt", "Hbb_pt", binning=(10, 50, 150),
            #     x_title=Label("Z(b#bar{b}) p_{T}"),
            #     units="GeV"),
            # Feature("Hbb_eta", "Hbb_eta", binning=(20, -5., 5.),
            #     x_title=Label("Z(b#bar{b}) #eta")),
            # Feature("Hbb_phi", "Hbb_phi", binning=(20, -3.2, 3.2),
            #     x_title=Label("Z(b#bar{b}) #phi")),
            # Feature("Hbb_mass", "Hbb_mass", binning=(100, 0, 500),
            #     x_title=Label("Z(b#bar{b}) mass"),
            #     units="GeV"),

            # # Htt
            # Feature("Htt_pt", "Htt_pt", binning=(10, 50, 150),
            #     x_title=Label("H(#tau^{+}#tau^{-}) p_{T}"),
            #     units="GeV",),
            #     # systematics=["tes"]),
            # Feature("Htt_eta", "Htt_eta", binning=(20, -5., 5.),
            #     x_title=Label("H(#tau^{+}#tau^{-}) #eta"),),
            #     # systematics=["tes"]),
            # Feature("Htt_phi", "Htt_phi", binning=(20, -3.2, 3.2),
            #     x_title=Label("H(#tau^{+}#tau^{-}) #phi"),),
            #     # systematics=["tes"]),
            # Feature("Htt_mass", "Htt_mass", binning=(30, 0, 300),
            #     x_title=Label("H(#tau^{+}#tau^{-}) mass"),
            #     units="GeV"),
            #     #systematics=["tes"]),

            # # Htt (SVFit)
            # Feature("Htt_svfit_pt", "Htt_svfit_pt", binning=(10, 50, 150),
            #     x_title=Label("H(#tau^{+}#tau^{-}) p_{T} (SVFit)"),
            #     units="GeV",),
            #     # systematics=["tes"]),
            # Feature("Htt_svfit_eta", "Htt_svfit_eta", binning=(20, -5., 5.),
            #     x_title=Label("H(#tau^{+}#tau^{-}) #eta (SVFit)"),),
            #     # systematics=["tes"]),
            # Feature("Htt_svfit_phi", "Htt_svfit_phi", binning=(20, -3.2, 3.2),
            #     x_title=Label("H(#tau^{+}#tau^{-}) #phi (SVFit)"),),
            #     # systematics=["tes"]),
            # Feature("Htt_svfit_mass", "Htt_svfit_mass", binning=(70, 0, 350),
            #     x_title=Label("H(#tau^{+}#tau^{-}) mass (SVFit)"),
            #     units="GeV"),
            #     # systematics=["tes"]),

            # # HH
            # Feature("HH_pt", "HH_pt", binning=(10, 50, 150),
            #     x_title=Label("ZZ p_{T}"),
            #     units="GeV"),
            #     # systematics=["tes"]),
            # Feature("HH_eta", "HH_eta", binning=(20, -5., 5.),
            #     x_title=Label("ZZ #eta")),
            #     # systematics=["tes"]),
            # Feature("HH_phi", "HH_phi", binning=(20, -3.2, 3.2),
            #     x_title=Label("ZZ #phi")),
            #     # systematics=["tes"]),
            # Feature("HH_mass", "HH_mass", binning=(50, 0, 1000),
            #     x_title=Label("m_{bb#tau#tau}"),
            #     units="GeV"),
            #     # systematics=["tes"]),

            # # HH (SVFit)
            # Feature("HH_svfit_pt", "HH_svfit_pt", binning=(10, 50, 150),
            #     x_title=Label("HH p_{T} (SVFit)"),
            #     units="GeV",),
            #     # systematics=["tes"]),
            # Feature("HH_svfit_eta", "HH_svfit_eta", binning=(20, -5., 5.),
            #     x_title=Label("HH #eta (SVFit)")),
            #     #systematics=["tes"]),
            # Feature("HH_svfit_phi", "HH_svfit_phi", binning=(20, -3.2, 3.2),
            #     x_title=Label("HH #phi (SVFit)")),
            #     #systematics=["tes"]),
            # Feature("HH_svfit_mass", "HH_svfit_mass", binning=(50, 0, 1000),
            #     x_title=Label("HH mass (SVFit)"),
            #     units="GeV"),
            #     # systematics=["tes"]),

            # # HH KinFit
            # Feature("HHKinFit_mass", "HHKinFit_mass", binning=(50, 0, 1000),
            #     x_title=Label("HH mass (Kin. Fit)"),
            #     units="GeV"),
            #     # systematics=["tes"]),
            # Feature("HHKinFit_chi2", "HHKinFit_chi2", binning=(30, 0, 10),
            #     x_title=Label("HH #chi^{2} (Kin. Fit)")),
            #     # systematics=["tes"]),

            # # HH Gen Level
            # Feature("genHH_mass", "genHH_mass", binning=(100, 0, 2500),
            #     x_title=Label("generator HH mass"),
            #     units="GeV"),

            # DNN features FullFeatSet: no systematics since the DNN cannot hadle them and we don't want to save theme for plotting
            Feature("zz_kinfit_chi2", "hh_kinfit_chi2", binning=(30, 0, 50),
                x_title=Label("ZZ #chi^{2} (Kin. Fit)"),
                systematics=[]),
            Feature("zz_kinfit_m", "hh_kinfit_m", binning=(50, 0, 1000),
                x_title=Label("ZZ mass (Kin. Fit)"), units="GeV",
                systematics=[]),
            Feature("sv_mass", "sv_mass", binning=(20, 30, 230),
                x_title=Label("Z(#tau^{+}#tau^{-}) mass (SVFit)"), units="GeV",
                systematics=[]),
            Feature("dR_l1_l2_x_sv_pT", "dR_l1_l2_x_sv_pT", binning=(30, 0, 400), 
                x_title=Label("#DeltaR (l_{1}, l_{2}) #times p_{T} (Z_{#tau#tau}^{SVFit})"),
                systematics=[]),
            Feature("l1_mt", "l_1_mt", binning=(25, 0, 200), 
                x_title=Label("m_{T} (l_{1})"), units="GeV",
                systematics=[]),
            Feature("l_2_pT", "l_2_pT", binning=(25, 50, 150),
                x_title=Label("#tau_{2} p_{t}"), units="GeV",
                systematics=[]),
            Feature("dR_l1_l2", "dR_l1_l2", binning=(50, 0, 5), 
                x_title=Label("#DeltaR (l_{1}, l_{2})"),
                systematics=[]),
            Feature("dphi_sv_met", "dphi_sv_met", binning=(30, 0, 3.14), 
                x_title=Label("#Delta#phi (Z_{#tau#tau}^{SVFit}, MET)"),
                systematics=[]),
            Feature("z_bb_mass", "h_bb_mass", binning=(35, 0, 350),
                x_title=Label("Z(b#bar{b}) mass"), units="GeV",
                systematics=[]),
            Feature("b_2_hhbtag", "b_2_hhbtag", binning=(50, 0, 1), 
                x_title=Label("ZZbtag bJet_{2}"),
                systematics=[]),
            Feature("diZ_mass_sv", "diH_mass_sv", binning=(50, 0, 1000),
                x_title=Label("ZZ_{bb#tau#tau}^{SVFit}"), units="GeV",
                systematics=[]),
            Feature("dphi_zbb_sv", "dphi_hbb_sv", binning=(30, 0, 3.14), 
                x_title=Label("#Delta#phi (Z_{bb}, Z_{#tau#tau}^{SVFit})"),
                systematics=[]),
            Feature("z_bb_pT", "h_bb_pT", binning=(10, 50, 150),
                x_title=Label("Z(b#bar{b}) p_{T}"), units="GeV",
                systematics=[]),
            Feature("dR_l1_l2_boosted_ztt_met", "dR_l1_l2_boosted_htt_met", binning=(50, 0, 5), 
                x_title=Label("#DeltaR (l_{1}, l_{2}) Boost(Z_{#tau#tau}+MET)"),
                systematics=[]),
            Feature("l_1_pT", "l_1_pT", binning=(25, 50, 150),
                x_title=Label("#tau_{1} p_{T}"), units="GeV",
                systematics=[]),
            Feature("b_1_pT", "b_1_pT", binning=(20, 40, 200),
                x_title=Label("b_{1} p_{T}"), units="GeV",
                systematics=[]),
            Feature("phi", "phi", binning=(30, 0, 3.14), 
                x_title=Label("#Phi"),
                systematics=[]),
            Feature("costheta_l2_zttmet", "costheta_l2_httmet", binning=(20, 0, 1), 
                x_title=Label("cos#Theta"),
                systematics=[]),
            Feature("b_1_cvsb", "b_1_cvsb", binning=(4, 0, 4), 
                x_title=Label("CvsB (bJet_{1})"),
                systematics=[]),
            Feature("b_1_cvsl", "b_1_cvsl", binning=(4, 0, 4), 
                x_title=Label("CvsL (bJet_{1})"),
                systematics=[]),
            Feature("boosted", "boosted", binning=(2, 0, 2), 
                x_title=Label("isBoosted")),
            Feature("is_vbf", "is_vbf", binning=(2, 0, 2), 
                x_title=Label("isVBF")),
            Feature("jet_1_quality", "jet_1_quality", binning=(6, 0, 6), 
                x_title=Label("Quality (bJet_{1})")),
            Feature("jet_2_quality", "jet_2_quality", binning=(6, 0, 6), 
                x_title=Label("Quality (bJet_{2})")),
            
            # dnn_ZZbbtt_kl_1 was moved in base_config_ZZ.py
            # Feature("dnn_hhbbtt_kl_1", "dnn_hhbbtt_kl_1", binning=(10, 0, 1),
            #     x_title=Label("DNN HH")),

            # VBFjet features
            Feature("vbfjet1_pt", "Jet_pt.at(VBFjet1_JetIdx)", binning=(10, 50, 150),
                x_title=Label("VBFjet1 p_{t}"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("vbfjet1_eta", "Jet_eta.at(VBFjet1_JetIdx)", binning=(20, -5., 5.),
                x_title=Label("VBFjet1 #eta")),
            Feature("vbfjet1_phi", "Jet_phi.at(VBFjet1_JetIdx)", binning=(20, -3.2, 3.2),
                x_title=Label("VBFjet1 #phi")),
            Feature("vbfjet1_mass", "Jet_mass.at(VBFjet1_JetIdx)", binning=(10, 50, 150),
                x_title=Label("VBFjet1 m"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("vbfjet2_pt", "Jet_pt.at(VBFjet2_JetIdx)", binning=(10, 50, 150),
                x_title=Label("VBFjet2 p_t"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("vbfjet2_eta", "Jet_eta.at(VBFjet2_JetIdx)", binning=(20, -5., 5.),
                x_title=Label("VBFjet2 #eta")),
            Feature("vbfjet2_phi", "Jet_phi.at(VBFjet2_JetIdx)", binning=(20, -3.2, 3.2),
                x_title=Label("VBFjet2 #phi")),
            Feature("vbfjet2_mass", "Jet_mass.at(VBFjet2_JetIdx)", binning=(10, 50, 150),
                x_title=Label("VBFjet2 m"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

            # VBFjj
            Feature("VBFjj_mass", "VBFjj_mass", binning=(40, 0, 1000),
                x_title=Label("VBFjj mass"),
                units="GeV",
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("VBFjj_deltaEta", "VBFjj_deltaEta", binning=(40, -8, 8),
                x_title=Label("#Delta#eta(VBFjj)"),
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),
            Feature("VBFjj_deltaPhi", "VBFjj_deltaPhi", binning=(40, -6.4, 6.4),
                x_title=Label("#Delta#phi(VBFjj)"),
                central="jet_smearing",
                systematics=["jer", "jec"]), # "jec_1", "jec_2", "jec_3", "jec_4", "jec_5", "jec_6", 
                             # "jec_7", "jec_8", "jec_9", "jec_10", "jec_11"]),

            # Weights
            Feature("genWeight", "genWeight", binning=(20, 0, 2),
                x_title=Label("genWeight")),
            Feature("genWeightFixed", "genWeightFixed", binning=(20, 0, 2),
                x_title=Label("genWeightFixed")), # genWeight eventually modified to fix Madgraph LO bug
            Feature("puWeight", "puWeight", binning=(20, 0, 2),
                x_title=Label("puWeight"),
                systematics=["pu"]),
            Feature("prescaleWeight", "prescaleWeight", binning=(20, 0, 2),
                x_title=Label("prescaleWeight")),
            Feature("trigSF", "trigSF", binning=(20, 0, 2),
                x_title=Label("trigSF"),
                systematics=["trigSFele", "trigSFmu", "trigSFDM0", "trigSFDM1", "trigSFDM10", "trigSFDM11"]),
            Feature("L1PreFiringWeight", "L1PreFiringWeight", binning=(20, 0, 2),
                x_title=Label("L1PreFiringWeight"),
                central="prefiring_central",
                systematics=["prefiring"]),
            Feature("PUjetID_SF", "PUjetID_SF", binning=(20, 0, 2),
                x_title=Label("PUjetID_SF"),
                systematics=["PUjetID"]),
            Feature("idAndIsoAndFakeSF", "idAndIsoAndFakeSF", binning=(20, 0, 2),
                x_title=Label("idAndIsoAndFakeSF"),
                systematics=["jetTauFakes", "etauFR", "mutauFR", "eleIso", "muIso", "muId"]),

            Feature("LHE_Vpt", "LHE_Vpt", binning=(100, 0, 1000),
                x_title=Label("LHE PtZ"), units="GeV"),
            Feature("LHE_HT", "LHE_HT", binning=(100, 0, 1000),
                x_title=Label("LHE HT"), units="GeV"),
            Feature("LHE_HT_low", "LHE_HT", binning=(100, 0, 130),
                x_title=Label("LHE HT"), units="GeV"),
            Feature("LHE_HT_high", "LHE_HT", binning=(100, 0, 3000),
                x_title=Label("LHE HT"), units="GeV"),
        ]
        return ObjectCollection(features)
    
    def add_weights(self):
        weights = DotDict()
        weights.default = "1"

        # These weights are used for PreCounter
        weights.total_events_weights = ["genWeightFixed", "puWeight", "DYstitchEasyWeight"]

        weights.mutau = ["genWeightFixed", "puWeight", "prescaleWeight", "trigSF",
            "idAndIsoAndFakeSF", "L1PreFiringWeight", "PUjetID_SF",
            "bTagweightReshape"]
            
        weights.etau = weights.mutau
        weights.tautau = weights.mutau
        weights.base = weights.mutau

        # weights.channels_mult = {channel: jrs(weights.channels[channel], op="*")
            # for channel in weights.channels}
        return weights

    def add_systematics(self):
        systematics = [
            Systematic("tes", "_corr", decorrelate="year"), #up="_up", down='_down'),

            Systematic("jet_smearing", "_nom"),
            Systematic("jer", "_smeared", label="JES", llr_name="CMS_res_j_2018", decorrelate="year"), #up="_up", down='_down'),
            Systematic("jec_1", "_FlavorQCD", label="FlavorQCD"), #up="_up", down='_down'),
            Systematic("jec_2", "_RelativeBal", label="RelativeBal"), #up="_up", down='_down'),
            Systematic("jec_3", "_HF", label="HF"), #up="_up", down='_down'),
            Systematic("jec_4", "_BBEC1", label="BBEC1"), #up="_up", down='_down'),
            Systematic("jec_5", "_EC2", label="EC2"), #up="_up", down='_down'),
            Systematic("jec_6", "_Absolute", label="Absolute"), #up="_up", down='_down'),
            Systematic("jec_7", "_BBEC1_2018", label="BBEC1_2018"), #up="_up", down='_down'),
            Systematic("jec_8", "_EC2_2018", label="EC2_2018"), #up="_up", down='_down'),
            Systematic("jec_9", "_Absolute_2018", label="Absolute_2018"), #up="_up", down='_down'),
            Systematic("jec_10", "_HF_2018", label="HF_2018"), #up="_up", down='_down'),
            Systematic("jec_11", "_RelativeSample_2018", label="RelativeSample_2018"), #up="_up", down='_down'),
            Systematic("jec", "_Total", decorrelate="year"), #up="_up", down='_down'),

            Systematic("met_smearing", ("MET", "MET_smeared")), # includes both jer and tes
            Systematic("jer_MET", ("MET", "MET_smeared"), up="_up", down='_down'),
            Systematic("tes_MET", ("MET", "MET_smeared"), up="_corr_up", down='_corr_down'),
            Systematic("jec_MET_1", ("MET", "MET_smeared"), up="_FlavorQCD_up", down='_FlavorQCD_down'),
            Systematic("jec_MET_2", ("MET", "MET_smeared"), up="_RelativeBal_up", down='_RelativeBal_down'),
            Systematic("jec_MET_3", ("MET", "MET_smeared"), up="_HF_up", down='_HF_down'),
            Systematic("jec_MET_4", ("MET", "MET_smeared"), up="_BBEC1_up", down='_BBEC1_down'),
            Systematic("jec_MET_5", ("MET", "MET_smeared"), up="_EC2_up", down='_EC2_down'),
            Systematic("jec_MET_6", ("MET", "MET_smeared"), up="_Absolute_up", down='_Absolute_down'),
            Systematic("jec_MET_7", ("MET", "MET_smeared"), up="_BBEC1_2018_up", down='_BBEC1_2018_down'),
            Systematic("jec_MET_8", ("MET", "MET_smeared"), up="_EC2_2018_up", down='_EC2_2018_down'),
            Systematic("jec_MET_9", ("MET", "MET_smeared"), up="_Absolute_2018_up", down='_Absolute_2018_down'),
            Systematic("jec_MET_10", ("MET", "MET_smeared"), up="_HF_2018_up", down='_HF_2018_down'),
            Systematic("jec_MET_11", ("MET", "MET_smeared"), up="_RelativeSample_2018_up", down='_RelativeSample_2018_down'),
            Systematic("jec_MET", ("MET", "MET_smeared"), up="_Total_up", down='_Total_down'),

            Systematic("prefiring_central", "_Nom"),
            Systematic("prefiring", "", up="_Up", down="_Dn", decorrelate="year"),

            Systematic("jetTauFakes", "", up="_tau_vsjet_up", down="_tau_vsjet_down", decorrelate="year"),
            Systematic("etauFR", "", up="_tau_vse_up", down="_tau_vse_down", decorrelate="year"),
            Systematic("mutauFR", "", up="_tau_vsmu_up", down="_tau_vsmu_down", decorrelate="year"),
            Systematic("eleIso", "", up="_ele_iso_up", down="_ele_iso_down", decorrelate="year"),
            Systematic("muIso", "", up="_muon_iso_up", down="_muon_iso_down", decorrelate="year"),
            Systematic("muId", "", up="_muon_id_up", down="_muon_id_down", decorrelate="year"),

            Systematic("trigSFele", "", up="_eleUp", down="_eleDown", decorrelate="year"),
            Systematic("trigSFmu", "", up="_muUp", down="_muDown", decorrelate="year"),
            Systematic("trigSFDM0", "", up="_DM0Up", down="_DM0Down", decorrelate="year"),
            Systematic("trigSFDM1", "", up="_DM1Up", down="_DM1Down", decorrelate="year"),
            Systematic("trigSFDM10", "", up="_DM10Up", down="_DM10Down", decorrelate="year"),
            Systematic("trigSFDM11", "", up="_DM11Up", down="_DM11Down", decorrelate="year"),

            Systematic("PUjetID", "", up="_up", down="_down", decorrelate="year"),
            Systematic("pu", "", up="Up", down="Down", decorrelate="year"),
            Systematic("empty", "", up="", down="")
        ]
        return ObjectCollection(systematics)

    # other methods

    def get_channel_from_region(self, region):
        for sign in ["os", "ss"]:
            if region is not None and sign in region.name:
                if region.name.startswith(sign):
                    return ""
                return region.name[:region.name.index("_%s" % sign)]
        return ""

    def get_qcd_regions(self, region, category, wp="", shape_region="os_inviso",
            signal_region_wp="os_iso", sym=True):
        # the region must be set and tagged os_iso
        if not region:
            raise Exception("region must not be empty")
        # if not region.has_tag("qcd_os_iso"):
        #     raise Exception("region must be tagged as 'qcd_os_iso' but isn't")

        # the category must be compatible with the estimation technique
        # if category.has_tag("qcd_incompatible"):
        #     raise Exception("category '{}' incompatible with QCD estimation".format(category.name))

        if wp != "":
            wp = "__" + wp

        # get other qcd regions
        prefix = region.name[:-len(signal_region_wp)]
        qcd_regions = {"ss_inviso": self.regions.get(prefix + "ss_inviso" + wp)}
        # for the inverted regions, allow different working points
        default_config = ["os_inviso", "ss_iso"]
        for key in default_config:
            region_name = (prefix + key + wp if key != "ss_iso"
                else prefix + "ss_" + signal_region_wp[len("os_"):])
            qcd_regions[key] = self.regions.get(region_name)

        if sym:
            qcd_regions["shape1"] = self.regions.get(prefix + shape_region + wp)
            qcd_regions["shape2"] = self.regions.get(
                prefix + "ss_" + signal_region_wp[len("os_"):])
        else:
            if shape_region == "os_inviso":
                qcd_regions["shape"] = self.regions.get(prefix + shape_region + wp)
            else:
                qcd_regions["shape"] = self.regions.get(
                    prefix + "ss_" + signal_region_wp[len("os_"):])
        return DotDict(qcd_regions)

    def get_norm_systematics(self, processes_datasets, region):
        """
        Method to extract all normalization systematics from the KLUB files.
        It considers the processes given by the process_group_name and their parents.
        """
        # systematics
        systematics = {}
        all_signal_names = []
        all_background_names = []
        for p in self.processes:
            if p.isSignal:
                all_signal_names.append(p.get_aux("llr_name")
                    if p.get_aux("llr_name", None) else p.name)
            elif not p.isData:
                all_background_names.append(p.get_aux("llr_name")
                    if p.get_aux("llr_name", None) else p.name)

        from cmt.analysis.systReader import systReader
        syst_folder = "files/systematics_ZZ_ZH/"
        print(syst_folder + "systematics_{}.cfg".format(self.year))
        syst = systReader(Task.retrieve_file(self, syst_folder + "systematics_{}.cfg".format(
            self.year)), all_signal_names, all_background_names, None)
        syst.writeOutput(False)
        syst.verbose(False)

        channel = self.get_channel_from_region(region)
        if(channel == "mutau"):
            syst.addSystFile(Task.retrieve_file(self, syst_folder
                + "systematics_mutau_%s.cfg" % self.year))
        elif(channel == "etau"):
            syst.addSystFile(Task.retrieve_file(self, syst_folder
                + "systematics_etau_%s.cfg" % self.year))
        syst.addSystFile(Task.retrieve_file(self, syst_folder + "syst_th.cfg"))
        syst.writeSystematics()
        for isy, syst_name in enumerate(syst.SystNames):
            if "CMS_scale_t" in syst.SystNames[isy] or "CMS_scale_j" in syst.SystNames[isy]:
                continue
            for process in processes_datasets:
                original_process = process
                while True:
                    process_name = (process.get_aux("llr_name")
                        if process.get_aux("llr_name", None) else process.name)
                    if process_name in syst.SystProcesses[isy]:
                        iproc = syst.SystProcesses[isy].index(process_name)
                        systVal = syst.SystValues[isy][iproc]
                        if syst_name not in systematics:
                            systematics[syst_name] = {}
                        systematics[syst_name][original_process.name] = eval(systVal)
                        break
                    elif process.parent_process:
                        process=self.processes.get(process.parent_process)
                    else:
                        break
        return systematics