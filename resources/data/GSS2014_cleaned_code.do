clear 

use "GSS2014.dta"

outsheet using "GSS2014.csv", comma nolabel replace

order id age sex race educ dipged paeduc maeduc speduc sei10 conrinc coninc degree padeg madeg spdeg citizen born year cohort spsei10 pasei10 masei10 childs

drop spbarate barate masei10inc sei10inc pasei10inc spsei10inc masei10educ sei10educ pasei10educ spsei10educ eth1 eth2 eth3 res2012 old11 old12 old13 old14 old10 old1 old2 old3 old4 old5 old6 old7 old8 old9 intage ballot where11 where12 where13 where14 where10 where1 where2 where3 where4 where5 where6 where7 where8 where9 racecen1 racecen2 racecen3 spjew jew jew16 formwt wtss wtssnr wtssall res2010 version vstrat vpsu ethnum speftotlt eftotlt sampcode sample indus10 prestg10 prestg105plus occ10 isco88 relate10 relate1 relate2 relate3 relate4 relate5 relate6 relate7 relate8 relate9 relhh1 relsp1 relhh10 relsp10 relhh11 relsp11 relhh12 relsp12 relhh13 relsp13 relhh14 relsp14 relhh2 relsp2 relhh3 relsp3 relhh4 relsp4 relhh5 relsp5 relhh6 relsp6 relhh7 relsp7 relhh8 relsp8 relhh9 relsp9 region relate11 relhhd11 relate12 relhhd12 relate13 relhhd13 relate14 relhhd14 relhhd10 relhhd1 relhhd2 relhhd3 relhhd4 relhhd5 relhhd6 relhhd7 relhhd8 relhhd9 famdif16 paisco88 maisco88 rplace spisco88 hhrace intethn barate spbarate phyeffrt gradtounder spgradtounder famdif16 region intid intrace1 intrace2 intrace3 spaneng away10 away11 away12 away13 away14 away1 away2 away3 away4 away5 away6 away7 away8 away9 inthisp rvisitor gender10 gender11 gender12 gender13 gender14 gender1 gender2 gender3 gender4 gender5 gender6 gender7 gender8 gender9 mar10 mar11 mar12 mar13 mar14 mar1 mar2 mar3 mar4 mar5 mar6 mar7 mar8 mar9 sppres10 papres10 mapres10 sppres105plus papres105plus mapres105plus agekdbrn compwage consent coop cshutyp10 cshutyp12 dateintv deptperf dwelling intsex intyrs issp lngthinv odds1 odds2 spanint spanself srcbelt worda wordb wordc wordd worde wordf wordg wordh wordi wordj wordsum zodiac

outsheet using "GSS2014_cleaned.csv", comma nolabel replace
export excel * using "labels.xlsx", firstrow(varlabels) replace

