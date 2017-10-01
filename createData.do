version 14

//net install wbopendata, from(http://fmwww.bc.edu/RePEc/bocode/w)

wbopendata

//TODO: need to add more 
wbopendata, indicator(NY.GDP.PCAP.KD; EG.USE.PCAP.KG.OE; SL.UEM.TOTL.ZS; EN.ATM.CO2E.PC; SP.DYN.LE00.FE.IN; IS.ROD.SGAS.PC;SP.URB.TOTL.IN.ZS)year(1980:2015)long clear

ren  ny_gdp_pcap_kd gdp
la var gdp "PCGDP"
note gdp: GDP per capita (constant 2005 US$); Code: NY.GDP.PCAP.KD; "GDP per capita is gross domestic product divided by midyear population. GDP is the sum of gross value added by all resident producers in the economy plus any product taxes and minus any subsidies not included in the value of the products. It is calculated without making deductions for depreciation of fabricated assets or for depletion and degradation of natural resources. Data are in constant 2005 U.S. dollars."; WB

ren is_rod_sgas_pc gas
la var gas "road sector gasoline fuel consumption, pc"
note gas: Road sector gasoline fuel consumption per capita (kg of oil equivalent); Code: IS.ROD.SGAS.PC; "Gasoline is light hydrocarbon oil use in internal combustion engine such as motor vehicles, excluding aircraft."; WB

ren eg_use_pcap_kg_oe ene 
la var ene "energy use, pc"
note ene:  Energy use (kg of oil equivalent per capita); Code: EG.USE.PCAP.KG.OE "Energy use refers to use of primary energy before transformation to other end-use fuels, which is equal to indigenous production plus imports and stock changes, minus exports and fuels supplied to ships and aircraft engaged in international transport."; WB
 
ren sl_uem_totl_zs un
la var un "unemployment, %"
note un: Unemployment, total (% of total labor force) (modeled ILO estimate); Code: SL.UEM.TOTL.ZS; "Unemployment refers to the share of the labor force that is without work but available for and seeking employment."; WB

ren en_atm_co2e_pc co2
la var co2 "co2 emissions, pc"
note co2: CO2 emissions (metric tons per capita); Code: EN.ATM.CO2E.PC; "Carbon dioxide emissions are those stemming from the burning of fossil fuels and the manufacture of cement. They include carbon dioxide produced during consumption of solid, liquid, and gas fuels and gas flaring."; WB
 
ren sp_dyn_le00_fe_in lexp
la var lexp "female life expectancy"
note lexp: Life expectancy at birth, female (years); Code: SP.DYN.LE00.FE.IN; "Life expectancy at birth indicates the number of years a newborn infant would live if prevailing patterns of mortality at the time of its birth were to stay the same throughout its life."
 
ren sp_urb_totl_in_zs urb
la var urb "percent urban"
note urb:  population (% of total); Code: SP.URB.TOTL.IN.ZS; "Urban population refers to people living in urban areas as defined by national statistical offices. It is calculated using World Bank population estimates and urban ratios from the United Nations World Urbanization Prospects."

d
