# Finding cross-sections :
# - XSDB
# - https://twiki.cern.ch/twiki/bin/viewauth/CMS/StandardModelCrossSectionsat13TeV
# - https://twiki.cern.ch/twiki/bin/view/LHCPhysics/TtbarNNLO
# - https://twiki.cern.ch/twiki/bin/view/LHCPhysics/SingleTopRefXsec
# - https://twiki.cern.ch/twiki/bin/view/LHCPhysics/SingleTopNNLORef

cross_section_dict = {

    # "zz_sl":          3.22,                     # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIIWinter15GS%2D00166-,3.22,-NLO%2C%20up%20to
    # "zz_sl":          3.676,                    # XSDB unknown (ZZTo2Q2L_mllmin4p0_TuneCP5_13TeV-amcatnloFXFX-pythia8), probaly should use this one ?
    # "zz_sl":          5.52,                     # AN
    "zz_sl":            2.3331506672,

    # ZHToTauTau_M125_CP5_13TeV-powheg-pythia8
    # XSDB : 0.7891 but H->tautau decay done with Pythia so need to *BR(H->tautau)=0.06 -> 0.047346
    "zh_htt":           0.053034, # = 0.8839*0.06 (sigma(pp->ZH) from theory) * BR(H->tautau) #0.7891 (XSDB NLO)
    # "zh_htt":         0.0554,                   # AN

    # ZH_HToBB_ZToLL_M-125_TuneCP5_13TeV-powheg-pythia8
    # XSDB 0.07977	but H->bb decay done with Pythia so *BR(H->bb)=0.53  -> 0.0423
    "zh_hbb_zll":       0.0472, # = 0.8839*(0.0335962*3)*0.53 (sigma(pp->ZH) from theory) * BR(Z->ll)*BR(H->bb)  
    # "zh_hbb_zll":     0.052,                    # AN

    "wjets_FXFX":       61526.7,                  # theory (XSDB 67350.0 or 66680.0)
    "wjets_FXFX_0j":    52780.0/64888.0*61526.7,  # CMSDAS
    "wjets_FXFX_1j":    8832.0/64888.0*61526.7,   # CMSDAS
    "wjets_FXFX_2j":    3276.0/64888.0*61526.7,   # CMSDAS

    "wjets_MLM":        61526.7,                  # NNLO Inclusive W prod * BR(W->muon+neutrino) = 20508.9 : x3 (electron, muon, tau) to get WToLNu https://twiki.cern.ch/twiki/bin/viewauth/CMS/StandardModelCrossSectionsat13TeV#:~:text=l%CE%BD%2C%20l%3D%CE%BC-,20508.9,-%2B165.7%20%2D88.2%20(%C2%B1%20770.9
    "wjets_MLM_1j":     9024.0,                   # CMSDAS
    "wjets_MLM_2j":     2832.0,                   # CMSDAS
    "wjets_MLM_3j":     820.7,                    # CMSDAS
    "wjets_MLM_4j":     385.5,                    # CMSDAS
    "wjets_ht2":        1244.0 * 61526.7 / 53870, # LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14
    "wjets_ht3":        337.8 * 61526.7 / 53870,  # LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14
    "wjets_ht4":        44.93 * 61526.7 / 53870,  # LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14
    "wjets_ht5":        11.19 * 61526.7 / 53870,  # LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14
    "wjets_ht6":        4.926 * 61526.7 / 53870,  # LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14
    "wjets_ht7":        1.152 * 61526.7 / 53870,  # LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14
    "wjets_ht8":        0.02646 * 61526.7 / 53870,# LO * NNLO(incl)/LO(incl) : NNLO inclusive xs=61526.7 , LO inclusive xs=53870 (XSDB) , kfactor LO->NNLO = 61526.7 / 53870 = 1.14

    "dy":               6424.0,                   # XSDB : TODO use value from https://twiki.cern.ch/twiki/bin/viewauth/CMS/StandardModelCrossSectionsat13TeV maybe ?
    "dy_ptz1":          1485.0,                   # XSDB
    "dy_ptz2":          397.4,                    # XSDB
    "dy_ptz3":          97.2,                     # XSDB
    "dy_ptz4":          3.701,                    # XSDB
    "dy_ptz5":          0.5086,                   # XSDB
    "dy_ptz6":          0.040981055,              # XSDB
    "dy_0j":            5090.0,                   # XSDB
    "dy_1j":            983.5,                    # XSDB
    "dy_2j":            353.6,                    # XSDB

    "ewk_z":            6.215,                    # XSDB LO
    "ewk_wplus":        39.05,                    # XSDB LO
    "ewk_wminus":       32.05,                    # XSDB LO

    # XSDB from genxsec shows way higher xs but then there is weird Pythia filter to remove ttZ/gamma overlap
    "tt_dl":            88.29,                    # XSDB NNLO (from theory) +4.8%-6.1%
    "tt_sl":            365.34,                   # XSDB NNLO (from theory) +4.8%-6.1%
    "tt_fh":            377.96,                   # XSDB NNLO (from theory) +4.8%-6.1%	

    "st_tw_antitop":    35.85,                    # 0.5 * https://twiki.cern.ch/twiki/bin/view/LHCPhysics/SingleTopRefXsec#:~:text=a2-,71.7,-%2B1.326 (XSDB 34.97 or 32.51)
    "st_tw_top":        35.85,                    # 0.5 * https://twiki.cern.ch/twiki/bin/view/LHCPhysics/SingleTopRefXsec#:~:text=a2-,71.7,-%2B1.326 (XSDB 34.91 or 32.45	)
    "st_antitop":       80.0,                     # NNLO theory https://twiki.cern.ch/twiki/bin/view/LHCPhysics/SingleTopNNLORef#Single_top_quark_t_channel_cross (XSDB 69.09 or 67.93 Powheg NLO : TODO why is there significant difference ?)
    "st_top":           134.2,                    # NNLO theory https://twiki.cern.ch/twiki/bin/view/LHCPhysics/SingleTopRefXsec#:~:text=top-,136.02,-%2B4.09%20%2D2.92 (XSDB 115.3 or 113.4)

    "zz_dl":            1.2564,                   # 9 * 4 * https://twiki.cern.ch/twiki/bin/viewauth/CMS/StandardModelCrossSectionsat13TeV#:~:text=%CE%BC%CE%BC%20Z%20%E2%86%92%20ee-,0.0349,-%C2%B1%200.0011%20(%C2%B1%200.0016) 
    # "zz_dl":          1.26,                     # AN 
    # "zz_dl":          1.325,                    # XSDB NLO
    # "zz_dl":          1.212,                    # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#W_jets:~:text=SMP%2DRunIISpring15DR74%2D00026-,1.212,-NLO%2C%20up%20to
    # "zz_dl":          1.204,                    # https://xsdb-temp.app.cern.ch/?searchQuery=DAS=ZZTo4L_13TeV-amcatnloFXFX-pythia8

    "zz_fh":            3.262,                    # XSDB unknown (NLO probably)

    "zz_lnu":           0.564,                    # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=XXX-,0.564,-NLO
    # "zz_lnu":         0.6008,                   # XSDB

    "zz_qnu":           4.04,                     # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIIWinter15wmLHE%2D00099-,4.04,-NLO%2C%20up%20to
    # "zz_qnu":         4.07,                     # AN
    # "zz_qnu":         4.033,                    # XSDB unknown

    "wz_lllnu":         5.26,                     # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SMP%2DRunIISpring15DR74%2D00024-,5.26,-NLO%2C%20up%20to
    # "wz_lllnu":       4.43,                     # AN
    # "wz_lllnu":       5.052,                    # XSDB unknown

    "wz_lnuqq":         10.71,                    # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIISpring15DR74%2D00155-,10.71,-NLO%2C%20up%20to
    # "wz_lnuqq":       9.119,                    # XSDB unknown

    "wz_lnununu":       3.033,                    # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIISpring15MiniAODv2%2D00044-,3.033e,-%2B00%20%2B%2D%202.060e%2D02
    # "wz_lnununu":     3.414,                    # XSDB unknown

    "wz_llqq":          5.595,                    # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIIWinter15wmLHE%2D00095-,5.595,-NLO%2C%20up%20to
    # "wz_llqq":        6.565,                    # XSDB unknown

    "ww_llnunu":        12.178,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIISpring15DR74%2D00113-,12.178,-NNLO
    # "ww_llnunu":      10.48,                    # XSDB NLO

    "ww_lnuqq":         49.997,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIISpring15DR74%2D00169-,49.997,-NNLO
    # "ww_lnuqq":       51.65,                    # XSDB unknown

    "ww_qqqq":          51.723,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=HIG%2DRunIISpring15DR74%2D00114-,51.723,-NNLO
    # "ww_qqqq":        51.03,                    # XSDB unknown

    "zzz":              0.01398,                  # XSDB unknown and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIIWinter15wmLHE%2D00058-,0.01398,-pb
    # "zzz":            0.0147,                   # AN

    "wzz":              0.05565,                  # XSDB unknown and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=NLO-,WZZ,-/WZZ_TuneCUETP8M1_13TeV%2Damcatnlo%2Dpythia8
    # "wzz":            0.057,                    # AN

    "www":              0.2086,                   # XSDB unknown and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIISummer15GS%2D00151-,0.2086,-pb
    # "www":            0.209,                    # AN

    "wwz":              0.1651,                   # XSDB unknown and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIIWinter15wmLHE%2D00059-,0.1651,-pb
    # "wwz":            0.168,                    # AN

    "ttw_lnu":          0.2043,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIISpring15DR74%2D00048-,0.2043,-%C2%B1%200.0020
    # "ttw_lnu":        0.2149,                   # XSDB unknown

    "ttw_qq":           0.4062,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIISpring15DR74%2D00068-,0.4062,-%C2%B1%200.0021
    # "ttw_qq":         0.4316,                   # XSDB unknown
    
    "ttww":             0.006979,                 # XSDB LO
    # "ttww":           0.00698,                  # AN

    "ttwz":             0.002441,                 # AN and XSDB LO

    "ttwh":             0.001141,                 # XSDB LO
    # "ttwh":           0.00158,                  # AN

    "ttzh":             0.00113,                  # XSDB LO
    # "ttzh":           0.00154,                  # AN

    "ttz_llnunu":       0.2529,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=27%25%20neg%20weights)-,TTZ(llnunu),-/TTZToLLNuNu_M%2D10_TuneCUETP8M1_13TeV%2Damcatnlo
    # "ttz_llnunu":     0.2432,                   # XSDB unknown

    "ttz_qq":           0.5297,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=SUS%2DRunIISpring15DR74%2D00037-,0.5297,-%C2%B1%200.0008
    "ttz_qq":           0.5104,                   # XSDB unknown
    
    "ttzz":             0.001386,                 # AN and XSDB LO

    # "zh_hbb_zqq":     0.5612,                   # XSDB NLO
    # # "zh_hbb_zqq":   0.36,                     # AN

    "wminush_htt":      0.5412,                   # XSDB NLO
    # "wminush_htt":    0.0334,                   # AN

    "wplush_htt":       0.867,                    # XSDB NLO
    # "wplush_htt":     0.05268,                  # AN

    # "vbf_htt":        3.748,                    # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#Diboson:~:text=1478412-,3.748,-x%200.0632
    # # "vbf_htt":      3.861,                    # XSDB NLO
    # # "vbf_htt":      0.237,                    # AN

    "tth_bb":           0.2953,                   # AN and https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#ttH:~:text=pb%20*%205.77E%2D01%20%3D-,0.2934,-pb
    # "tth_bb":         0.5269,                   # XSDB NLO

    "tth_tautau":       0.0321,                   # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#ttH:~:text=pb%20*%206.32E%2D02%20%3D-,0.0321,-pb
    # "tth_tautau":     0.5269,                   # XSDB NLO
    # "tth_tautau":     0.031805,                 # AN

    # "tth_nonbb":      0.2151,                   # https://twiki.cern.ch/twiki/bin/view/CMS/SummaryTable1G25ns#ttH:~:text=1%20%2D%205.77E%2D01)%20%3D-,0.2151,-pb
    # # "tth_nonbb":    0.5638,                   # XSDB NLO
    # # "tth_nonbb":    0.17996,                  # AN

    "ggH_ZZ":           28.87,                    # XSDB NLO

    "ggf_sm":           0.01313,                  # XSDB LO
    # "ggf_sm":         0.002268,                 # KLUB

    # "vbf_sm":         0.001726,

    # Cross-sections for resonant ZH signal. Assuming cross-section of Z'->ZH is one.
    # removed * 0.876 (* BR(tautau->mutau,etau,tautau)) as I think that should not be there (taken into account by norm using aux dataset ???)
    "ZprimeToZH_ZToBB_HToTauTau" : 1 * 0.009, # sigma(Z'->ZH) * BR(Z->bb, H->tautau) 
    "ZprimeToZH_ZToTauTau_HToBB" : 1 * 0.019, # sigma(Z'->ZH) * BR(Z->tautau, H->bb) 
    # for info : BR(Z'->ZH) ~ 0.47 in HVT model B (actually Z' mass-dependent) extracted from plot in B2G-23-008

    # ggX->ZZ cross sections (from AN19/131)
    # Radion (lambda 3TeV, krpi 35) mass=1TeV sigma(pp->R)xBR(ZZ) = 0.12 pb + (from B2G) sigma(pp->R)=0.256pb -> BR(R->ZZ)=0.47
    # mass = 3TeV -> 0.00064
}
