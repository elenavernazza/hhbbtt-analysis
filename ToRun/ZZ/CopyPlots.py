import sys,os

def GetYear(year):
    if '2016_HIPM' in year: return '2016_HIPM'
    elif '2016' in year: return '2016'
    elif '2017' in year: return '2017'
    elif '2018' in year: return '2018'
    else: sys.exit(f'Year {year} not valid')

def GetCat(cat):
    if 'resolved_1b' in cat: return 'res1b'
    elif 'resolved_2b' in cat: return 'res2b'
    elif 'boosted' in cat: return 'boosted'

def GetProc(proc):
    if proc == 'ZZ': return 'ZZbbtt'
    else: return proc

'''
python3 CopyPlots.py --proc ZZ --var dnn_ZZbbtt_kl_500 --prod prod_240808
python3 CopyPlots.py --proc ZbbHtt --var dnn_ZHbbtt_kl_500 --prod prod_240822
python3 CopyPlots.py --proc ZttHbb --var dnn_ZHbbtt_kl_500 --prod prod_240822

python3 CopyPlots.py --proc ZZ --var dnn_ZZbbtt_kl_500_250 --prod prod_240808 --res
python3 CopyPlots.py --proc ZZ --var dnn_ZZbbtt_kl_500_600 --prod prod_240808 --res
python3 CopyPlots.py --proc ZZ --var dnn_ZZbbtt_kl_500_2000 --prod prod_240808 --res

python3 CopyPlots.py --proc ZbbHtt --var dnn_ZHbbtt_kl_500_600 --prod prod_240822 --res
python3 CopyPlots.py --proc ZbbHtt --var dnn_ZHbbtt_kl_500_1000 --prod prod_240822 --res
python3 CopyPlots.py --proc ZbbHtt --var dnn_ZHbbtt_kl_500_2000 --prod prod_240822 --res

python3 CopyPlots.py --proc ZttHbb --var dnn_ZHbbtt_kl_500_600 --prod prod_240822 --res
python3 CopyPlots.py --proc ZttHbb --var dnn_ZHbbtt_kl_500_1000 --prod prod_240822 --res
python3 CopyPlots.py --proc ZttHbb --var dnn_ZHbbtt_kl_500_2000 --prod prod_240822 --res
'''

if __name__ == "__main__" :

    from optparse import OptionParser
    parser = OptionParser()
    parser.add_option("--proc",         dest="proc",         default='ZZ',                  choices=["ZZ", "ZbbHtt", "ZttHbb"]                )
    parser.add_option("--var",          dest="var",          default='dnn_ZZbbtt_kl_500',                                                     )
    parser.add_option("--prod",         dest="prod",         default='prod_240808',                                                           )
    parser.add_option("--res",          dest="res",          default=False,                 action='store_true'                               )
    (options, args) = parser.parse_args()

    proc = options.proc
    prod = options.prod
    var = options.var
    VAR = 'dnn'
    if options.res:
        mass = options.var.split('_')[-1]
        VAR = f'dnn_{mass}'

    if proc == 'ZZ':  
        prefix = 'elliptical_cut_90'
        pg = 'pg_zz'
        if options.res: pg = 'pg_zz_res'
    else:             
        prefix = 'orthogonal_cut_90'
        pg = 'pg_plot'
        if options.res: pg = 'pg_plot_res'

    maindir = '/data_CMS/cms/vernazza/cmt/FeaturePlot'
    years = [f'ul_2016_HIPM_{proc}_v12', f'ul_2016_{proc}_v12', f'ul_2017_{proc}_v12', f'ul_2018_{proc}_v12']
    categories = [f'cat_{proc}_{prefix}_resolved_1b', f'cat_{proc}_{prefix}_resolved_2b', f'cat_{proc}_{prefix}_boosted_noPNet']
    channels = ['etau', 'mutau', 'tautau']

    dn = os.path.dirname(os.path.realpath(__file__))
    outdir = f'{dn}/TMP_PLOTS'
    os.system(f'mkdir -p {outdir}')

    '/data_CMS/cms/vernazza/cmt/FeaturePlot/ul_2018_ZZ_v12/cat_ZZ_elliptical_cut_90_resolved_1b/prod_240808/dnn_ZZbbtt_kl_500_200__etau_os_iso__pg_zz_res__qcd__nodata__stack__logY__equalBinWidth.pdf'

    for year in years:
        for cat in categories:
            for ch in channels: 
                pdf = f'{maindir}/{year}/{cat}/{prod}/{var}__{ch}_os_iso__{pg}__qcd__nodata__stack__logY__equalBinWidth.pdf'
                # print(pdf)
                if not os.path.isfile(pdf):
                    print(" ### MISSING:", pdf)
                else:
                    PROC = GetProc(proc)
                    YEAR = GetYear(year)
                    CAT = GetCat(cat)
                    CH = ch
                    outname = f'{VAR}_{PROC}_{CH}_{CAT}_{YEAR}.pdf'
                    os.system(f'cp {pdf} {outdir}/{outname}')
