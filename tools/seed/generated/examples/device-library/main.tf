

resource "netbox_manufacturer" "_3_com" {
  name = "3Com"
  slug = "3-com"
}

resource "netbox_device_type" "_3_com_4200_g_12_port" {
  model             = "4200G 12 port"
  slug              = "3com-4200g-12-port"
  part_number       = "3CR17660-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_device_type" "_3_com_4200_g_24_port" {
  model             = "4200G 24 port"
  slug              = "3com-4200g-24-port"
  part_number       = "3CR17661-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_device_type" "_3_com_4200_g_48_port" {
  model             = "4200G 48 port"
  slug              = "3com-4200g-48-port"
  part_number       = "3CR17662-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_device_type" "_3_com_4200_g_pwr_24_port" {
  model             = "4200G PWR 24 port"
  slug              = "3com-4200g-pwr-24-port"
  part_number       = "3CR17671-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_device_type" "_3_com_4210_g_24_port" {
  model             = "4210G 24 port"
  slug              = "3com-4210g-24-port"
  part_number       = "3CRS42G-24-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_device_type" "_3_com_4210_g_48_port" {
  model             = "4210G 48 port"
  slug              = "3com-4210g-48-port"
  part_number       = "3CRS42G-48-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_device_type" "_3_com_4210_g_pwr_24_port" {
  model             = "4210G PWR 24 port"
  slug              = "3com-4210g-pwr-24-port"
  part_number       = "3CRS42G-24P-91"
  manufacturer_id   = netbox_manufacturer._3_com.id
}

resource "netbox_manufacturer" "a_10" {
  name = "A10"
  slug = "a-10"
}

resource "netbox_device_type" "a_10_thunder_4440_adc" {
  model             = "Thunder 4440 ADC"
  slug              = "a10-thunder-4440-adc"
  part_number       = "TH4440"
  manufacturer_id   = netbox_manufacturer.a_10.id
}

resource "netbox_device_type" "a_10_thunder_6430" {
  model             = "Thunder 6430"
  slug              = "a10-thunder-6430"
  part_number       = "TH6430"
  manufacturer_id   = netbox_manufacturer.a_10.id
}

resource "netbox_manufacturer" "adva" {
  name = "ADVA"
  slug = "adva"
}

resource "netbox_device_type" "adva_fsp_150_cm" {
  model             = "FSP-150-CM"
  slug              = "adva-fsp-150-cm"
  part_number       = "1044004001"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_device_type" "adva_fsp_150_xg_120_pro_sh" {
  model             = "FSP 150-XG120Pro SH"
  slug              = "adva-fsp-150-xg120pro-sh"
  part_number       = "1078904481-01"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_device_type" "adva_fsp_150_xg_418_100_g_cfp_2" {
  model             = "FSP 150-XG418-100G-CFP2"
  slug              = "adva-fsp-150-xg418-100g-cfp2"
  part_number       = "1078901052-01"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_device_type" "adva_fsp_150_xg_418_100_g" {
  model             = "FSP 150-XG418-100G"
  slug              = "adva-fsp-150-xg418-100g"
  part_number       = "1078901053-01"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_device_type" "adva_xg_480_100_g_cfp_2" {
  model             = "XG480-100G-CFP2"
  slug              = "adva-xg480-100g-cfp2"
  part_number       = "1078901003-01"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_device_type" "adva_xg_480_100_g" {
  model             = "XG480-100G"
  slug              = "adva-xg480-100g"
  part_number       = "1078901001-01"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_device_type" "adva_fsp_150_xg_480_25_g_100_g" {
  model             = "FSP 150-XG480-25G-100G"
  slug              = "adva-fsp-150-xg480-25g-100g"
  part_number       = "1078901002-01"
  manufacturer_id   = netbox_manufacturer.adva.id
}

resource "netbox_manufacturer" "apc" {
  name = "APC"
  slug = "apc"
}

resource "netbox_device_type" "apc_ap_4431" {
  model             = "AP4431"
  slug              = "apc-ap4431"
  part_number       = "AP4431"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7721" {
  model             = "AP7721"
  slug              = "apc-ap7721"
  part_number       = "AP7721"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7723" {
  model             = "AP7723"
  slug              = "apc-ap7723"
  part_number       = "AP7723"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7821" {
  model             = "AP7821"
  slug              = "apc-ap7821"
  part_number       = "AP7821"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7830" {
  model             = "AP7830"
  slug              = "apc-ap7830"
  part_number       = "AP7830"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7854" {
  model             = "AP7854"
  slug              = "apc-ap7854"
  part_number       = "AP7854"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7901_b" {
  model             = "AP7901B"
  slug              = "apc-ap7901b"
  part_number       = "AP7901B"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7920" {
  model             = "AP7920"
  slug              = "apc-ap7920"
  part_number       = "AP7920"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7921_b" {
  model             = "AP7921B"
  slug              = "apc-ap7921b"
  part_number       = "AP7921B"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7922_b" {
  model             = "AP7922B"
  slug              = "apc-ap7922b"
  part_number       = "AP7922B"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_7941" {
  model             = "AP7941"
  slug              = "apc-ap7941"
  part_number       = "AP7941"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8641" {
  model             = "AP8641"
  slug              = "apc-ap8641"
  part_number       = "AP8641"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8853" {
  model             = "AP8853"
  slug              = "apc-ap8853"
  part_number       = "AP8853"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8865" {
  model             = "AP8865"
  slug              = "apc-ap8865"
  part_number       = "AP8865"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8868" {
  model             = "AP8868"
  slug              = "apc-ap8868"
  part_number       = "AP8868"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8886" {
  model             = "AP8886"
  slug              = "apc-ap8886"
  part_number       = "AP8886"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8932" {
  model             = "AP8932"
  slug              = "apc-ap8932"
  part_number       = "AP8932"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8941" {
  model             = "AP8941"
  slug              = "apc-ap8941"
  part_number       = "AP8941"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8953" {
  model             = "AP8953"
  slug              = "apc-ap8953"
  part_number       = "AP8953"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8958" {
  model             = "AP8958"
  slug              = "apc-ap8958"
  part_number       = "AP8958"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8959" {
  model             = "AP8959"
  slug              = "apc-ap8959"
  part_number       = "AP8959"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8959_eu_3" {
  model             = "AP8959EU3"
  slug              = "apc-ap8959eu3"
  part_number       = "AP8959EU3"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_8965" {
  model             = "AP8965"
  slug              = "apc-ap8965"
  part_number       = "AP8965"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ap_9319" {
  model             = "AP9319"
  slug              = "apc-ap9319"
  part_number       = "AP9319"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_apdu_9941" {
  model             = "APDU9941"
  slug              = "apc-apdu9941"
  part_number       = "APDU9941"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_aptf_10_kt_01" {
  model             = "APTF10KT01"
  slug              = "apc-aptf10kt01"
  part_number       = "APTF10KT01"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ar_8425_a" {
  model             = "AR8425A"
  slug              = "apc-ar8425a"
  part_number       = "AR8425A"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ats_ap_4421" {
  model             = "ATS AP4421"
  slug              = "apc-ats-ap4421"
  part_number       = "ATS-AP4421"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_ats_ap_7723" {
  model             = "ATS AP7723"
  slug              = "apc-ats-ap7723"
  part_number       = "ATS-AP7723"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_bn_450_m" {
  model             = "BN450M"
  slug              = "apc-bn450m"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_br_1500_gi" {
  model             = "BR1500GI"
  slug              = "apc-br1500gi"
  part_number       = "BR1500GI"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smc_1500_i" {
  model             = "SMC1500I"
  slug              = "apc-smc1500i"
  part_number       = "SMC1500I"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_1000" {
  model             = "SMT1000"
  slug              = "apc-smt1000"
  part_number       = "SMT1000"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_1000_i" {
  model             = "SMT1000I"
  slug              = "apc-smt1000i"
  part_number       = "SMT1000I"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_1500" {
  model             = "Smart-UPS SMT1500"
  slug              = "apc-smt1500"
  part_number       = "SMT1500"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_1500_rm_2_u" {
  model             = "Smart-UPS SMT1500RM2U"
  slug              = "apc-smt1500rm2u"
  part_number       = "SMT1500RM2U"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_1500_va_rack_mount_lcd_120_v_with_smartconnect_port" {
  model             = "Smart-UPS 1500VA, Rack Mount, LCD 120V with SmartConnect Port"
  slug              = "apc-smart-ups-1500va-rack-mount-lcd-120v-with-smartconnect-port"
  part_number       = "SMT1500RM2UC"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_1500_rmi_2_u" {
  model             = "SMT1500RMI2U"
  slug              = "apc-smt1500rmi2u"
  part_number       = "SMT1500RMI2U"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_2200_i" {
  model             = "SMT2200I"
  slug              = "apc-smt2200i"
  part_number       = "SMT2200I"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_2200_rmi_2_unc" {
  model             = "SMT2200RMI2UNC"
  slug              = "apc-smt2200rmi2unc"
  part_number       = "SMT2200RMI2UNC"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_3000_rmi_2_uc" {
  model             = "SMT3000RMI2UC"
  slug              = "apc-smt3000rmi2uc"
  part_number       = "SMT3000RMI2UC"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_750_i" {
  model             = "SMT750I"
  slug              = "apc-smt750i"
  part_number       = "SMT750I"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smt_750_ic" {
  model             = "SMT750IC"
  slug              = "apc-smt750ic"
  part_number       = "SMT750IC"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_x_1000_va_rack_mount_lcd_230_v" {
  model             = "Smart-UPS X 1000VA, Rack Mount, LCD 230V"
  slug              = "apc-smart-ups-x-1000va-rack-mount-lcd-230v"
  part_number       = "SMX1000I"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smx_120_bp" {
  model             = "SMX120BP"
  slug              = "apc-smx120bp"
  part_number       = "SMX120BP"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smx_2200_hv" {
  model             = "SMX2200HV"
  slug              = "apc-smx2200hv"
  part_number       = "SMX2200HV"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smx_3000_hv" {
  model             = "SMX3000HV"
  slug              = "apc-smx3000hv"
  part_number       = "SMX3000HV"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_2200_va_rm" {
  model             = "Smart-UPS SRT 2200VA RM"
  slug              = "apc-smart-ups-srt-2200va-rm"
  part_number       = "SRT2200RMXLI"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_srt_3000_rmxlt" {
  model             = "Smart-UPS SRT3000RMXLT"
  slug              = "apc-srt3000rmxlt"
  part_number       = "SRT3000RMXLT"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_5000_va_rm_230_v" {
  model             = "Smart-UPS SRT 5000VA RM 230V"
  slug              = "apc-smart-ups-srt-5000va-rm-230v"
  part_number       = "SRT5KRMXLI"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_5000_va_rm_208_v_iec" {
  model             = "Smart-UPS SRT 5000VA RM 208V IEC"
  slug              = "apc-smart-ups-srt-5000va-rm-208v-iec"
  part_number       = "SRT5KRMXLT-IEC"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_srt_5_krmxlt" {
  model             = "Smart-UPS SRT5KRMXLT"
  slug              = "apc-srt5krmxlt"
  part_number       = "SRT5KRMXLT"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_5000_va_rm_208_230_v_hw" {
  model             = "Smart-UPS SRT 5000VA RM 208/230V HW"
  slug              = "apc-smart-ups-srt-5000va-rm-208-230v-hw"
  part_number       = "SRT5KRMXLW-HW"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_5000_va_200_v" {
  model             = "Smart-UPS SRT 5000VA 200V"
  slug              = "apc-smart-ups-srt-5000va-200v"
  part_number       = "SRT5KXLJ"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_6000_va_rm_230_v" {
  model             = "Smart-UPS SRT 6000VA RM 230V"
  slug              = "apc-smart-ups-srt-6000va-rm-230v"
  part_number       = "SRT6KRMXLI"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_srt_8000_va_rm_208_v" {
  model             = "Smart-UPS SRT 8000VA RM 208V"
  slug              = "apc-smart-ups-srt-8000va-rm-208v"
  part_number       = "SRT8KRMXLT"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_sua_1500_rmi_2_u" {
  model             = "SUA1500RMI2U"
  slug              = "apc-sua1500rmi2u"
  part_number       = "SUA1500RMI2U"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_surt_192_rmxlbp_2" {
  model             = "SURT192RMXLBP2"
  slug              = "apc-surt192rmxlbp2"
  part_number       = "SURT192RMXLBP2"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_smart_ups_rt_2000_va_rm" {
  model             = "Smart-UPS RT 2000VA RM"
  slug              = "apc-smart-ups-rt-2000va-rm"
  part_number       = "SURT2000RMXLI"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_surt_20_krmxlt" {
  model             = "SURT20KRMXLT"
  slug              = "apc-surt20krmxlt"
  part_number       = "SURT20KRMXLT"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_device_type" "apc_epdu_1016_b" {
  model             = "EPDU1016b"
  slug              = "apc-epdu1016b"
  part_number       = "EPDU1016b"
  manufacturer_id   = netbox_manufacturer.apc.id
}

resource "netbox_manufacturer" "avm" {
  name = "AVM"
  slug = "avm"
}

resource "netbox_device_type" "avm_fritzbox_7530" {
  model             = "FRITZ!Box 7530"
  slug              = "avm-fritzbox-7530"
  part_number       = "20002839"
  manufacturer_id   = netbox_manufacturer.avm.id
}

resource "netbox_device_type" "avm_fritzbox_7590" {
  model             = "FRITZ!Box 7590"
  slug              = "avm-fritzbox-7590"
  part_number       = "20002784"
  manufacturer_id   = netbox_manufacturer.avm.id
}

resource "netbox_manufacturer" "action_tec" {
  name = "ActionTec"
  slug = "action-tec"
}

resource "netbox_device_type" "actiontec_c_1000_a" {
  model             = "C1000A"
  slug              = "actiontec-c1000a"
  manufacturer_id   = netbox_manufacturer.action_tec.id
}

resource "netbox_device_type" "actiontec_gt_724_r" {
  model             = "GT724R"
  slug              = "actiontec-gt724r"
  manufacturer_id   = netbox_manufacturer.action_tec.id
}

resource "netbox_manufacturer" "adtran" {
  name = "Adtran"
  slug = "adtran"
}

resource "netbox_device_type" "adtran_mx_2800" {
  model             = "MX2800"
  slug              = "adtran-mx2800"
  part_number       = "1200290L1"
  manufacturer_id   = netbox_manufacturer.adtran.id
}

resource "netbox_device_type" "adtran_netvanta_4660" {
  model             = "NetVanta 4660"
  slug              = "adtran-netvanta-4660"
  part_number       = "17004660F1"
  manufacturer_id   = netbox_manufacturer.adtran.id
}

resource "netbox_device_type" "adtran_total_access_5000_23_inch_chassis" {
  model             = "Total Access 5000 23-Inch Chassis"
  slug              = "adtran-total-access-5000-23-inch-chassis"
  part_number       = "1187001G1"
  manufacturer_id   = netbox_manufacturer.adtran.id
}

resource "netbox_manufacturer" "albis_elcon" {
  name = "Albis-Elcon"
  slug = "albis-elcon"
}

resource "netbox_device_type" "albis_elcon_big_2862" {
  model             = "BIG2862"
  slug              = "albis-elcon-big2862"
  manufacturer_id   = netbox_manufacturer.albis_elcon.id
}

resource "netbox_device_type" "albis_elcon_big_4862" {
  model             = "BIG4862"
  slug              = "albis-elcon-big4862"
  manufacturer_id   = netbox_manufacturer.albis_elcon.id
}

resource "netbox_manufacturer" "alcatel_lucent" {
  name = "Alcatel-Lucent"
  slug = "alcatel-lucent"
}

resource "netbox_device_type" "alcatel_lucent_os_6450_24" {
  model             = "OS6450-24"
  slug              = "alcatel-lucent-os6450-24"
  part_number       = "903772-90"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6450_48" {
  model             = "OS6450-48"
  slug              = "alcatel-lucent-os6450-48"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6450_p_24" {
  model             = "OS6450-P24"
  slug              = "alcatel-lucent-os6450-p24"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6450_p_48" {
  model             = "OS6450-P48"
  slug              = "alcatel-lucent-os6450-p48"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6860_48" {
  model             = "OS6860-48"
  slug              = "alcatel-lucent-os6860-48"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6860_e_24" {
  model             = "OS6860E-24"
  slug              = "alcatel-lucent-os6860e-24"
  part_number       = "903963-90"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6860_e_48" {
  model             = "OS6860E-48"
  slug              = "alcatel-lucent-os6860e-48"
  part_number       = "903965-90"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6860_e_u_28" {
  model             = "OS6860E-U28"
  slug              = "alcatel-lucent-os6860e-u28"
  part_number       = "903712-90"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6900_x_20" {
  model             = "OS6900-X20"
  slug              = "alcatel-lucent-os6900-x20"
  part_number       = "903167-90"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_device_type" "alcatel_lucent_os_6900_x_40" {
  model             = "OS6900-X40"
  slug              = "alcatel-lucent-os6900-x40"
  part_number       = "903168-90"
  manufacturer_id   = netbox_manufacturer.alcatel_lucent.id
}

resource "netbox_manufacturer" "allied_telesis" {
  name = "Allied Telesis"
  slug = "allied-telesis"
}

resource "netbox_device_type" "allied_telesis_ar_1050_v" {
  model             = "AR1050V"
  slug              = "allied-telesis-ar1050v"
  part_number       = "AT-AR1050V"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ar_2010_v" {
  model             = "AR2010V"
  slug              = "allied-telesis-ar2010v"
  part_number       = "AT-AR2010V"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ar_2050_v" {
  model             = "AR2050V"
  slug              = "allied-telesis-ar2050v"
  part_number       = "AT-AR2050V"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ar_3050_s" {
  model             = "AR3050S"
  slug              = "allied-telesis-ar3050s"
  part_number       = "AT-AR3050S"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ar_4050_s" {
  model             = "AR4050S"
  slug              = "allied-telesis-ar4050s"
  part_number       = "AT-AR4050S"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_at_mcr_12" {
  model             = "AT-MCR12"
  slug              = "allied-telesis-at-mcr12"
  part_number       = "AT-MCR12"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_gs_980_mx_10_hsm" {
  model             = "GS980MX/10HSm"
  slug              = "allied-telesis-gs980mx-10hsm"
  part_number       = "AT-GS980MX/10HSm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_gs_980_mx_18_hsm" {
  model             = "GS980MX/18HSm"
  slug              = "allied-telesis-gs980mx-18hsm"
  part_number       = "AT-GS980MX/18HSm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_gs_980_mx_28" {
  model             = "GS980MX/28"
  slug              = "allied-telesis-gs980mx-28"
  part_number       = "AT-GS980MX/28"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_gs_980_mx_28_psm" {
  model             = "GS980MX/28PSm"
  slug              = "allied-telesis-gs980mx-28psm"
  part_number       = "AT-GS980MX/28PSm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_gs_980_mx_52" {
  model             = "GS980MX/52"
  slug              = "allied-telesis-gs980mx-52"
  part_number       = "AT-GS980MX/52"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_gs_980_mx_52_psm" {
  model             = "GS980MX/52PSm"
  slug              = "allied-telesis-gs980mx-52psm"
  part_number       = "AT-GS980MX/52PSm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_200_6_fp" {
  model             = "IE200-6FP"
  slug              = "allied-telesis-ie200-6fp"
  part_number       = "AT-IE200-6FP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_200_6_ft" {
  model             = "IE200-6FT"
  slug              = "allied-telesis-ie200-6ft"
  part_number       = "AT-IE200-6FT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_200_6_gp" {
  model             = "IE200-6GP"
  slug              = "allied-telesis-ie200-6gp"
  part_number       = "AT-IE200-6GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_200_6_gt" {
  model             = "IE200-6GT"
  slug              = "allied-telesis-ie200-6gt"
  part_number       = "AT-IE200-6GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_300_12_gp" {
  model             = "IE300-12GP"
  slug              = "allied-telesis-ie300-12gp"
  part_number       = "AT-IE300-12GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_300_12_gt" {
  model             = "IE300-12GT"
  slug              = "allied-telesis-ie300-12gt"
  part_number       = "AT-IE300-12GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_340_12_gp" {
  model             = "IE340-12GP"
  slug              = "allied-telesis-ie340-12gp"
  part_number       = "AT-IE340-12GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_340_12_gt" {
  model             = "IE340-12GT"
  slug              = "allied-telesis-ie340-12gt"
  part_number       = "AT-IE340-12GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_340_20_gp" {
  model             = "IE340-20GP"
  slug              = "allied-telesis-ie340-20gp"
  part_number       = "AT-IE340-20GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_ie_340_l_18_gp" {
  model             = "IE340L-18GP"
  slug              = "allied-telesis-ie340l-18gp"
  part_number       = "AT-IE340L-18GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_switchblade_x_8106" {
  model             = "SwitchBlade x8106"
  slug              = "allied-telesis-switchblade-x8106"
  part_number       = "AT-SBx8106"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_switchblade_x_8112" {
  model             = "SwitchBlade x8112"
  slug              = "allied-telesis-switchblade-x8112"
  part_number       = "AT-SBx8112"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_switchblade_x_908_gen_2" {
  model             = "SwitchBlade x908 Gen2"
  slug              = "allied-telesis-switchblade-x908-gen2"
  part_number       = "AT-SBx908GEN2"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_10_gp" {
  model             = "x230-10GP"
  slug              = "allied-telesis-x230-10gp"
  part_number       = "AT-x230-10Gp"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_10_gt" {
  model             = "x230-10GT"
  slug              = "allied-telesis-x230-10gt"
  part_number       = "AT-x230-10GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_18_gp" {
  model             = "x230-18GP"
  slug              = "allied-telesis-x230-18gp"
  part_number       = "AT-x230-18GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_18_gt" {
  model             = "x230-18GT"
  slug              = "allied-telesis-x230-18gt"
  part_number       = "AT-x230-18GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_28_gp" {
  model             = "x230-28GP"
  slug              = "allied-telesis-x230-28gp"
  part_number       = "AT-x230-28GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_28_gt" {
  model             = "x230-28GT"
  slug              = "allied-telesis-x230-28gt"
  part_number       = "AT-x230-28GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_l_17_gt" {
  model             = "x230L-17GT"
  slug              = "allied-telesis-x230l-17gt"
  part_number       = "AT-x230L-17GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_230_l_26_gt" {
  model             = "x230L-26GT"
  slug              = "allied-telesis-x230l-26gt"
  part_number       = "AT-x230L-26GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_28_gpx" {
  model             = "x510-28GPX"
  slug              = "allied-telesis-x510-28gpx"
  part_number       = "AT-x510-28GPX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_28_gsx" {
  model             = "x510-28GSX"
  slug              = "allied-telesis-x510-28gsx"
  part_number       = "AT-x510-28GSX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_28_gtx" {
  model             = "x510-28GTX"
  slug              = "allied-telesis-x510-28gtx"
  part_number       = "AT-x510-28GTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_52_gpx" {
  model             = "x510-52GPX"
  slug              = "allied-telesis-x510-52gpx"
  part_number       = "AT-x510-52GPX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_52_gtx" {
  model             = "x510-52GTX"
  slug              = "allied-telesis-x510-52gtx"
  part_number       = "AT-x510-52GTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_l_28_gp" {
  model             = "x510L-28GP"
  slug              = "allied-telesis-x510l-28gp"
  part_number       = "AT-x510L-28GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_l_28_gt" {
  model             = "x510L-28GT"
  slug              = "allied-telesis-x510l-28gt"
  part_number       = "AT-x510L-28GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_l_52_gp" {
  model             = "x510L-52GP"
  slug              = "allied-telesis-x510l-52gp"
  part_number       = "AT-x510L-52GP"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_510_l_52_gt" {
  model             = "x510L-52GT"
  slug              = "allied-telesis-x510l-52gt"
  part_number       = "AT-x510L-52GT"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_10_ghxm" {
  model             = "x530-10GHXm"
  slug              = "allied-telesis-x530-10ghxm"
  part_number       = "AT-x530-10GHXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_18_ghxm" {
  model             = "x530-18GHXm"
  slug              = "allied-telesis-x530-18ghxm"
  part_number       = "AT-x530-18GHXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_28_gpxm" {
  model             = "x530-28GPXm"
  slug              = "allied-telesis-x530-28gpxm"
  part_number       = "AT-x530-28GPXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_28_gtxm" {
  model             = "x530-28GTXm"
  slug              = "allied-telesis-x530-28gtxm"
  part_number       = "AT-x530-28GTXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_52_gpxm" {
  model             = "x530-52GPXm"
  slug              = "allied-telesis-x530-52gpxm"
  part_number       = "AT-x530-52GPXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_52_gtxm" {
  model             = "x530-52GTXm"
  slug              = "allied-telesis-x530-52gtxm"
  part_number       = "AT-x530-52GTXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_dp_28_ghxm" {
  model             = "x530DP-28GHXm"
  slug              = "allied-telesis-x530dp-28ghxm"
  part_number       = "AT-x530DP-28GHXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_dp_52_ghxm" {
  model             = "x530DP-52GHXm"
  slug              = "allied-telesis-x530dp-52ghxm"
  part_number       = "AT-x530DP-52GHXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_l_10_ghxm" {
  model             = "x530L-10GHXm"
  slug              = "allied-telesis-x530l-10ghxm"
  part_number       = "AT-x530L-10GHXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_l_18_ghxm" {
  model             = "x530L-18GHXm"
  slug              = "allied-telesis-x530l-18ghxm"
  part_number       = "AT-x530L-18GHXm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_l_28_gpx" {
  model             = "x530L-28GPX"
  slug              = "allied-telesis-x530l-28gpx"
  part_number       = "AT-x530L-28GPX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_l_28_gtx" {
  model             = "x530L-28GTX"
  slug              = "allied-telesis-x530l-28gtx"
  part_number       = "AT-x530L-28GTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_l_52_gpx" {
  model             = "x530L-52GPX"
  slug              = "allied-telesis-x530l-52gpx"
  part_number       = "AT-x530L-52GPX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_530_l_52_gtx" {
  model             = "x530L-52GTX"
  slug              = "allied-telesis-x530l-52gtx"
  part_number       = "AT-x530L-52GTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_930_28_gpx" {
  model             = "x930-28GPX"
  slug              = "allied-telesis-x930-28gpx"
  part_number       = "AT-x930-28GPx"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_930_28_gstx" {
  model             = "x930-28GSTX"
  slug              = "allied-telesis-x930-28gstx"
  part_number       = "AT-x930-28GSTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_930_28_gtx" {
  model             = "x930-28GTX"
  slug              = "allied-telesis-x930-28gtx"
  part_number       = "AT-x930-28GTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_930_52_gpx" {
  model             = "x930-52GPX"
  slug              = "allied-telesis-x930-52gpx"
  part_number       = "AT-x930-52GPX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_930_52_gtx" {
  model             = "x930-52GTX"
  slug              = "allied-telesis-x930-52gtx"
  part_number       = "AT-x930-52GTX"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_950_28_xsq" {
  model             = "x950-28XSQ"
  slug              = "allied-telesis-x950-28xsq"
  part_number       = "AT-x950-28XSQ"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_950_28_xtqm" {
  model             = "x950-28XTQm"
  slug              = "allied-telesis-x950-28xtqm"
  part_number       = "AT-x950-28XTQm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_950_52_xsq" {
  model             = "x950-52XSQ"
  slug              = "allied-telesis-x950-52xsq"
  part_number       = "AT-x950-52XSQ"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_device_type" "allied_telesis_x_950_52_xtqm" {
  model             = "x950-52XTQm"
  slug              = "allied-telesis-x950-52xtqm"
  part_number       = "AT-x950-52XTQm"
  manufacturer_id   = netbox_manufacturer.allied_telesis.id
}

resource "netbox_manufacturer" "alpha" {
  name = "Alpha"
  slug = "alpha"
}

resource "netbox_device_type" "alpha_cordex_cxc" {
  model             = "Cordex CXC"
  slug              = "alpha-cordex-cxc"
  part_number       = "CXC"
  manufacturer_id   = netbox_manufacturer.alpha.id
}

resource "netbox_device_type" "alpha_cordex_cxcm_1_hp" {
  model             = "Cordex CXCM1 HP"
  slug              = "alpha-cordex-cxcm1-hp"
  part_number       = "CXCM1-HP"
  manufacturer_id   = netbox_manufacturer.alpha.id
}

resource "netbox_manufacturer" "apple" {
  name = "Apple"
  slug = "apple"
}

resource "netbox_device_type" "apple_appletv_31" {
  model             = "AppleTV3,1"
  slug              = "apple-appletv31"
  part_number       = "A1427"
  manufacturer_id   = netbox_manufacturer.apple.id
}

resource "netbox_device_type" "apple_appletv_32" {
  model             = "AppleTV3,2"
  slug              = "apple-appletv32"
  part_number       = "A1469"
  manufacturer_id   = netbox_manufacturer.apple.id
}

resource "netbox_device_type" "apple_appletv_53" {
  model             = "AppleTV5,3"
  slug              = "apple-appletv53"
  part_number       = "A1625"
  manufacturer_id   = netbox_manufacturer.apple.id
}

resource "netbox_device_type" "apple_appletv_62" {
  model             = "AppleTV6,2"
  slug              = "apple-appletv62"
  part_number       = "A1842"
  manufacturer_id   = netbox_manufacturer.apple.id
}

resource "netbox_device_type" "apple_appletv_111" {
  model             = "AppleTV11,1"
  slug              = "apple-appletv111"
  part_number       = "A2169"
  manufacturer_id   = netbox_manufacturer.apple.id
}

resource "netbox_manufacturer" "arista" {
  name = "Arista"
  slug = "arista"
}

resource "netbox_device_type" "arista_ccs_720_xp_24_y_6" {
  model             = "CCS-720XP-24Y6"
  slug              = "arista-ccs-720xp-24y6"
  part_number       = "CCS-720XP-24Y6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_ccs_720_xp_24_zy_4" {
  model             = "CCS-720XP-24ZY4"
  slug              = "arista-ccs-720xp-24zy4"
  part_number       = "CCS-720XP-24ZY4"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_ccs_720_xp_48_y_6" {
  model             = "CCS-720XP-48Y6"
  slug              = "arista-ccs-720xp-48y6"
  part_number       = "CCS-720XP-48Y6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_ccs_720_xp_48_zc_2" {
  model             = "CCS-720XP-48ZC2"
  slug              = "arista-ccs-720xp-48zc2"
  part_number       = "CCS-720XP-48ZC2"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_ccs_720_xp_96_zc_2" {
  model             = "CCS-720XP-96ZC2"
  slug              = "arista-ccs-720xp-96zc2"
  part_number       = "CCS-720XP-96ZC2"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7010_t_48" {
  model             = "DCS-7010T-48"
  slug              = "arista-dcs-7010t-48"
  part_number       = "DCS-7010T-48"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7010_tx_48" {
  model             = "DCS-7010TX-48"
  slug              = "arista-dcs-7010tx-48"
  part_number       = "DCS-7010TX-48"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7020_sr_24_c_2" {
  model             = "DCS-7020SR-24C2"
  slug              = "arista-dcs-7020sr-24c2"
  part_number       = "DCS-7020SR-24C2"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7020_sr_32_c_2" {
  model             = "DCS-7020SR-32C2"
  slug              = "arista-dcs-7020sr-32c2"
  part_number       = "DCS-7020SR-32C2"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7020_tr_48" {
  model             = "DCS-7020TR-48"
  slug              = "arista-dcs-7020tr-48"
  part_number       = "DCS-7020TR-48"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7048_t" {
  model             = "DCS-7048-T"
  slug              = "arista-dcs-7048-t"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_cx_3_32_s" {
  model             = "DCS-7050CX3-32S"
  slug              = "arista-dcs-7050cx3-32s"
  part_number       = "DCS-7050CX3-32S"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_qx_32_s" {
  model             = "DCS-7050QX-32S"
  slug              = "arista-dcs-7050qx-32s"
  part_number       = "DCS-7050QX-32S"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_s_52" {
  model             = "DCS-7050S-52"
  slug              = "arista-dcs-7050s-52"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_s_64" {
  model             = "DCS-7050S-64"
  slug              = "arista-dcs-7050s-64"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_sx_64" {
  model             = "DCS-7050SX-64"
  slug              = "arista-dcs-7050sx-64"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_sx_2_72_q" {
  model             = "DCS-7050SX2-72Q"
  slug              = "arista-dcs-7050sx2-72q"
  part_number       = "DCS-7050SX2-72Q"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_sx_3_48_yc_12" {
  model             = "DCS-7050SX3-48YC12"
  slug              = "arista-dcs-7050sx3-48yc12"
  part_number       = "DCS-7050SX3-48YC12"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_sx_3_48_yc_8" {
  model             = "DCS-7050SX3-48YC8"
  slug              = "arista-dcs-7050sx3-48yc8"
  part_number       = "DCS-7050SX3-48YC8"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_t_52" {
  model             = "DCS-7050T-52"
  slug              = "arista-dcs-7050t-52"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_t_64" {
  model             = "DCS-7050T-64"
  slug              = "arista-dcs-7050t-64"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_tx_48" {
  model             = "DCS-7050TX-48"
  slug              = "arista-dcs-7050tx-48"
  part_number       = "DCS-7050TX-48"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_tx_72_q" {
  model             = "DCS-7050TX-72Q"
  slug              = "arista-dcs-7050tx-72q"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7050_tx_3_48_c_8" {
  model             = "DCS-7050TX3-48C8"
  slug              = "arista-dcs-7050tx3-48c8"
  part_number       = "DCS-7050TX3-48C8"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7060_cx_32_s" {
  model             = "DCS-7060CX-32S"
  slug              = "arista-dcs-7060cx-32s"
  part_number       = "DCS-7060CX-32S"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7060_cx_2_32_s" {
  model             = "DCS-7060CX2-32S"
  slug              = "arista-dcs-7060cx2-32s"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7060_dx_4_32" {
  model             = "DCS-7060DX4-32"
  slug              = "arista-dcs-7060dx4-32"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7060_px_4_32" {
  model             = "DCS-7060PX4-32"
  slug              = "arista-dcs-7060px4-32"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7060_sx_2_48_yc_6" {
  model             = "DCS-7060SX2-48YC6"
  slug              = "arista-dcs-7060sx2-48yc6"
  part_number       = "DCS-7060SX2-48YC6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7124_sx" {
  model             = "DCS-7124SX"
  slug              = "arista-dcs-7124sx"
  part_number       = "DCS-7124SX"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7148_sx" {
  model             = "DCS-7148SX"
  slug              = "arista-dcs-7148sx"
  part_number       = "DCS-7148SX"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7150_s_24" {
  model             = "DCS-7150S-24"
  slug              = "arista-dcs-7150s-24"
  part_number       = "DCS-7150S-24"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7150_s_52" {
  model             = "DCS-7150S-52"
  slug              = "arista-dcs-7150s-52"
  part_number       = "DCS-7150S-52"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7150_s_64" {
  model             = "DCS-7150S-64"
  slug              = "arista-dcs-7150s-64"
  part_number       = "DCS-7150S-64"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7150_sc_24" {
  model             = "DCS-7150SC-24"
  slug              = "arista-dcs-7150sc-24"
  part_number       = "DCS-7150SC-24"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7150_sc_64" {
  model             = "DCS-7150SC-64"
  slug              = "arista-dcs-7150sc-64"
  part_number       = "DCS-7150SC-64"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7260_cx_3_64_f" {
  model             = "DCS-7260CX3-64-F"
  slug              = "arista-dcs-7260cx3-64-f"
  part_number       = "DCS-7260CX3-64-F"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_cr_2_60" {
  model             = "DCS-7280CR2-60"
  slug              = "arista-dcs-7280cr2-60"
  part_number       = "DCS-7280CR2-60"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_cr_2_a_30" {
  model             = "DCS-7280CR2A-30"
  slug              = "arista-dcs-7280cr2a-30"
  part_number       = "DCS-7280CR2A-30"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_cr_3_32_d_4" {
  model             = "DCS-7280CR3-32D4"
  slug              = "arista-dcs-7280cr3-32d4"
  part_number       = "DCS-7280CR3-32D4"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_cr_3_32_p_4" {
  model             = "DCS-7280CR3-32P4"
  slug              = "arista-dcs-7280cr3-32p4"
  part_number       = "DCS-7280CR3-32P4"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_qr_c_36" {
  model             = "DCS-7280QR-C36"
  slug              = "arista-dcs-7280qr-c36"
  part_number       = "DCS-7280QR-C36"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sr_48_c_6" {
  model             = "DCS-7280SR-48C6"
  slug              = "arista-dcs-7280sr-48c6"
  part_number       = "DCS-7280SR-48C6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sr_48_yc_6" {
  model             = "DCS-7280SR-48YC6"
  slug              = "arista-dcs-7280sr-48yc6"
  part_number       = "DCS-7280SR-48YC6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sr_2_48_yc_6" {
  model             = "DCS-7280SR2-48YC6"
  slug              = "arista-dcs-7280sr2-48yc6"
  part_number       = "DCS-7280SR2-48YC6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sr_2_k_48_c_6_m" {
  model             = "DCS-7280SR2K-48C6-M"
  slug              = "arista-dcs-7280sr2k-48c6-m"
  part_number       = "DCS-7280SR2K-48C6-M"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sr_3_48_yc_8" {
  model             = "DCS-7280SR3-48YC8"
  slug              = "arista-dcs-7280sr3-48yc8"
  part_number       = "DCS-7280SR3-48YC8"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sra_48_c_6_m" {
  model             = "DCS-7280SRA-48C6-M"
  slug              = "arista-dcs-7280sra-48c6-m"
  part_number       = "DCS-7280SRA-48C6-M"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_sra_48_c_6" {
  model             = "DCS-7280SRA-48C6"
  slug              = "arista-dcs-7280sra-48c6"
  part_number       = "DCS-7280SRA-48C6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7280_tr_48_c_6" {
  model             = "DCS-7280TR-48C6"
  slug              = "arista-dcs-7280tr-48c6"
  part_number       = "DCS-7280TR-48C6"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7368" {
  model             = "DCS-7368"
  slug              = "arista-dcs-7368"
  part_number       = "DCS-7368"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_device_type" "arista_dcs_7508" {
  model             = "DCS-7508"
  slug              = "arista-dcs-7508"
  part_number       = "DCS-7508"
  manufacturer_id   = netbox_manufacturer.arista.id
}

resource "netbox_manufacturer" "avocent" {
  name = "Avocent"
  slug = "avocent"
}

resource "netbox_device_type" "avocent_acs_16" {
  model             = "ACS16"
  slug              = "avocent-acs16"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_acs_8008_sac_400" {
  model             = "ACS 8008 Single-AC"
  slug              = "avocent-acs8008sac-400"
  part_number       = "ACS8008SAC-400"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_acs_8016_sac_400" {
  model             = "ACS 8016 Single-AC"
  slug              = "avocent-acs8016sac-400"
  part_number       = "ACS8016SAC-400"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_acs_8032_sac_400" {
  model             = "ACS 8032 Single-AC"
  slug              = "avocent-acs8032sac-400"
  part_number       = "ACS8032SAC-400"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_acs_8048_sac_400" {
  model             = "ACS 8048 Single-AC"
  slug              = "avocent-acs8048sac-400"
  part_number       = "ACS8048SAC-400"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_cyclades_ts_1000" {
  model             = "Cyclades TS-1000"
  slug              = "avocent-cyclades-ts-1000"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_dsr_2035" {
  model             = "DSR2035"
  slug              = "avocent-dsr2035"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_dsriq_ps_2" {
  model             = "DSRIQ-PS2"
  slug              = "avocent-dsriq-ps2"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_dsriq_srl" {
  model             = "DSRIQ-SRL"
  slug              = "avocent-dsriq-srl"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_dsriq_usb" {
  model             = "DSRIQ-USB"
  slug              = "avocent-dsriq-usb"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_dsriq_vsn" {
  model             = "DSRIQ-VSN"
  slug              = "avocent-dsriq-vsn"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_mpuiq_srl" {
  model             = "MPUIQ-SRL"
  slug              = "avocent-mpuiq-srl"
  part_number       = "520-592-502"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_mpuiq_vmchs" {
  model             = "MPUIQ-VMCHS"
  slug              = "avocent-mpuiq-vmchs"
  part_number       = "520-854-501"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_15_a" {
  model             = "PM10-15A"
  slug              = "avocent-pm10-15a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_20_a" {
  model             = "PM10-20A"
  slug              = "avocent-pm10-20a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_l_20_a" {
  model             = "PM10-L20A"
  slug              = "avocent-pm10-l20a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_l_30_a" {
  model             = "PM10-L30A"
  slug              = "avocent-pm10-l30a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_i_10_a" {
  model             = "PM10i-10A"
  slug              = "avocent-pm10i-10a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_i_15_a" {
  model             = "PM10i-15A"
  slug              = "avocent-pm10i-15a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_i_16_a" {
  model             = "PM10i-16A"
  slug              = "avocent-pm10i-16a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_i_20_a" {
  model             = "PM10i-20A"
  slug              = "avocent-pm10i-20a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_10_i_l_30_a" {
  model             = "PM10i-L30A"
  slug              = "avocent-pm10i-l30a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_20_20_a" {
  model             = "PM20-20A"
  slug              = "avocent-pm20-20a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_20_l_20_a" {
  model             = "PM20-L20A"
  slug              = "avocent-pm20-l20a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_20_l_30_a" {
  model             = "PM20-L30A"
  slug              = "avocent-pm20-l30a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_20_i_16_a" {
  model             = "PM20i-16A"
  slug              = "avocent-pm20i-16a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_20_i_20_a" {
  model             = "PM20i-20A"
  slug              = "avocent-pm20i-20a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_20_i_l_30_a" {
  model             = "PM20i-L30A"
  slug              = "avocent-pm20i-l30a"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_3000" {
  model             = "PM3000"
  slug              = "avocent-pm3000"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_device_type" "avocent_pm_3009_h" {
  model             = "PM3009H"
  slug              = "avocent-pm3009h"
  manufacturer_id   = netbox_manufacturer.avocent.id
}

resource "netbox_manufacturer" "brocade" {
  name = "Brocade"
  slug = "brocade"
}

resource "netbox_device_type" "brocade_icx_6450_48" {
  model             = "ICX 6450-48"
  slug              = "brocade-icx6450-48"
  part_number       = "ICX6450-48"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_6610_24" {
  model             = "ICX 6610-24"
  slug              = "brocade-icx6610-24"
  part_number       = "ICX6610-24"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_6610_48" {
  model             = "ICX 6610-48"
  slug              = "brocade-icx6610-48"
  part_number       = "ICX6610-48"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_6610_48_p" {
  model             = "ICX 6610-48P"
  slug              = "brocade-icx6610-48p"
  part_number       = "ICX6610-48P"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_6650_64" {
  model             = "ICX 6650-64"
  slug              = "brocade-icx6650-64"
  part_number       = "ICX6650-64"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_7150_c_12_p" {
  model             = "ICX 7150-C12P"
  slug              = "brocade-icx7150-c12p"
  part_number       = "ICX7150-C12P"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_7250_24" {
  model             = "ICX 7250-24"
  slug              = "brocade-icx7250-24"
  part_number       = "ICX7250-24"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_7250_48" {
  model             = "ICX 7250-48"
  slug              = "brocade-icx7250-48"
  part_number       = "ICX7250-48"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_icx_7450_48" {
  model             = "ICX 7450-48"
  slug              = "brocade-icx7450-48"
  part_number       = "ICX7450-48"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_fws_624_g" {
  model             = "FastIron WS 624G"
  slug              = "brocade-fws624g"
  part_number       = "FWS624G"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_fws_648_g" {
  model             = "FastIron WS 648G"
  slug              = "brocade-fws648g"
  part_number       = "FWS648G"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_g_610" {
  model             = "G610"
  slug              = "brocade-g610"
  part_number       = "G610"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_g_620" {
  model             = "G620"
  slug              = "brocade-g620"
  part_number       = "G620"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_device_type" "brocade_g_630" {
  model             = "G630"
  slug              = "brocade-g630"
  part_number       = "G630"
  manufacturer_id   = netbox_manufacturer.brocade.id
}

resource "netbox_manufacturer" "calix" {
  name = "Calix"
  slug = "calix"
}

resource "netbox_device_type" "calix_e_7_2" {
  model             = "E7-2"
  slug              = "calix-e7-2"
  part_number       = "000-00372"
  manufacturer_id   = netbox_manufacturer.calix.id
}

resource "netbox_device_type" "calix_e_7_20" {
  model             = "E7-20"
  slug              = "calix-e7-20"
  part_number       = "100-02089"
  manufacturer_id   = netbox_manufacturer.calix.id
}

resource "netbox_manufacturer" "canon" {
  name = "Canon"
  slug = "canon"
}

resource "netbox_device_type" "canon_imagerunner_advance_c_3520" {
  model             = "imageRUNNER ADVANCE C3520"
  slug              = "canon-imagerunner-advance-c3520"
  manufacturer_id   = netbox_manufacturer.canon.id
}

resource "netbox_device_type" "canon_imagerunner_advance_c_3530_iii" {
  model             = "imageRUNNER ADVANCE C3530 III"
  slug              = "canon-imagerunner-advance-c3530-iii"
  manufacturer_id   = netbox_manufacturer.canon.id
}

resource "netbox_device_type" "canon_imagerunner_advance_c_3530" {
  model             = "imageRUNNER ADVANCE C3530"
  slug              = "canon-imagerunner-advance-c3530"
  manufacturer_id   = netbox_manufacturer.canon.id
}

resource "netbox_device_type" "canon_imagerunner_advance_dx_c_3720" {
  model             = "imageRunner ADVANCE DX C3720"
  slug              = "canon-imagerunner-advance-dx-c3720"
  manufacturer_id   = netbox_manufacturer.canon.id
}

resource "netbox_manufacturer" "check_point" {
  name = "Check Point"
  slug = "check-point"
}

resource "netbox_device_type" "check_point_cpac_1500_3600_3800_rm_dual" {
  model             = "CPAC-1500/3600/3800-RM-DUAL"
  slug              = "check-point-cpac-1500-3600-3800-rm-dual"
  part_number       = "CPAC-1500/3600/3800-RM-DUAL"
  manufacturer_id   = netbox_manufacturer.check_point.id
}

resource "netbox_device_type" "check_point_sg_23800" {
  model             = "SG23800"
  slug              = "check-point-sg23800"
  part_number       = "CPAP-SG23800"
  manufacturer_id   = netbox_manufacturer.check_point.id
}

resource "netbox_device_type" "check_point_sg_3600" {
  model             = "SG3600"
  slug              = "check-point-sg3600"
  part_number       = "CPAP-SG3600-SNBT"
  manufacturer_id   = netbox_manufacturer.check_point.id
}

resource "netbox_device_type" "check_point_sg_6400" {
  model             = "SG6400"
  slug              = "check-point-sg6400"
  part_number       = "CPAP-SG6400-SNBT"
  manufacturer_id   = netbox_manufacturer.check_point.id
}

resource "netbox_manufacturer" "ciena" {
  name = "Ciena"
  slug = "ciena"
}

resource "netbox_device_type" "ciena_3926" {
  model             = "3926"
  slug              = "ciena-3926"
  part_number       = "170-3926-900"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_device_type" "ciena_3928_ac" {
  model             = "3928AC"
  slug              = "ciena-3928ac"
  part_number       = "170-3928-910"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_device_type" "ciena_3930" {
  model             = "3930"
  slug              = "ciena-3930"
  part_number       = "170-3930-900"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_device_type" "ciena_5142" {
  model             = "5142"
  slug              = "ciena-5142"
  part_number       = "170-5142-900"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_device_type" "ciena_5160" {
  model             = "5160"
  slug              = "ciena-5160"
  part_number       = "170-5160-900"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_device_type" "ciena_5170" {
  model             = "5170"
  slug              = "ciena-5170"
  part_number       = "170-5170-900"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_device_type" "ciena_5171" {
  model             = "5171"
  slug              = "ciena-5171"
  part_number       = "170-5171-910"
  manufacturer_id   = netbox_manufacturer.ciena.id
}

resource "netbox_manufacturer" "cisco" {
  name = "Cisco"
  slug = "cisco"
}

resource "netbox_device_type" "cisco_2951_isr" {
  model             = "2951 ISR"
  slug              = "cisco-2951-isr"
  part_number       = "CISCO2951/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_8201_32_fh" {
  model             = "8201-32FH"
  slug              = "cisco-8201-32fh"
  part_number       = "8201-32FH"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_8202_32_fh_m" {
  model             = "8202-32FH-M"
  slug              = "cisco-8202-32fh-m"
  part_number       = "8202-32FH-M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_1562_d_b_k_9" {
  model             = "Aironet 1562D-B"
  slug              = "cisco-air-ap1562d-b-k9"
  part_number       = "AIR-AP1562D-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_1562_i_b_k_9" {
  model             = "Aironet 1562I-B"
  slug              = "cisco-air-ap1562i-b-k9"
  part_number       = "AIR-AP1562I-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_1572_eac_b_k_9" {
  model             = "Aironet 1572EAC-B"
  slug              = "cisco-air-ap1572eac-b-k9"
  part_number       = "AIR-AP1572EAC-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_2802_e_b_k_9" {
  model             = "Aironet 2802E-B"
  slug              = "cisco-air-ap2802e-b-k9"
  part_number       = "AIR-AP2802E-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_2802_i_b_k_9" {
  model             = "Aironet 2802I-B"
  slug              = "cisco-air-ap2802i-b-k9"
  part_number       = "AIR-AP2802I-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_3802_e_b_k_9" {
  model             = "Aironet 3802E-B"
  slug              = "cisco-air-ap3802e-b-k9"
  part_number       = "AIR-AP3802E-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ap_3802_i_b_k_9" {
  model             = "Aironet 3802I-B"
  slug              = "cisco-air-ap3802i-b-k9"
  part_number       = "AIR-AP3802I-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_br_1310_g_a_k_9_r" {
  model             = "Aironet BR1310G-A-K9-R"
  slug              = "cisco-air-br1310g-a-k9-r"
  part_number       = "AIR-BR1310G-A-K9-R"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_br_1410_a_a_k_9_n" {
  model             = "Aironet BR1410A-A"
  slug              = "cisco-air-br1410a-a-k9-n"
  part_number       = "AIR-BR1410A-A-K9-N"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_1532_e_a_k_9" {
  model             = "Aironet CAP1532E"
  slug              = "cisco-air-cap1532e-a-k9"
  part_number       = "AIR-CAP1532E-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_1552_h_a_k_9" {
  model             = "Aironet 1552H-A"
  slug              = "cisco-air-cap1552h-a-k9"
  part_number       = "AIR-CAP1552H-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_1552_h_b_k_9" {
  model             = "Aironet 1552H-B"
  slug              = "cisco-air-cap1552h-b-k9"
  part_number       = "AIR-CAP1552H-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_2602_e_a_k_9" {
  model             = "Aironet 2602E-A"
  slug              = "cisco-air-cap2602e-a-k9"
  part_number       = "AIR-CAP2602E-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_2602_i_a_k_9" {
  model             = "Aironet 2602I-A"
  slug              = "cisco-air-cap2602i-a-k9"
  part_number       = "AIR-CAP2602I-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_2602_i_b_k_9" {
  model             = "Aironet 2602I-B"
  slug              = "cisco-air-cap2602i-b-k9"
  part_number       = "AIR-CAP2602I-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3502_e_a_k_9" {
  model             = "Aironet 3502E-A"
  slug              = "cisco-air-cap3502e-a-k9"
  part_number       = "AIR-CAP3502E-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3602_e_a_k_9" {
  model             = "Aironet 3602E-A"
  slug              = "cisco-air-cap3602e-a-k9"
  part_number       = "AIR-CAP3602E-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3602_i_a_k_9" {
  model             = "Aironet 3602I-A"
  slug              = "cisco-air-cap3602i-a-k9"
  part_number       = "AIR-CAP3602I-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3602_i_b_k_9" {
  model             = "Aironet 3602I-B"
  slug              = "cisco-air-cap3602i-b-k9"
  part_number       = "AIR-CAP3602I-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3702_e_a_k_9" {
  model             = "Aironet 3702E-A"
  slug              = "cisco-air-cap3702e-a-k9"
  part_number       = "AIR-CAP3702E-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3702_e_b_k_9" {
  model             = "Aironet 3702E-B"
  slug              = "cisco-air-cap3702e-b-k9"
  part_number       = "AIR-CAP3702E-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3702_i_a_k_9" {
  model             = "Aironet 3702I-A"
  slug              = "cisco-air-cap3702i-a-k9"
  part_number       = "AIR-CAP3702I-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_cap_3702_i_b_k_9" {
  model             = "Aironet 3702I-B"
  slug              = "cisco-air-cap3702i-b-k9"
  part_number       = "AIR-CAP3702I-B-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ct_2504_k_9" {
  model             = "Aironet CT2504-K9"
  slug              = "cisco-air-ct2504-k9"
  part_number       = "AIR-CT2504-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ct_3504_k_9" {
  model             = "AIR-CT3504-K9"
  slug              = "cisco-air-ct3504-k9"
  part_number       = "AIR-CT3504-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ct_5508_k_9" {
  model             = "AIR-CT5508-K9"
  slug              = "cisco-air-ct5508-k9"
  part_number       = "AIR-CT5508-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_ct_5520_k_9" {
  model             = "AIR-CT5520-K9"
  slug              = "cisco-air-ct5520-k9"
  part_number       = "AIR-CT5520-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_lap_1242_ag_a_k_9" {
  model             = "Aironet 1242AG-A"
  slug              = "cisco-air-lap1242ag-a-k9"
  part_number       = "AIR-LAP1242AG-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_air_lap_1522_hz_a_k_9" {
  model             = "Aironet 1522HZ-A"
  slug              = "cisco-air-lap1522hz-a-k9"
  part_number       = "AIR-LAP1522HZ-A-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_apic_l_3" {
  model             = "APIC-L3"
  slug              = "cisco-apic-l3"
  part_number       = "APIC-L3"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_apic_m_2" {
  model             = "APIC-M2"
  slug              = "cisco-apic-m2"
  part_number       = "APIC-M2"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_apic_m_3" {
  model             = "APIC-M3"
  slug              = "cisco-apic-m3"
  part_number       = "APIC-M3"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_as_2511_rj" {
  model             = "AS2511RJ"
  slug              = "cisco-as2511rj"
  part_number       = "AS2511RJ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5505" {
  model             = "ASA5505"
  slug              = "cisco-asa5505"
  part_number       = "ASA5505"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5506_x" {
  model             = "ASA5506-X"
  slug              = "cisco-asa5506-x"
  part_number       = "ASA5506"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5508_x" {
  model             = "ASA5508-X"
  slug              = "cisco-asa5508-x"
  part_number       = "ASA5508"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5510" {
  model             = "ASA5510"
  slug              = "cisco-asa5510"
  part_number       = "ASA5510"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5512_x" {
  model             = "ASA5512-X"
  slug              = "cisco-asa5512-x"
  part_number       = "ASA5512"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5515_x_k_8" {
  model             = "ASA5515-X"
  slug              = "cisco-asa5515x-k8"
  part_number       = "ASA5515X-K8"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5516_x_k_8" {
  model             = "ASA5516-X"
  slug              = "cisco-asa5516x-k8"
  part_number       = "ASA5516X-K8"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5520_k_8" {
  model             = "ASA5520"
  slug              = "cisco-asa5520-k8"
  part_number       = "ASA5520-K8"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5525_x" {
  model             = "ASA5525-X"
  slug              = "cisco-asa5525-x"
  part_number       = "ASA5525"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5540" {
  model             = "ASA5540"
  slug              = "cisco-asa5540"
  part_number       = "ASA5540"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5545_x" {
  model             = "ASA5545-X"
  slug              = "cisco-asa5545-x"
  part_number       = "ASA5545-K8"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5550" {
  model             = "ASA5550"
  slug              = "cisco-asa5550"
  part_number       = "ASA5550"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5555_x" {
  model             = "ASA5555-X"
  slug              = "cisco-asa5555-x"
  part_number       = "ASA5555-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5555" {
  model             = "ASA5555"
  slug              = "cisco-asa5555"
  part_number       = "ASA5555"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5585_ssp_20" {
  model             = "ASA5585-SSP-20"
  slug              = "cisco-asa5585-ssp-20"
  part_number       = "ASA5585-SSP-20"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asa_5585_x" {
  model             = "ASA5585-X"
  slug              = "cisco-asa5585-x"
  part_number       = "ASA5585-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9001" {
  model             = "ASR-9001"
  slug              = "cisco-asr-9001"
  part_number       = "ASR-9001"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9006" {
  model             = "ASR-9006"
  slug              = "cisco-asr-9006"
  part_number       = "ASR-9006"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_920_12_cz_a" {
  model             = "ASR-920-12CZ-A"
  slug              = "cisco-asr-920-12cz-a"
  part_number       = "ASR-920-12CZ-A"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_920_12_cz_d" {
  model             = "ASR-920-12CZ-D"
  slug              = "cisco-asr-920-12cz-d"
  part_number       = "ASR-920-12CZ-D"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_920_12_sz_d" {
  model             = "ASR-920-12SZ-D"
  slug              = "cisco-asr-920-12sz-d"
  part_number       = "ASR-920-12SZ-D"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_920_24_sz_m" {
  model             = "ASR-920-24SZ-M"
  slug              = "cisco-asr-920-24sz-m"
  part_number       = "ASR-920-24SZ-M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_920_24_sz" {
  model             = "ASR-920-24SZ"
  slug              = "cisco-asr-920-24sz"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_920_4_sz_a" {
  model             = "ASR-920-4SZ-A"
  slug              = "cisco-asr-920-4sz-a"
  part_number       = "ASR-920-4SZ-A"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9901" {
  model             = "ASR-9901"
  slug              = "cisco-asr-9901"
  part_number       = "ASR-9901"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9902" {
  model             = "ASR-9902"
  slug              = "cisco-asr-9902"
  part_number       = "ASR-9902"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9903" {
  model             = "ASR-9903"
  slug              = "cisco-asr-9903"
  part_number       = "ASR-9903"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9904" {
  model             = "ASR-9904"
  slug              = "cisco-asr-9904"
  part_number       = "ASR-9904"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9906" {
  model             = "ASR-9906"
  slug              = "cisco-asr-9906"
  part_number       = "ASR-9906"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_9910" {
  model             = "ASR-9910"
  slug              = "cisco-asr-9910"
  part_number       = "ASR-9910"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1001_hx" {
  model             = "ASR1001-HX"
  slug              = "cisco-asr1001-hx"
  part_number       = "ASR1001-HX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1001_x" {
  model             = "ASR1001-X"
  slug              = "cisco-asr1001-x"
  part_number       = "ASR1001-X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1001" {
  model             = "ASR1001"
  slug              = "cisco-asr1001"
  part_number       = "ASR1001"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1002_hx" {
  model             = "ASR1002-HX"
  slug              = "cisco-asr1002-hx"
  part_number       = "ASR1002-HX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1002_x" {
  model             = "ASR1002-X"
  slug              = "cisco-asr1002-x"
  part_number       = "ASR1002X-5G-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1006" {
  model             = "ASR1006"
  slug              = "cisco-asr1006"
  part_number       = "ASR1006"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_asr_1013" {
  model             = "ASR1013"
  slug              = "cisco-asr1013"
  part_number       = "ASR1013"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_16_fp_2_g_l" {
  model             = "C1000-16FP-2G-L"
  slug              = "cisco-c1000-16fp-2g-l"
  part_number       = "C1000-16FP-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_16_p_2_g_l" {
  model             = "C1000-16P-2G-L"
  slug              = "cisco-c1000-16p-2g-l"
  part_number       = "C1000-16P-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_16_p_e_2_g_l" {
  model             = "C1000-16P-E-2G-L"
  slug              = "cisco-c1000-16p-e-2g-l"
  part_number       = "C1000-16P-E-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_16_t_2_g_l" {
  model             = "C1000-16T-2G-L"
  slug              = "cisco-c1000-16t-2g-l"
  part_number       = "C1000-16T-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_16_t_e_2_g_l" {
  model             = "C1000-16T-E-2G-L"
  slug              = "cisco-c1000-16t-e-2g-l"
  part_number       = "C1000-16T-E-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_24_fp_4_g_l" {
  model             = "C1000-24FP-4G-L"
  slug              = "cisco-c1000-24fp-4g-l"
  part_number       = "C1000-24FP-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_24_fp_4_x_l" {
  model             = "C1000-24FP-4X-L"
  slug              = "cisco-c1000-24fp-4x-l"
  part_number       = "C1000-24FP-4X-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_24_p_4_g_l" {
  model             = "C1000-24P-4G-L"
  slug              = "cisco-c1000-24p-4g-l"
  part_number       = "C1000-24P-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_24_p_4_x_l" {
  model             = "C1000-24P-4X-L"
  slug              = "cisco-c1000-24p-4x-l"
  part_number       = "C1000-24P-4X-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_24_t_4_g_l" {
  model             = "C1000-24T-4G-L"
  slug              = "cisco-c1000-24t-4g-l"
  part_number       = "C1000-24T-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_24_t_4_x_l" {
  model             = "C1000-24T-4X-L"
  slug              = "cisco-c1000-24t-4x-l"
  part_number       = "C1000-24T-4X-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_48_fp_4_g_l" {
  model             = "C1000-48FP-4G-L"
  slug              = "cisco-c1000-48fp-4g-l"
  part_number       = "C1000-48FP-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_48_fp_4_x_l" {
  model             = "C1000-48FP-4X-L"
  slug              = "cisco-c1000-48fp-4x-l"
  part_number       = "C1000-48FP-4X-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_48_p_4_g_l" {
  model             = "C1000-48P-4G-L"
  slug              = "cisco-c1000-48p-4g-l"
  part_number       = "C1000-48P-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_48_p_4_x_l" {
  model             = "C1000-48P-4X-L"
  slug              = "cisco-c1000-48p-4x-l"
  part_number       = "C1000-48P-4X-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_48_t_4_g_l" {
  model             = "C1000-48T-4G-L"
  slug              = "cisco-c1000-48t-4g-l"
  part_number       = "C1000-48T-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_48_t_4_x_l" {
  model             = "C1000-48T-4X-L"
  slug              = "cisco-c1000-48t-4x-l"
  part_number       = "C1000-48T-4X-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_8_fp_2_g_l" {
  model             = "C1000-8FP-2G-L"
  slug              = "cisco-c1000-8fp-2g-l"
  part_number       = "C1000-8FP-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_8_fp_e_2_g_l" {
  model             = "C1000-8FP-E-2G-L"
  slug              = "cisco-c1000-8fp-e-2g-l"
  part_number       = "C1000-8FP-E-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_8_p_2_g_l" {
  model             = "C1000-8P-2G-L"
  slug              = "cisco-c1000-8p-2g-l"
  part_number       = "C1000-8P-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_8_p_e_2_g_l" {
  model             = "C1000-8P-E-2G-L"
  slug              = "cisco-c1000-8p-e-2g-l"
  part_number       = "C1000-8P-E-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_8_t_2_g_l" {
  model             = "C1000-8T-2G-L"
  slug              = "cisco-c1000-8t-2g-l"
  part_number       = "C1000-8T-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_8_t_e_2_g_l" {
  model             = "C1000-8T-E-2G-L"
  slug              = "cisco-c1000-8t-e-2g-l"
  part_number       = "C1000-8T-E-2G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_fe_24_p_4_g_l" {
  model             = "C1000FE-24P-4G-L"
  slug              = "cisco-c1000fe-24p-4g-l"
  part_number       = "C1000FE-24P-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_fe_24_t_4_g_l" {
  model             = "C1000FE-24T-4G-L"
  slug              = "cisco-c1000fe-24t-4g-l"
  part_number       = "C1000FE-24T-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_fe_48_p_4_g_l" {
  model             = "C1000FE-48P-4G-L"
  slug              = "cisco-c1000fe-48p-4g-l"
  part_number       = "C1000FE-48P-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_1000_fe_48_t_4_g_l" {
  model             = "C1000FE-48T-4G-L"
  slug              = "cisco-c1000fe-48t-4g-l"
  part_number       = "C1000FE-48T-4G-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_6807_xl" {
  model             = "Catalyst 6807-XL"
  slug              = "cisco-catalyst-6807-xl"
  part_number       = "C6807-XL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_6816_x_le" {
  model             = "C6816-X-LE"
  slug              = "cisco-c6816-x-le"
  part_number       = "C6816-X-LE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_6832_x_le" {
  model             = "C6832-X-LE"
  slug              = "cisco-c6832-x-le"
  part_number       = "C6832-X-LE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_6840_x_le_40_g" {
  model             = "C6840-X-LE-40G"
  slug              = "cisco-c6840-x-le-40g"
  part_number       = "C6840-X-LE-40G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_7201" {
  model             = "C7201"
  slug              = "cisco-c7201"
  part_number       = "CISCO7201"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_7206_vxr" {
  model             = "7206VXR"
  slug              = "cisco-7206vxr"
  part_number       = "CISCO7206VXR"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_819_g_4_g_v_k_9" {
  model             = "819G-4G-V"
  slug              = "cisco-c819g-4g-v-k9"
  part_number       = "C819G-4G-V-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_8500_12_x" {
  model             = "Catalyst 8500-12X"
  slug              = "cisco-c8500-12x"
  part_number       = "C8500-12X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_8500_12_x_4_qc" {
  model             = "Catalyst 8500-12X4QC"
  slug              = "cisco-c8500-12x4qc"
  part_number       = "C8500-12X4QC"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_887_va_k_9" {
  model             = "C887VA-K9"
  slug              = "cisco-c887va-k9"
  part_number       = "C887VA-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9120_axi_e" {
  model             = "Catalyst 9120AXI-E"
  slug              = "cisco-c9120axi-e"
  part_number       = "C9120AXI-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9130_axi_b" {
  model             = "Catalyst 9130AXI-B"
  slug              = "cisco-c9130axi-b"
  part_number       = "C9130AXI-B"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9130_axi_e" {
  model             = "Catalyst 9130AXI-E"
  slug              = "cisco-c9130axi-e"
  part_number       = "C9130AXI-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_24_p" {
  model             = "C9200-24P"
  slug              = "cisco-c9200-24p"
  part_number       = "C9200-24P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_24_t" {
  model             = "C9200-24T"
  slug              = "cisco-c9200-24t"
  part_number       = "C9200-24T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_48_p" {
  model             = "C9200-48P"
  slug              = "cisco-c9200-48p"
  part_number       = "C9200-48P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_48_t" {
  model             = "C9200-48T"
  slug              = "cisco-c9200-48t"
  part_number       = "C9200-48T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_24_p_4_g_e" {
  model             = "C9200L-24P-4G-E"
  slug              = "cisco-c9200l-24p-4g-e"
  part_number       = "C9200L-24P-4G-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_24_p_4_g" {
  model             = "C9200L-24P-4G"
  slug              = "cisco-c9200l-24p-4g"
  part_number       = "C9200L-24P-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_24_p_4_x" {
  model             = "C9200L-24P-4X"
  slug              = "cisco-c9200l-24p-4x"
  part_number       = "C9200L-24P-4X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_24_t_4_g" {
  model             = "C9200L-24T-4G"
  slug              = "cisco-c9200l-24t-4g"
  part_number       = "C9200L-24T-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_24_t_4_x" {
  model             = "C9200L-24T-4X"
  slug              = "cisco-c9200l-24t-4x"
  part_number       = "C9200L-24T-4X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_48_p_4_g_e" {
  model             = "C9200L-48P-4G-E"
  slug              = "cisco-c9200l-48p-4g-e"
  part_number       = "C9200L-48P-4G-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_48_p_4_g" {
  model             = "C9200L-48P-4G"
  slug              = "cisco-c9200l-48p-4g"
  part_number       = "C9200L-48P-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_48_p_4_x" {
  model             = "C9200L-48P-4X"
  slug              = "cisco-c9200l-48p-4x"
  part_number       = "C9200L-48P-4X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_48_pl_4_g" {
  model             = "C9200L-48PL-4G"
  slug              = "cisco-c9200l-48pl-4g"
  part_number       = "C9200L-48PL-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_48_t_4_g" {
  model             = "C9200L-48T-4G"
  slug              = "cisco-c9200l-48t-4g"
  part_number       = "C9200L-48T-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9200_l_48_t_4_x" {
  model             = "C9200L-48T-4X"
  slug              = "cisco-c9200l-48t-4x"
  part_number       = "C9200L-48T-4X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_24_p" {
  model             = "Catalyst 9300-24P"
  slug              = "cisco-c9300-24p"
  part_number       = "C9300-24P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_24_t_e" {
  model             = "Catalyst 9300-24T-E"
  slug              = "cisco-c9300-24t-e"
  part_number       = "C9300-24T-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_24_t" {
  model             = "Catalyst 9300-24T"
  slug              = "cisco-c9300-24t"
  part_number       = "C9300-24T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_24_u" {
  model             = "Catalyst 9300-24U"
  slug              = "cisco-c9300-24u"
  part_number       = "C9300-24U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_24_ux" {
  model             = "Catalyst 9300-24UX"
  slug              = "cisco-c9300-24ux"
  part_number       = "C9300-24UX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_48_p_e" {
  model             = "Catalyst 9300-48P-E"
  slug              = "cisco-c9300-48p-e"
  part_number       = "C9300-48P-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_48_p" {
  model             = "Catalyst 9300-48P"
  slug              = "cisco-c9300-48p"
  part_number       = "C9300-48P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_48_t" {
  model             = "Catalyst 9300-48T"
  slug              = "cisco-c9300-48t"
  part_number       = "C9300-48T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_48_u" {
  model             = "Catalyst 9300-48U"
  slug              = "cisco-c9300-48u"
  part_number       = "C9300-48U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_48_un" {
  model             = "Catalyst 9300-48UN"
  slug              = "cisco-c9300-48un"
  part_number       = "C9300-48UN"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_48_uxm" {
  model             = "Catalyst 9300-48UXM"
  slug              = "cisco-c9300-48uxm"
  part_number       = "C9300-48UXM"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_l_24_p_4_g" {
  model             = "Catalyst 9300L-24P-4G"
  slug              = "cisco-c9300l-24p-4g"
  part_number       = "C9300L-24P-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_l_48_p_4_g" {
  model             = "Catalyst 9300L-48P-4G"
  slug              = "cisco-c9300l-48p-4g"
  part_number       = "C9300L-48P-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_l_48_p_4_x" {
  model             = "Catalyst 9300L-48P-4X"
  slug              = "cisco-c9300l-48p-4x"
  part_number       = "C9300L-48P-4X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9300_l_48_uxg_4_x" {
  model             = "Catalyst 9300L-48UXG-4X"
  slug              = "cisco-c9300l-48uxg-4x"
  part_number       = "C9300L-48UXG-4X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_9404_r" {
  model             = "Catalyst 9404R"
  slug              = "cisco-catalyst-9404r"
  part_number       = "C9404R"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_9407_r" {
  model             = "Catalyst 9407R"
  slug              = "cisco-catalyst-9407r"
  part_number       = "C9407R"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_9410_r" {
  model             = "Catalyst 9410R"
  slug              = "cisco-catalyst-9410r"
  part_number       = "C9410R"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_12_q" {
  model             = "Catalyst 9500-12Q"
  slug              = "cisco-c9500-12q"
  part_number       = "C9500-12q"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_16_x" {
  model             = "Catalyst 9500-16X"
  slug              = "cisco-c9500-16x"
  part_number       = "C9500-16X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_24_y_4_c" {
  model             = "Catalyst 9500-24Y4C"
  slug              = "cisco-c9500-24y4c"
  part_number       = "C9500-24Y4C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_32_c" {
  model             = "Catalyst 9500-32C"
  slug              = "cisco-c9500-32c"
  part_number       = "C9500-32C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_32_qc" {
  model             = "Catalyst 9500-32QC"
  slug              = "cisco-c9500-32qc"
  part_number       = "C9500-32QC"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_40_x" {
  model             = "Catalyst 9500-40X"
  slug              = "cisco-c9500-40x"
  part_number       = "C9500-40X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9500_48_y_4_c" {
  model             = "Catalyst 9500-48Y4C"
  slug              = "cisco-c9500-48y4c"
  part_number       = "C9500-48Y4C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9606_r" {
  model             = "Catalyst 9606R"
  slug              = "cisco-c9606r"
  part_number       = "C9606R"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9800_40_k_9" {
  model             = "Catalyst 9800-40-K9"
  slug              = "cisco-c9800-40-k9"
  part_number       = "C9800-40-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_c_9800_l_c" {
  model             = "Catalyst 9800-L-C"
  slug              = "cisco-c9800-l-c"
  part_number       = "C9800-L-C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_cbs_350_24_p_4_g" {
  model             = "CBS350-24P-4G"
  slug              = "cisco-cbs350-24p-4g"
  part_number       = "WCBS350-24P-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_cbs_350_8_p_e_2_g" {
  model             = "CBS350-8P-E-2G"
  slug              = "cisco-cbs350-8p-e-2g"
  part_number       = "CBS350-8P-E-2G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_cdb_8_p" {
  model             = "Catalyst Digital Building Switch (PoE+)"
  slug              = "cisco-cdb-8p"
  part_number       = "CDB-8P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_cdb_8_u" {
  model             = "Catalyst Digital Building Switch (UPoE)"
  slug              = "cisco-cdb-8u"
  part_number       = "CDB-8U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_digital_building_5_slot_rack_mount" {
  model             = "Catalyst Digital Building 5-slot Rack Mount"
  slug              = "cisco-catalyst-digital-building-5-slot-rack-mount"
  part_number       = "CDB-MNT-RACK5-C14"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_3925_chassis" {
  model             = "3925-CHASSIS"
  slug              = "cisco-3925-chassis"
  part_number       = "CISCO3925-CHASSIS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_7606_s" {
  model             = "7606-S"
  slug              = "cisco-7606-s"
  part_number       = "CISCO7606-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_7609_s" {
  model             = "7609-S"
  slug              = "cisco-7609-s"
  part_number       = "CISCO7609-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_cs_500" {
  model             = "CS-500"
  slug              = "cisco-cs-500"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_dn_1_hw_apl" {
  model             = "DN1-HW-APL"
  slug              = "cisco-dn1-hw-apl"
  part_number       = "DN1-HW-APL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_dn_2_hw_apl" {
  model             = "DN2-HW-APL"
  slug              = "cisco-dn2-hw-apl"
  part_number       = "DN2-HW-APL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_dpc_3939_b" {
  model             = "DPC3939B"
  slug              = "cisco-dpc3939b"
  part_number       = "DPC3939B-AMC11-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_1010_ngfw_k_9" {
  model             = "FPR1010-NGFW-K9"
  slug              = "cisco-fpr1010-ngfw-k9"
  part_number       = "FPR1010-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_1120_ngfw_k_9" {
  model             = "FPR1120-NGFW-K9"
  slug              = "cisco-fpr1120-ngfw-k9"
  part_number       = "FPR1120-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_1140_ngfw_k_9" {
  model             = "FPR1140-NGFW-K9"
  slug              = "cisco-fpr1140-ngfw-k9"
  part_number       = "FPR1140-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_1150_ngfw_k_9" {
  model             = "FPR1150-NGFW-K9"
  slug              = "cisco-fpr1150-ngfw-k9"
  part_number       = "FPR1150-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_2110_ngfw_k_9" {
  model             = "FPR2110-NGFW-K9"
  slug              = "cisco-fpr2110-ngfw-k9"
  part_number       = "FPR2110-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_2120_ngfw_k_9" {
  model             = "FPR2120-NGFW-K9"
  slug              = "cisco-fpr2120-ngfw-k9"
  part_number       = "FPR2120-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_2130_ngfw_k_9" {
  model             = "FPR2130-NGFW-K9"
  slug              = "cisco-fpr2130-ngfw-k9"
  part_number       = "FPR2130-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_2140_ngfw_k_9" {
  model             = "FPR2140-NGFW-K9"
  slug              = "cisco-fpr2140-ngfw-k9"
  part_number       = "FPR2140-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4110_ngfw_k_9" {
  model             = "FPR4110-NGFW-K9"
  slug              = "cisco-fpr4110-ngfw-k9"
  part_number       = "FPR4110-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4112_ngfw_k_9" {
  model             = "FPR4112-NGFW-K9"
  slug              = "cisco-fpr4112-ngfw-k9"
  part_number       = "FPR4112-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4115_ngfw_k_9" {
  model             = "FPR4115-NGFW-K9"
  slug              = "cisco-fpr4115-ngfw-k9"
  part_number       = "FPR4115-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4120_ngfw_k_9" {
  model             = "FPR4120-NGFW-K9"
  slug              = "cisco-fpr4120-ngfw-k9"
  part_number       = "FPR4120-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4125_ngfw_k_9" {
  model             = "FPR4125-NGFW-K9"
  slug              = "cisco-fpr4125-ngfw-k9"
  part_number       = "FPR4125-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4140_ngfw_k_9" {
  model             = "FPR4140-NGFW-K9"
  slug              = "cisco-fpr4140-ngfw-k9"
  part_number       = "FPR4140-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4145_ngfw_k_9" {
  model             = "FPR4145-NGFW-K9"
  slug              = "cisco-fpr4145-ngfw-k9"
  part_number       = "FPR4145-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_fpr_4150_ngfw_k_9" {
  model             = "FPR4150-NGFW-K9"
  slug              = "cisco-fpr4150-ngfw-k9"
  part_number       = "FPR4150-NGFW-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ie_2000_16_ptc_g_e" {
  model             = "IE-2000-16PTC-G-E"
  slug              = "cisco-ie-2000-16ptc-g-e"
  part_number       = "IE-2000-16PTC-G-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ie_2000_16_ptc_g_nx" {
  model             = "IE-2000-16PTC-G-NX"
  slug              = "cisco-ie-2000-16ptc-g-nx"
  part_number       = "IE-2000-16PTC-G-NX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ie_2000_4_ts_g_b" {
  model             = "IE-2000-4TS-G-B"
  slug              = "cisco-ie-2000-4ts-g-b"
  part_number       = "IE-2000-4TS-G-B"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ie_4000_4_gc_4_gp_4_g_e" {
  model             = "IE-4000-4GC4GP4G-E"
  slug              = "cisco-ie-4000-4gc4gp4g-e"
  part_number       = "IE-4000-4GC4GP4G-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ie_4000_8_gt_8_gp_4_g_e" {
  model             = "IE-4000-8GT8GP4G-E"
  slug              = "cisco-ie-4000-8gt8gp4g-e"
  part_number       = "IE-4000-8GT8GP4G-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ir_829_gw_lte_na_ak_9" {
  model             = "IR829"
  slug              = "cisco-ir829gw-lte-na-ak9"
  part_number       = "IR829GW-LTE-NA-AK9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1100_x_4_g" {
  model             = "ISR 100X-4G"
  slug              = "cisco-isr1100x-4g"
  part_number       = "ISR1100X-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1100_4_g" {
  model             = "ISR 1100-4G"
  slug              = "cisco-isr1100-4g"
  part_number       = "ISR1100-4G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1100_4_gltegb" {
  model             = "ISR 1100-4GLTEGB"
  slug              = "cisco-isr1100-4gltegb"
  part_number       = "ISR1100-4GLTEGB"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1100_4_gltena" {
  model             = "ISR 1100-4GLTENA"
  slug              = "cisco-isr1100-4gltena"
  part_number       = "ISR1100-4GLTENA"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1100_6_g" {
  model             = "ISR 1100-6G"
  slug              = "cisco-isr1100-6g"
  part_number       = "ISR1100-6G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1100_x_6_g" {
  model             = "ISR 1100X-6G"
  slug              = "cisco-isr1100x-6g"
  part_number       = "ISR1100X-6G"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_p" {
  model             = "ISR 1111-8P"
  slug              = "cisco-isr-1111-8p"
  part_number       = "C1111-8P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteea" {
  model             = "ISR 1111-8PLTEEA"
  slug              = "cisco-isr-1111-8plteea"
  part_number       = "C1111-8PLTEEA"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawa" {
  model             = "ISR 1111-8PLTEEAWA"
  slug              = "cisco-isr-1111-8plteeawa"
  part_number       = "C1111-8PLTEEAWA"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawb" {
  model             = "ISR 1111-8PLTEEAWB"
  slug              = "cisco-isr-1111-8plteeawb"
  part_number       = "C1111-8PLTEEAWB"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawe" {
  model             = "ISR 1111-8PLTEEAWE"
  slug              = "cisco-isr-1111-8plteeawe"
  part_number       = "C1111-8PLTEEAWE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawf" {
  model             = "ISR 1111-8PLTEEAWF"
  slug              = "cisco-isr-1111-8plteeawf"
  part_number       = "C1111-8PLTEEAWF"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawh" {
  model             = "ISR 1111-8PLTEEAWH"
  slug              = "cisco-isr-1111-8plteeawh"
  part_number       = "C1111-8PLTEEAWH"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawn" {
  model             = "ISR 1111-8PLTEEAWN"
  slug              = "cisco-isr-1111-8plteeawn"
  part_number       = "C1111-8PLTEEAWN"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawq" {
  model             = "ISR 1111-8PLTEEAWQ"
  slug              = "cisco-isr-1111-8plteeawq"
  part_number       = "C1111-8PLTEEAWQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawr" {
  model             = "ISR 1111-8PLTEEAWR"
  slug              = "cisco-isr-1111-8plteeawr"
  part_number       = "C1111-8PLTEEAWR"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_plteeawz" {
  model             = "ISR 1111-8PLTEEAWZ"
  slug              = "cisco-isr-1111-8plteeawz"
  part_number       = "C1111-8PLTEEAWZ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltela" {
  model             = "ISR 1111-8PLTELA"
  slug              = "cisco-isr-1111-8pltela"
  part_number       = "C1111-8PLTELA"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawa" {
  model             = "ISR 1111-8PLTELAWA"
  slug              = "cisco-isr-1111-8pltelawa"
  part_number       = "C1111-8PLTELAWA"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawb" {
  model             = "ISR 1111-8PLTELAWB"
  slug              = "cisco-isr-1111-8pltelawb"
  part_number       = "C1111-8PLTELAWB"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawe" {
  model             = "ISR 1111-8PLTELAWE"
  slug              = "cisco-isr-1111-8pltelawe"
  part_number       = "C1111-8PLTELAWE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawf" {
  model             = "ISR 1111-8PLTELAWF"
  slug              = "cisco-isr-1111-8pltelawf"
  part_number       = "C1111-8PLTELAWF"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawh" {
  model             = "ISR 1111-8PLTELAWH"
  slug              = "cisco-isr-1111-8pltelawh"
  part_number       = "C1111-8PLTELAWH"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawn" {
  model             = "ISR 1111-8PLTELAWN"
  slug              = "cisco-isr-1111-8pltelawn"
  part_number       = "C1111-8PLTELAWN"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawq" {
  model             = "ISR 1111-8PLTELAWQ"
  slug              = "cisco-isr-1111-8pltelawq"
  part_number       = "C1111-8PLTELAWQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawr" {
  model             = "ISR 1111-8PLTELAWR"
  slug              = "cisco-isr-1111-8pltelawr"
  part_number       = "C1111-8PLTELAWR"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pltelawz" {
  model             = "ISR 1111-8PLTELAWZ"
  slug              = "cisco-isr-1111-8pltelawz"
  part_number       = "C1111-8PLTELAWZ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwa" {
  model             = "ISR 1111-8PWA"
  slug              = "cisco-isr-1111-8pwa"
  part_number       = "C1111-8PWA"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwb" {
  model             = "ISR 1111-8PWB"
  slug              = "cisco-isr-1111-8pwb"
  part_number       = "C1111-8PWB"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwe" {
  model             = "ISR 1111-8PWE"
  slug              = "cisco-isr-1111-8pwe"
  part_number       = "C1111-8PWE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwf" {
  model             = "ISR 1111-8PWF"
  slug              = "cisco-isr-1111-8pwf"
  part_number       = "C1111-8PWF"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwh" {
  model             = "ISR 1111-8PWH"
  slug              = "cisco-isr-1111-8pwh"
  part_number       = "C1111-8PWH"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwn" {
  model             = "ISR 1111-8PWN"
  slug              = "cisco-isr-1111-8pwn"
  part_number       = "C1111-8PWN"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwq" {
  model             = "ISR 1111-8PWQ"
  slug              = "cisco-isr-1111-8pwq"
  part_number       = "C1111-8PWQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwr" {
  model             = "ISR 1111-8PWR"
  slug              = "cisco-isr-1111-8pwr"
  part_number       = "C1111-8PWR"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1111_8_pwz" {
  model             = "ISR 1111-8PWZ"
  slug              = "cisco-isr-1111-8pwz"
  part_number       = "C1111-8PWZ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1121_8_p" {
  model             = "ISR 1121-8P"
  slug              = "cisco-isr-1121-8p"
  part_number       = "C1121-8P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1161_8_p" {
  model             = "ISR 1161-8P"
  slug              = "cisco-isr-1161-8p"
  part_number       = "C1161-8P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_c_1118_8_p" {
  model             = "ISR C1118-8P"
  slug              = "cisco-isr-c1118-8p"
  part_number       = "C1118-8P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1841" {
  model             = "ISR1841"
  slug              = "cisco-isr1841"
  part_number       = "ISR1841/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1921" {
  model             = "ISR1921"
  slug              = "cisco-isr1921"
  part_number       = "ISR1921/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_1941" {
  model             = "ISR1941"
  slug              = "cisco-isr1941"
  part_number       = "ISR1941/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_2651_xm" {
  model             = "ISR2651XM"
  slug              = "cisco-isr2651xm"
  part_number       = "ISR2651xm/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_2811" {
  model             = "ISR2811"
  slug              = "cisco-isr2811"
  part_number       = "ISR2811/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_2821" {
  model             = "ISR2821"
  slug              = "cisco-isr2821"
  part_number       = "CISCO2821"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_2901" {
  model             = "ISR2901"
  slug              = "cisco-isr2901"
  part_number       = "ISR2901/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_2911" {
  model             = "ISR2911"
  slug              = "cisco-isr2911"
  part_number       = "ISR2911/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_2921" {
  model             = "ISR2921"
  slug              = "cisco-isr2921"
  part_number       = "ISR2921/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_3825" {
  model             = "ISR3825"
  slug              = "cisco-isr3825"
  part_number       = "ISR3825/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_3845" {
  model             = "ISR3845"
  slug              = "cisco-isr3845"
  part_number       = "ISR3845/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_3945" {
  model             = "ISR3945"
  slug              = "cisco-isr3945"
  part_number       = "CISCO3945-CHASSIS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_4321" {
  model             = "ISR4321"
  slug              = "cisco-isr4321"
  part_number       = "ISR4321/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_4331" {
  model             = "ISR4331"
  slug              = "cisco-isr4331"
  part_number       = "ISR4331/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_4351" {
  model             = "ISR4351"
  slug              = "cisco-isr4351"
  part_number       = "ISR4351/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_4431" {
  model             = "ISR4431"
  slug              = "cisco-isr4431"
  part_number       = "ISR4431/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_4451_x" {
  model             = "ISR4451-X"
  slug              = "cisco-isr4451-x"
  part_number       = "ISR4451-X/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_4461_x" {
  model             = "ISR4461-X"
  slug              = "cisco-isr4461-x"
  part_number       = "ISR4461-X/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_7604" {
  model             = "ISR7604"
  slug              = "cisco-isr7604"
  part_number       = "ISR7604/K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_isr_897_va" {
  model             = "ISR897VA"
  slug              = "cisco-isr897va"
  part_number       = "C897VA-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_me_3600_x_24_fs_m" {
  model             = "ME-3600X-24FS-M"
  slug              = "cisco-me-3600x-24fs-m"
  part_number       = "ME-3600X-24FS-M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_me_3600_x_24_ts_m" {
  model             = "ME-3600X-24TS-M"
  slug              = "cisco-me-3600x-24ts-m"
  part_number       = "ME-3600X-24TS-M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_me_3750_24_te_m" {
  model             = "ME-3750-24TE-M"
  slug              = "cisco-me-3750-24te-m"
  part_number       = "ME-3750-24TE-M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_me_3800_x_24_fs_m" {
  model             = "ME-3800X-24FS-M"
  slug              = "cisco-me-3800x-24fs-m"
  part_number       = "ME-3800X-24FS-M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_36" {
  model             = "Meraki MR36"
  slug              = "cisco-meraki-mr36"
  part_number       = "MR36"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_42" {
  model             = "Meraki MR42"
  slug              = "cisco-meraki-mr42"
  part_number       = "MR42"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_44" {
  model             = "Meraki MR44"
  slug              = "cisco-meraki-mr44"
  part_number       = "MR44"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_52" {
  model             = "Meraki MR52"
  slug              = "cisco-meraki-mr52"
  part_number       = "MR52"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_53" {
  model             = "Meraki MR53"
  slug              = "cisco-meraki-mr53"
  part_number       = "MR53"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_53_e" {
  model             = "Meraki MR53E"
  slug              = "cisco-meraki-mr53e"
  part_number       = "MR53E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_56" {
  model             = "Meraki MR56"
  slug              = "cisco-meraki-mr56"
  part_number       = "MR56"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_57" {
  model             = "Meraki MR57"
  slug              = "cisco-meraki-mr57"
  part_number       = "MR57"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mr_74" {
  model             = "Meraki MR74"
  slug              = "cisco-meraki-mr74"
  part_number       = "MR74"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_120_8" {
  model             = "Meraki MS120-8"
  slug              = "cisco-meraki-ms120-8"
  part_number       = "MS120-8-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_120_8_fp" {
  model             = "Meraki MS120-8FP"
  slug              = "cisco-meraki-ms120-8fp"
  part_number       = "MS120-8FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_120_8_lp" {
  model             = "Meraki MS120-8LP"
  slug              = "cisco-meraki-ms120-8lp"
  part_number       = "MS120-8LP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_125_24_p" {
  model             = "Meraki MS125-24P"
  slug              = "cisco-meraki-ms125-24p"
  part_number       = "MS125-24P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_125_48_fp" {
  model             = "Meraki MS125-48FP"
  slug              = "cisco-meraki-ms125-48fp"
  part_number       = "MS125-48FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_125_48_lp" {
  model             = "Meraki MS125-48LP"
  slug              = "cisco-meraki-ms125-48lp"
  part_number       = "MS125-48LP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_210_24" {
  model             = "Meraki MS210-24"
  slug              = "cisco-meraki-ms210-24"
  part_number       = "MS210-24-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_210_24_p" {
  model             = "Meraki MS210-24P"
  slug              = "cisco-meraki-ms210-24p"
  part_number       = "MS210-24P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_210_48" {
  model             = "Meraki MS210-48"
  slug              = "cisco-meraki-ms210-48"
  part_number       = "MS210-48-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_210_48_fp" {
  model             = "Meraki MS210-48FP"
  slug              = "cisco-meraki-ms210-48fp"
  part_number       = "MS210-48FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_210_48_lp" {
  model             = "Meraki MS210-48LP"
  slug              = "cisco-meraki-ms210-48lp"
  part_number       = "MS210-48LP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_220_24_p" {
  model             = "Meraki MS220-24P"
  slug              = "cisco-meraki-ms220-24p"
  part_number       = "MS220-24P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_220_48_fp" {
  model             = "Meraki MS220-48FP"
  slug              = "cisco-meraki-ms220-48fp"
  part_number       = "MS220-48FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_220_8_p" {
  model             = "Meraki MS220-8P"
  slug              = "cisco-meraki-ms220-8p"
  part_number       = "MS220-8P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_225_24_p" {
  model             = "Meraki MS225-24P"
  slug              = "cisco-meraki-ms225-24p"
  part_number       = "MS225-24P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_225_48_fp" {
  model             = "Meraki MS225-48FP"
  slug              = "cisco-meraki-ms225-48fp"
  part_number       = "MS225-48FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_225_48_lp" {
  model             = "Meraki MS225-48LP"
  slug              = "cisco-meraki-ms225-48lp"
  part_number       = "MS225-48LP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_250_24" {
  model             = "Meraki MS250-24"
  slug              = "cisco-meraki-ms250-24"
  part_number       = "MS250-24-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_250_24_p" {
  model             = "Meraki MS250-24P"
  slug              = "cisco-meraki-ms250-24p"
  part_number       = "MS250-24P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_250_48" {
  model             = "Meraki MS250-48"
  slug              = "cisco-meraki-ms250-48"
  part_number       = "MS250-48-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_250_48_fp" {
  model             = "Meraki MS250-48FP"
  slug              = "cisco-meraki-ms250-48fp"
  part_number       = "MS250-48FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_250_48_lp" {
  model             = "Meraki MS250-48LP"
  slug              = "cisco-meraki-ms250-48lp"
  part_number       = "MS250-48LP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_350_24_p" {
  model             = "Meraki MS350-24P"
  slug              = "cisco-meraki-ms350-24p"
  part_number       = "MS350-24P-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_350_48_fp" {
  model             = "Meraki MS350-48FP"
  slug              = "cisco-meraki-ms350-48fp"
  part_number       = "MS350-48FP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_350_48_lp" {
  model             = "Meraki MS350-48LP"
  slug              = "cisco-meraki-ms350-48lp"
  part_number       = "MS350-48LP-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_425_16" {
  model             = "Meraki MS425-16"
  slug              = "cisco-meraki-ms425-16"
  part_number       = "MS425-16-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_ms_425_32" {
  model             = "Meraki MS425-32"
  slug              = "cisco-meraki-ms425-32"
  part_number       = "MS425-32-HW"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mx_100" {
  model             = "Meraki MX100"
  slug              = "cisco-meraki-mx100"
  part_number       = "MX100"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mx_250" {
  model             = "Meraki MX250"
  slug              = "cisco-meraki-mx250"
  part_number       = "MX250"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mx_450" {
  model             = "Meraki MX450"
  slug              = "cisco-meraki-mx450"
  part_number       = "MX450"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_meraki_mx_84" {
  model             = "Meraki MX84"
  slug              = "cisco-meraki-mx84"
  part_number       = "MX84"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_5108_chassis" {
  model             = "UCS 5108 Chassis"
  slug              = "cisco-ucs-5108-chassis"
  part_number       = "N20-C6508"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2232_pp_10_ge" {
  model             = "N2K-C2232PP-10GE"
  slug              = "cisco-n2k-c2232pp-10ge"
  part_number       = "N2K-C2232PP-10GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2232_tm_e_10_ge" {
  model             = "N2K-C2232TM-E-10GE"
  slug              = "cisco-n2k-c2232tm-e-10ge"
  part_number       = "N2K-C2232TM-E-10GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2248_pq" {
  model             = "N2K-C2248PQ"
  slug              = "cisco-n2k-c2248pq"
  part_number       = "N2K-C2248PQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2248_tp_1_ge" {
  model             = "N2K-C2248TP-1GE"
  slug              = "cisco-n2k-c2248tp-1ge"
  part_number       = "N2K-C2248TP-1GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2248_tp_e_1_ge" {
  model             = "N2K-C2248TP-E-1GE"
  slug              = "cisco-n2k-c2248tp-e-1ge"
  part_number       = "N2K-C2248TP-E-1GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2348_tq_10_g_e" {
  model             = "N2K-C2348TQ-10G-E"
  slug              = "cisco-n2k-c2348tq-10g-e"
  part_number       = "N2K-C2348TQ-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2348_tq_10_ge" {
  model             = "N2K-C2348TQ-10GE"
  slug              = "cisco-n2k-c2348tq-10ge"
  part_number       = "N2K-C2348TQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_2_k_c_2348_upq_10_ge" {
  model             = "N2K-C2348UPQ-10GE"
  slug              = "cisco-n2k-c2348upq-10ge"
  part_number       = "N2K-C2348UPQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_3_k_c_3048_tp_1_ge" {
  model             = "Nexus 3048"
  slug              = "cisco-n3k-c3048tp-1ge"
  part_number       = "N3K-C3048TP-1GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_3_k_c_3064_q_10_ge" {
  model             = "Nexus C3064PQ-10GE"
  slug              = "cisco-n3k-c3064q-10ge"
  part_number       = "N3K-C3064Q-10GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_3_k_c_3132_q_40_ge" {
  model             = "Nexus 3132Q-40GE"
  slug              = "cisco-n3k-c3132q-40ge"
  part_number       = "N3K-C3132Q-40GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_nexus_3132_q_40_gx" {
  model             = "Nexus 3132Q-40GX"
  slug              = "cisco-nexus-3132q-40gx"
  part_number       = "N3K-C3132Q-40GX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_3_k_c_3172_q_10_ge" {
  model             = "Nexus 3172PQ-10GE"
  slug              = "cisco-n3k-c3172q-10ge"
  part_number       = "N3K-C3172Q-10GE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_3_k_c_3172_tq_10_gt" {
  model             = "Nexus 3172T"
  slug              = "cisco-n3k-c3172tq-10gt"
  part_number       = "N3K-C3172TQ-10GT"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_3_k_c_3232_c" {
  model             = "Nexus 3232C"
  slug              = "cisco-n3k-c3232c"
  part_number       = "N3K-C3232C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_540_24_z_8_q_2_c_sys" {
  model             = "N540-24Z8Q2C-SYS"
  slug              = "cisco-n540-24z8q2c-sys"
  part_number       = "N540-24Z8Q2C-SYS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_540_28_z_4_c_sys_d" {
  model             = "N540-28Z4C-SYS-D"
  slug              = "cisco-n540-28z4c-sys-d"
  part_number       = "N540-28Z4C-SYS-D"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_540_acc_sys" {
  model             = "N540-ACC-SYS"
  slug              = "cisco-n540-acc-sys"
  part_number       = "N540-ACC-SYS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5548_p" {
  model             = "Nexus 5548P"
  slug              = "cisco-n5k-c5548p"
  part_number       = "N5K-C5548P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5548_up" {
  model             = "Nexus 5548UP"
  slug              = "cisco-n5k-c5548up"
  part_number       = "N5K-C5548UP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5596_t" {
  model             = "Nexus 5596T"
  slug              = "cisco-n5k-c5596t"
  part_number       = "N5K-C5596T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5596_up" {
  model             = "Nexus 5596UP"
  slug              = "cisco-n5k-c5596up"
  part_number       = "N5K-C5596UP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_56128_p" {
  model             = "Nexus 56128P"
  slug              = "cisco-n5k-c56128p"
  part_number       = "N5K-C56128P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5648_q" {
  model             = "Nexus 5648Q Chassis"
  slug              = "cisco-n5k-c5648q"
  part_number       = "N5K-C5648Q"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5672_up" {
  model             = "Nexus 5672UP"
  slug              = "cisco-n5k-c5672up"
  part_number       = "N5K-C5672UP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_5_k_c_5696_q" {
  model             = "Nexus 5696Q"
  slug              = "cisco-n5k-c5696q"
  part_number       = "N5K-C5696Q"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_77_c_7706" {
  model             = "N77-C7706"
  slug              = "cisco-n77-c7706"
  part_number       = "N77-C7706"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_77_c_7710" {
  model             = "N77-C7710"
  slug              = "cisco-n77-c7710"
  part_number       = "N77-C7710"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_7_k_7702" {
  model             = "N7K-7702"
  slug              = "cisco-n7k-7702"
  part_number       = "N77-C7702"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_7_k_c_7004" {
  model             = "Nexus N7K-C7004"
  slug              = "cisco-n7k-c7004"
  part_number       = "N7K-C7004"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_7_k_c_7010" {
  model             = "N7K-C7010"
  slug              = "cisco-n7k-c7010"
  part_number       = "N7K-C7010"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_92348_gc_x" {
  model             = "Nexus 92348GC-X"
  slug              = "cisco-n9k-c92348gc-x"
  part_number       = "N9K-C92348GC-X"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93108_lc_ex" {
  model             = "Nexus 93108LC-EX"
  slug              = "cisco-n9k-c93108lc-ex"
  part_number       = "N9K-C93108LC-EX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93108_tc_ex" {
  model             = "Nexus 93108TC-EX"
  slug              = "cisco-n9k-c93108tc-ex"
  part_number       = "N9K-C93108TC-EX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93108_tc_fx" {
  model             = "Nexus 93108TC-FX"
  slug              = "cisco-n9k-c93108tc-fx"
  part_number       = "N9K-C93108TC-FX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93108_tc_fx_3_p" {
  model             = "Nexus 93108TC-FX3P"
  slug              = "cisco-n9k-c93108tc-fx3p"
  part_number       = "N9K-C93108TC-FX3P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93120_tx" {
  model             = "Nexus 93120TX"
  slug              = "cisco-n9k-c93120tx"
  part_number       = "N9K-C93120TX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9316_d_gx" {
  model             = "Nexus 9316D-GX"
  slug              = "cisco-n9k-c9316d-gx"
  part_number       = "N9K-C9316D-GX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93180_yc_ex" {
  model             = "Nexus 93180YC-EX"
  slug              = "cisco-n9k-c93180yc-ex"
  part_number       = "N9K-C93180YC-EX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93180_yc_fx" {
  model             = "Nexus 93180YC-FX"
  slug              = "cisco-n9k-c93180yc-fx"
  part_number       = "N9K-C93180YC-FX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93180_yc_fx_3" {
  model             = "Nexus 93180YC-FX3"
  slug              = "cisco-n9k-c93180yc-fx3"
  part_number       = "N9K-C93180YC-FX3"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93180_yc_fx_3_s" {
  model             = "Nexus 93180YC-FX3S"
  slug              = "cisco-n9k-c93180yc-fx3s"
  part_number       = "N9K-C93180YC-FX3S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93216_tc_fx_2" {
  model             = "Nexus 93216TC-FX2"
  slug              = "cisco-n9k-c93216tc-fx2"
  part_number       = "N9K-C93216TC-FX2"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93240_yc_fx_2" {
  model             = "Nexus 93240YC-FX2"
  slug              = "cisco-n9k-c93240yc-fx2"
  part_number       = "N9K-C93240YC-FX2"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9332_c" {
  model             = "Nexus 9332C"
  slug              = "cisco-n9k-c9332c"
  part_number       = "N9K-C9332C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9332_pq" {
  model             = "Nexus 9332PQ"
  slug              = "cisco-n9k-c9332pq"
  part_number       = "N9K-C9332PQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9336_c_fx_2" {
  model             = "Nexus 9336C-FX2"
  slug              = "cisco-n9k-c9336c-fx2"
  part_number       = "N9K-C9336C-FX2"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9336_pq" {
  model             = "Nexus 9336PQ"
  slug              = "cisco-n9k-c9336pq"
  part_number       = "N9K-C9336PQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9348_gc_fxp" {
  model             = "Nexus 9348GC-FXP"
  slug              = "cisco-n9k-c9348gc-fxp"
  part_number       = "N9K-C9348GC-FXP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_93600_cd_gx" {
  model             = "Nexus 93600CD-GX"
  slug              = "cisco-n9k-c93600cd-gx"
  part_number       = "N9K-C93600CD-GX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9364_c_gx" {
  model             = "Nexus 9364C-GX"
  slug              = "cisco-n9k-c9364c-gx"
  part_number       = "N9K-C9364C-GX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9364_c" {
  model             = "Nexus 9364C"
  slug              = "cisco-n9k-c9364c"
  part_number       = "N9K-C9364C"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9372_px_e" {
  model             = "Nexus 9372PX-E"
  slug              = "cisco-n9k-c9372px-e"
  part_number       = "N9K-C9372PX-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9372_px" {
  model             = "Nexus 9372PX"
  slug              = "cisco-n9k-c9372px"
  part_number       = "N9K-C9372PX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9372_tx" {
  model             = "Nexus 9372TX"
  slug              = "cisco-n9k-c9372tx"
  part_number       = "N9K-C9372TX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9396_px" {
  model             = "Nexus 9396PX"
  slug              = "cisco-n9k-c9396px"
  part_number       = "N9K-C9396PX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9396_tx" {
  model             = "Nexus 9396TX"
  slug              = "cisco-n9k-c9396tx"
  part_number       = "N9K-C9396TX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_n_9_k_c_9504" {
  model             = "Nexus 9504"
  slug              = "cisco-n9k-c9504"
  part_number       = "N9K-C9504"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ncs_5501_se" {
  model             = "NCS 5501-SE"
  slug              = "cisco-ncs-5501-se"
  part_number       = "NCS-5501-SE"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ncs_55_a_1_24_h" {
  model             = "NCS 55A1-24H"
  slug              = "cisco-ncs-55a1-24h"
  part_number       = "NCS-55A1-24H"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ncs_55_a_1_36_h_s" {
  model             = "NCS 55A1-36H-S"
  slug              = "cisco-ncs-55a1-36h-s"
  part_number       = "NCS-55A1-36H-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ncs_55_a_2_mod_se_s" {
  model             = "NCS 55A2-MOD-SE-S"
  slug              = "cisco-ncs-55a2-mod-se-s"
  part_number       = "NCS-55A2-MOD-SE-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_rv_220_w" {
  model             = "RV220W"
  slug              = "cisco-rv220w"
  part_number       = "RV220W"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_250_10_p_k_9" {
  model             = "SG250-10P"
  slug              = "cisco-sg250-10p-k9"
  part_number       = "SG250-10P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_300_10" {
  model             = "SG300-10"
  slug              = "cisco-sg300-10"
  part_number       = "SRW2008-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_300_10_pp_k_9" {
  model             = "SG300-10PP"
  slug              = "cisco-sg300-10pp-k9"
  part_number       = "SG300-10PP-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_300_28" {
  model             = "SG300-28"
  slug              = "cisco-sg300-28"
  part_number       = "SG300-28"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_300_28_mp_k_9" {
  model             = "SG300-28MP"
  slug              = "cisco-sg300-28mp-k9"
  part_number       = "SG300-28MP-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_300_28_p" {
  model             = "SG300-28P"
  slug              = "cisco-sg300-28p"
  part_number       = "SG300-28P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_300_28_pp" {
  model             = "SG300-28PP"
  slug              = "cisco-sg300-28pp"
  part_number       = "SG300-28PP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_10" {
  model             = "SG350-10"
  slug              = "cisco-sg350-10"
  part_number       = "SG350-10"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_10_mp_k_9" {
  model             = "SG350-10MP"
  slug              = "cisco-sg350-10mp-k9"
  part_number       = "SG350-10MP-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_10_p_k_9" {
  model             = "SG350-10P"
  slug              = "cisco-sg350-10p-k9"
  part_number       = "SG350-10P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_28" {
  model             = "SG350-28"
  slug              = "cisco-sg350-28"
  part_number       = "SG350-28-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_28_sfp_k_9" {
  model             = "SG350-28SFP"
  slug              = "cisco-sg350-28sfp-k9"
  part_number       = "SG350-28SFP-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_x_24_p_k_9" {
  model             = "SG350X-24P"
  slug              = "cisco-sg350x-24p-k9"
  part_number       = "SG350X-24P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_x_48_p_k_9" {
  model             = "SG350X-48P"
  slug              = "cisco-sg350x-48p-k9"
  part_number       = "SG350X-48P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_350_xg_24_t" {
  model             = "SG350XG-24T"
  slug              = "cisco-sg350xg-24t"
  part_number       = "SG350XG-24T-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_500_28_k_9" {
  model             = "SG500-28"
  slug              = "cisco-sg500-28-k9"
  part_number       = "SG500-28-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_500_28_p_k_9" {
  model             = "SG500-28P"
  slug              = "cisco-sg500-28p-k9"
  part_number       = "SG500-28P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_500_52_k_9" {
  model             = "SG500-52"
  slug              = "cisco-sg500-52-k9"
  part_number       = "SG500-52-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_500_x_24_k_9" {
  model             = "SG500X-24"
  slug              = "cisco-sg500x-24-k9"
  part_number       = "SG500X-24-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_500_x_48_k_9" {
  model             = "SG500X-48"
  slug              = "cisco-sg500x-48-k9"
  part_number       = "SG500X-48-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_550_x_24_k_9" {
  model             = "SG550X-24"
  slug              = "cisco-sg550x-24-k9"
  part_number       = "SG550X-24-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_550_x_24_mp_k_9" {
  model             = "SG550X-24MP"
  slug              = "cisco-sg550x-24mp-k9"
  part_number       = "SG550X-24MP-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_550_x_24_p_k_9" {
  model             = "SG550X-24P"
  slug              = "cisco-sg550x-24p-k9"
  part_number       = "SG550X-24P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_550_x_48" {
  model             = "SG550X-48"
  slug              = "cisco-sg550x-48"
  part_number       = "SG550X-48-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_550_x_48_p" {
  model             = "SG550X-48P"
  slug              = "cisco-sg550x-48p"
  part_number       = "SG550X-48P-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_550_xg_24_f_k_9" {
  model             = "SG550XG-24F"
  slug              = "cisco-sg550xg-24f-k9"
  part_number       = "SG550XG-24F-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_sg_200_18" {
  model             = "SG200-18"
  slug              = "cisco-sg200-18"
  part_number       = "SLM2016T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_slm_2048_t" {
  model             = "SG200-50"
  slug              = "cisco-slm2048t"
  part_number       = "SLM2048T"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_spa_112_v_05" {
  model             = "SPA112-V05"
  slug              = "cisco-spa112-v05"
  part_number       = "SPA112-V05"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ubr_10012" {
  model             = "uBR10012"
  slug              = "cisco-ubr10012"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_c_220_m_4" {
  model             = "UCS-C220-M4"
  slug              = "cisco-ucs-c220-m4"
  part_number       = "UCS-C220M4"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_c_240_m_4_s" {
  model             = "UCS-C240-M4S"
  slug              = "cisco-ucs-c240-m4s"
  part_number       = "UCS-C240M4S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_c_240_m_5_sx" {
  model             = "UCS-C240-M5SX"
  slug              = "cisco-ucs-c240-m5sx"
  part_number       = "UCS-C240M5SX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_fi_6248_up" {
  model             = "UCS-FI-6248UP"
  slug              = "cisco-ucs-fi-6248up"
  part_number       = "UCS-FI-6248UP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_fi_6332_16_up" {
  model             = "UCS-FI-6332-16UP"
  slug              = "cisco-ucs-fi-6332-16up"
  part_number       = "UCS-FI-6332-16UP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_fi_6454" {
  model             = "UCS-FI-6454"
  slug              = "cisco-ucs-fi-6454"
  part_number       = "UCS-FI-6454"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_s_3260_m_5_srb" {
  model             = "UCS-S3260-M5SRB"
  slug              = "cisco-ucs-s3260-m5srb"
  part_number       = "UCS-S3260-M5SRB"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucsb_5108_ac_2" {
  model             = "UCSB-5108-AC2"
  slug              = "cisco-ucsb-5108-ac2"
  part_number       = "UCSB-5108-AC2"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucsb_b_200_m_3" {
  model             = "UCSB-B200-M3"
  slug              = "cisco-ucsb-b200-m3"
  part_number       = "UCSB-B200-M3"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucsb_b_200_m_4" {
  model             = "UCSB-B200-M4"
  slug              = "cisco-ucsb-b200-m4"
  part_number       = "UCSB-B200-M4"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucsb_b_200_m_5" {
  model             = "UCSB-B200-M5"
  slug              = "cisco-ucsb-b200-m5"
  part_number       = "UCSB-B200-M5"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ucs_c_220_m_5_sx" {
  model             = "UCS-C220-M5SX"
  slug              = "cisco-ucs-c220-m5sx"
  part_number       = "UCSC-C220-M5SX"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_vedge_1000_ac_k_9" {
  model             = "vEdge 1000"
  slug              = "cisco-vedge-1000-ac-k9"
  part_number       = "VEDGE-1000-AC-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_vedge_100_b_ac_k_9" {
  model             = "vEdge 100B"
  slug              = "cisco-vedge-100b-ac-k9"
  part_number       = "VEDGE-100B-AC-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_vedge_100_m_vz_k_9" {
  model             = "vEdge 100M"
  slug              = "cisco-vedge-100m-vz-k9"
  part_number       = "VEDGE-100M-VZ-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_vedge_2000_ac_k_9" {
  model             = "vEdge 2000"
  slug              = "cisco-vedge-2000-ac-k9"
  part_number       = "VEDGE-2000-AC-K9"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_vg_202_xm" {
  model             = "VG202XM"
  slug              = "cisco-vg202xm"
  part_number       = "VG202XM"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_vg_224" {
  model             = "VG224"
  slug              = "cisco-vg224"
  part_number       = "VG224"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2360_48_td_s" {
  model             = "Catalyst 2360"
  slug              = "cisco-ws-c2360-48td-s"
  part_number       = "WS-C2360-48TD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2950_24" {
  model             = "WS-C2950-24"
  slug              = "cisco-ws-c2950-24"
  part_number       = "WS-C2950-24"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2950_g_48_ei" {
  model             = "WS-C2950G-48-EI"
  slug              = "cisco-ws-c2950g-48-ei"
  part_number       = "WS-C2950G-48-EI"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2950_t_24" {
  model             = "WS-C2950T-24"
  slug              = "cisco-ws-c2950t-24"
  part_number       = "WS-C2950T-24"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2950_t_48_si" {
  model             = "Catalyst 2950T-48"
  slug              = "cisco-ws-c2950t-48-si"
  part_number       = "WS-C2950T-48-SI"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_2960_plus_24_pc_l" {
  model             = "Catalyst 2960+24PC-L"
  slug              = "cisco-catalyst-2960-plus-24pc-l"
  part_number       = "WS-C2960+24PC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_2960_plus_24_tc_l" {
  model             = "Catalyst 2960+24TC-L"
  slug              = "cisco-catalyst-2960-plus-24tc-l"
  part_number       = "WS-C2960+24TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_2960_plus_48_tc_l" {
  model             = "Catalyst 2960+48TC-L"
  slug              = "cisco-catalyst-2960-plus-48tc-l"
  part_number       = "WS-C2960+48TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_24_lt_l" {
  model             = "Catalyst 2960-24LT-L"
  slug              = "cisco-ws-c2960-24lt-l"
  part_number       = "WS-C2960-24LT-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_24_pc_l" {
  model             = "Catalyst 2960-24PC-L"
  slug              = "cisco-ws-c2960-24pc-l"
  part_number       = "WS-C2960-24PC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_24_tc_l" {
  model             = "Catalyst 2960-24TC-L"
  slug              = "cisco-ws-c2960-24tc-l"
  part_number       = "WS-C2960-24TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_24_tc_s" {
  model             = "Catalyst 2960-24TC-S"
  slug              = "cisco-ws-c2960-24tc-s"
  part_number       = "WS-C2960-24TC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_24_tt_l" {
  model             = "Catalyst 2960-24TT-L"
  slug              = "cisco-ws-c2960-24tt-l"
  part_number       = "WS-C2960-24TT-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_48_tc_l" {
  model             = "Catalyst 2960-48TC-L"
  slug              = "cisco-ws-c2960-48tc-l"
  part_number       = "WS-C2960-48TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_48_tt_l" {
  model             = "Catalyst 2960-48TT-L"
  slug              = "cisco-ws-c2960-48tt-l"
  part_number       = "WS-C2960-48TT-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_8_tc_l" {
  model             = "Catalyst 2960-8TC-L"
  slug              = "cisco-ws-c2960-8tc-l"
  part_number       = "WS-C2960-8TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_c_12_pc_l" {
  model             = "Catalyst 2960-12PC-L"
  slug              = "cisco-ws-c2960c-12pc-l"
  part_number       = "WS-C2960C-12PC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_c_8_pc_l" {
  model             = "Catalyst 2960-8PC-L"
  slug              = "cisco-ws-c2960c-8pc-l"
  part_number       = "WS-C2960C-8PC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_cg_8_tc_l" {
  model             = "Catalyst 2960CG-8TC-L"
  slug              = "cisco-ws-c2960cg-8tc-l"
  part_number       = "WS-C2960CG-8TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_cg_8_tl" {
  model             = "Catalyst 2960CG-8TL"
  slug              = "cisco-ws-c2960cg-8tl"
  part_number       = "WS-C2960CG-8TL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_cpd_8_pt" {
  model             = "Catalyst 2960CPD-8PT"
  slug              = "cisco-ws-c2960cpd-8pt"
  part_number       = "WS-C2960CPD-8PT"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_cx_8_pc_l" {
  model             = "Catalyst 2960CX-8PC-L"
  slug              = "cisco-ws-c2960cx-8pc-l"
  part_number       = "WS-C2960CX-8PC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_cx_8_tc_l" {
  model             = "Catalyst 2960CX-8TC-L"
  slug              = "cisco-ws-c2960cx-8tc-l"
  part_number       = "WS-C2960CX-8TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_g_24_tc_l" {
  model             = "Catalyst 2960G-24TC-L"
  slug              = "cisco-ws-c2960g-24tc-l"
  part_number       = "WS-C2960G-24TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_g_48_tc_l" {
  model             = "Catalyst 2960G-48TC-L"
  slug              = "cisco-ws-c2960g-48tc-l"
  part_number       = "WS-C2960G-48TC-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_l_16_ps_jp" {
  model             = "WS-C2960L-16PS-JP"
  slug              = "cisco-ws-c2960l-16ps-jp"
  part_number       = "WS-C2960L-16PS-JP"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_l_16_ps_ll" {
  model             = "WS-C2960L-16PS-LL"
  slug              = "cisco-ws-c2960l-16ps-ll"
  part_number       = "WS-C2960L-16PS-LL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_l_24_ts_ll" {
  model             = "WS-C2960L-24TS-LL"
  slug              = "cisco-ws-c2960l-24ts-ll"
  part_number       = "WS-C2960L-24TS-LL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_24_ps_l" {
  model             = "Catalyst 2960S-24PS-L"
  slug              = "cisco-ws-c2960s-24ps-l"
  part_number       = "WS-C2960S-24PS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_24_td_l" {
  model             = "Catalyst 2960S-24TD-L"
  slug              = "cisco-ws-c2960s-24td-l"
  part_number       = "WS-C2960S-24TD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_24_ts_l" {
  model             = "Catalyst 2960S-24TS-L"
  slug              = "cisco-ws-c2960s-24ts-l"
  part_number       = "WS-C2960S-24TS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_48_fpd_l" {
  model             = "Catalyst 2960S-48FPD-L"
  slug              = "cisco-ws-c2960s-48fpd-l"
  part_number       = "WS-C2960S-48FPD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_48_fps_l" {
  model             = "Catalyst 2960S-48FPS-L"
  slug              = "cisco-ws-c2960s-48fps-l"
  part_number       = "WS-C2960S-48FPS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_48_td_l" {
  model             = "Catalyst 2960S-48TD-L"
  slug              = "cisco-ws-c2960s-48td-l"
  part_number       = "WS-C2960S-48TD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_s_48_ts_l" {
  model             = "Catalyst 2960S-48TS-L"
  slug              = "cisco-ws-c2960s-48ts-l"
  part_number       = "WS-C2960S-48TS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_24_pd_l" {
  model             = "Catalyst 2960X-24PD-L"
  slug              = "cisco-ws-c2960x-24pd-l"
  part_number       = "WS-C2960X-24PD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_24_ps_l" {
  model             = "Catalyst 2960X-24PS-L"
  slug              = "cisco-ws-c2960x-24ps-l"
  part_number       = "WS-C2960X-24PS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_24_td_l" {
  model             = "Catalyst 2960X-24TD-L"
  slug              = "cisco-ws-c2960x-24td-l"
  part_number       = "WS-C2960X-24TD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_24_ts_l" {
  model             = "Catalyst 2960X-24TS-L"
  slug              = "cisco-ws-c2960x-24ts-l"
  part_number       = "WS-C2960X-24TS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_24_ts_ll" {
  model             = "WS-C2960X-24TS-LL"
  slug              = "cisco-ws-c2960x-24ts-ll"
  part_number       = "WS-C2960X-24TS-LL"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_48_fpd_l" {
  model             = "Catalyst 2960X-48FPD-L"
  slug              = "cisco-ws-c2960x-48fpd-l"
  part_number       = "WS-C2960X-48FPD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_48_fps_l" {
  model             = "Catalyst 2960X-48FPS-L"
  slug              = "cisco-ws-c2960x-48fps-l"
  part_number       = "WS-C2960X-48FPS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_48_lpd_l" {
  model             = "Catalyst 2960X-48LPD-L"
  slug              = "cisco-ws-c2960x-48lpd-l"
  part_number       = "WS-C2960X-48LPD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_48_lps_l" {
  model             = "Catalyst 2960X-48LPS-L"
  slug              = "cisco-ws-c2960x-48lps-l"
  part_number       = "WS-C2960X-48LPS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_48_td_l" {
  model             = "Catalyst 2960X-48TD-L"
  slug              = "cisco-ws-c2960x-48td-l"
  part_number       = "WS-C2960X-48TD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_x_48_ts_l" {
  model             = "Catalyst 2960X-48TS-L"
  slug              = "cisco-ws-c2960x-48ts-l"
  part_number       = "WS-C2960X-48TS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_24_td_i" {
  model             = "Catalyst 2960XR-24TD-I"
  slug              = "cisco-ws-c2960xr-24td-i"
  part_number       = "WS-C2960XR-24TD-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_24_ts_i" {
  model             = "Catalyst 2960XR-24TS-I"
  slug              = "cisco-ws-c2960xr-24ts-i"
  part_number       = "WS-C2960XR-24TS-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_48_fpd_i" {
  model             = "Catalyst 2960XR-48FPD-I"
  slug              = "cisco-ws-c2960xr-48fpd-i"
  part_number       = "WS-C2960XR-48FPD-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_48_fps_i" {
  model             = "Catalyst 2960XR-48FPS-I"
  slug              = "cisco-ws-c2960xr-48fps-i"
  part_number       = "WS-C2960XR-48FPS-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_48_lpd_i" {
  model             = "Catalyst 2960XR-48LPD-I"
  slug              = "cisco-ws-c2960xr-48lpd-i"
  part_number       = "WS-C2960XR-48LPD-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_48_lps_i" {
  model             = "Catalyst 2960XR-48LPS-I"
  slug              = "cisco-ws-c2960xr-48lps-i"
  part_number       = "WS-C2960XR-48LPS-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_48_td_i" {
  model             = "Catalyst 2960XR-48TD-I"
  slug              = "cisco-ws-c2960xr-48td-i"
  part_number       = "WS-C2960XR-48TD-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_2960_xr_48_ts_i" {
  model             = "Catalyst 2960XR-48TS-I"
  slug              = "cisco-ws-c2960xr-48ts-i"
  part_number       = "WS-C2960XR-48TS-I"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3550_24_smi" {
  model             = "WS-C3550-24-SMI"
  slug              = "cisco-ws-c3550-24-smi"
  part_number       = "WS-C3550-24-SMI"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_12_pc_s" {
  model             = "Catalyst 3560-12PC-S"
  slug              = "cisco-ws-c3560-12pc-s"
  part_number       = "WS-C3560-12PC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_24_ps" {
  model             = "Catalyst 3560-24PS"
  slug              = "cisco-ws-c3560-24ps"
  part_number       = "WS-C3560-24PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_24_ts_s" {
  model             = "WS-C3560-24TS-S"
  slug              = "cisco-ws-c3560-24ts-s"
  part_number       = "WS-C3560-24TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_48_ps_e" {
  model             = "WS-C3560-48PS-E"
  slug              = "cisco-ws-c3560-48ps-e"
  part_number       = "WS-C3560-48PS-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_48_ps_s" {
  model             = "WS-C3560-48PS-S"
  slug              = "cisco-ws-c3560-48ps-s"
  part_number       = "WS-C3560-48PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_48_ps" {
  model             = "Catalyst 3560-48PS"
  slug              = "cisco-ws-c3560-48ps"
  part_number       = "WS-C3560-48PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_48_ts_s" {
  model             = "WS-3560-48TS-S"
  slug              = "cisco-ws-c3560-48ts-s"
  part_number       = "WS-C3560-48TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_8_pc_s" {
  model             = "Catalyst 3560-8PC-S"
  slug              = "cisco-ws-c3560-8pc-s"
  part_number       = "WS-C3560-8PC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_c_12_pc_s" {
  model             = "Catalyst 3560C-12PC-S"
  slug              = "cisco-ws-c3560c-12pc-s"
  part_number       = "WS-C3560C-12PC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cg_8_pc_s" {
  model             = "Catalyst 3560CG-8PC-S"
  slug              = "cisco-ws-c3560cg-8pc-s"
  part_number       = "WS-C3560CG-8PC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cg_8_tc_s" {
  model             = "Catalyst WS-C3560CG-8TC-S"
  slug              = "cisco-ws-c3560cg-8tc-s"
  part_number       = "WS-C3560CG-8TC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_12_pc_s" {
  model             = "Catalyst 3560-CX-12PC-S"
  slug              = "cisco-ws-c3560cx-12pc-s"
  part_number       = "WS-C3560CX-12PC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_12_pd_s" {
  model             = "Catalyst 3560-CX-12PD-S"
  slug              = "cisco-ws-c3560cx-12pd-s"
  part_number       = "WS-C3560CX-12PD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_12_tc_s" {
  model             = "Catalyst 3560-CX-12TC-S"
  slug              = "cisco-ws-c3560cx-12tc-s"
  part_number       = "WS-C3560CX-12TC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_8_pc_s" {
  model             = "Catalyst 3560-CX-8PC-S"
  slug              = "cisco-ws-c3560cx-8pc-s"
  part_number       = "WS-C3560CX-8PC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_8_pt_s" {
  model             = "Catalyst 3560-CX-8PT-S"
  slug              = "cisco-ws-c3560cx-8pt-s"
  part_number       = "WS-C3560CX-8PT-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_8_tc_s" {
  model             = "Catalyst 3560-CX-8TC-S"
  slug              = "cisco-ws-c3560cx-8tc-s"
  part_number       = "WS-C3560CX-8TC-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_cx_8_xpd_s" {
  model             = "Catalyst 3560-CX-8XPD-S"
  slug              = "cisco-ws-c3560cx-8xpd-s"
  part_number       = "WS-C3560CX-8XPD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_e_24_pd" {
  model             = "Catalyst 3560E-24PD"
  slug              = "cisco-ws-c3560e-24pd"
  part_number       = "WS-C3560E-24PD"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_e_24_td_s" {
  model             = "Catalyst 3560E-24TD-S"
  slug              = "cisco-ws-c3560e-24td-s"
  part_number       = "WS-C3560E-24TD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_e_48_td_s" {
  model             = "Catalyst 3560E-48TD-S"
  slug              = "cisco-ws-c3560e-48td-s"
  part_number       = "WS-C3560E-48TD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_g_24_ps" {
  model             = "Catalyst 3560G-24PS"
  slug              = "cisco-ws-c3560g-24ps"
  part_number       = "WS-C3560G-24PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_g_24_ts" {
  model             = "Catalyst 3560G-24TS"
  slug              = "cisco-ws-c3560g-24ts"
  part_number       = "WS-C3560G-24TS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_g_48_ps_s" {
  model             = "WS-C3560G-48PS-S"
  slug              = "cisco-ws-c3560g-48ps-s"
  part_number       = "WS-C3560G-48PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_g_48_ps" {
  model             = "Catalyst 3560G-48PS"
  slug              = "cisco-ws-c3560g-48ps"
  part_number       = "WS-C3560G-48PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_g_48_ts_s" {
  model             = "WS-C3560G-48TS-S"
  slug              = "cisco-ws-c3560g-48ts-s"
  part_number       = "WS-C3560G-48TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_g_48_ts" {
  model             = "Catalyst 3560G-48TS"
  slug              = "cisco-ws-c3560g-48ts"
  part_number       = "WS-C3560G-48TS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_v_2_24_ps" {
  model             = "Catalyst 3560V2-24PS"
  slug              = "cisco-ws-c3560v2-24ps"
  part_number       = "WS-C3560V2-24PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_v_2_24_ts_s" {
  model             = "WS-C3560V2-24TS-S"
  slug              = "cisco-ws-c3560v2-24ts-s"
  part_number       = "WS-C3560V2-24TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_v_2_48_ps_s" {
  model             = "WS-C3560V2-48PS-S"
  slug              = "cisco-ws-c3560v2-48ps-s"
  part_number       = "WS-C3560V2-48PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_v_2_48_ps" {
  model             = "Catalyst 3560V2-48PS"
  slug              = "cisco-ws-c3560v2-48ps"
  part_number       = "WS-C3560V2-48PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_v_2_48_ts_s" {
  model             = "WS-C3560V2-48TS-S"
  slug              = "cisco-ws-c3560v2-48ts-s"
  part_number       = "WS-C3560V2-48TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_x_24_p" {
  model             = "Catalyst 3560X-24P"
  slug              = "cisco-ws-c3560x-24p"
  part_number       = "WS-C3560X-24P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_x_24_t_s" {
  model             = "Catalyst 3560X-24T-S"
  slug              = "cisco-ws-c3560x-24t-s"
  part_number       = "WS-C3560X-24T-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_x_48_p_s" {
  model             = "WS-C3560X-48P-S"
  slug              = "cisco-ws-c3560x-48p-s"
  part_number       = "WS-C3560X-48P-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_x_48_p" {
  model             = "Catalyst 3560X-48P"
  slug              = "cisco-ws-c3560x-48p"
  part_number       = "WS-C3560X-48P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_x_48_pf_s" {
  model             = "Catalyst 3560X-48PF-S"
  slug              = "cisco-ws-c3560x-48pf-s"
  part_number       = "WS-C3560X-48PF-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3560_x_48_t_s" {
  model             = "Catalyst 3560X-48T-S"
  slug              = "cisco-ws-c3560x-48t-s"
  part_number       = "WS-C3560X-48T-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_12_x_48_uq" {
  model             = "Catalyst C3650-12X48UQ"
  slug              = "cisco-ws-c3650-12x48uq"
  part_number       = "WS-C3650-12X48UQ"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_12_x_48_ur" {
  model             = "Catalyst 3650-12X48UR"
  slug              = "cisco-ws-c3650-12x48ur"
  part_number       = "WS-C3650-12X48UR"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_fd_l" {
  model             = "Catalyst 3650-24FD-L"
  slug              = "cisco-ws-c3650-24fd-l"
  part_number       = "WS-C3650-24FD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_pd_l" {
  model             = "Catalyst 3650-24PD-L"
  slug              = "cisco-ws-c3650-24pd-l"
  part_number       = "WS-C3650-24PD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_pd_s" {
  model             = "Catalyst 3650-24PD-S"
  slug              = "cisco-ws-c3650-24pd-s"
  part_number       = "WS-C3650-24PD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_pdm_l" {
  model             = "Catalyst 3650-24PDM-L"
  slug              = "cisco-ws-c3650-24pdm-l"
  part_number       = "WS-C3650-24PDM-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_ps_l" {
  model             = "Catalyst 3650-24PS-L"
  slug              = "cisco-ws-c3650-24ps-l"
  part_number       = "WS-C3650-24PS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_ps" {
  model             = "Catalyst 3650-24PS"
  slug              = "cisco-ws-c3650-24ps"
  part_number       = "WS-C3650-24PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_td_l" {
  model             = "Catalyst 3650-24TD-L"
  slug              = "cisco-ws-c3650-24td-l"
  part_number       = "WS-C3650-24TD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_ts_l" {
  model             = "Catalyst 3650-24TS-L"
  slug              = "cisco-ws-c3650-24ts-l"
  part_number       = "WS-C3650-24TS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_24_ts" {
  model             = "Catalyst 3650-24TS"
  slug              = "cisco-ws-c3650-24ts"
  part_number       = "WS-C3650-24TS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fd_e" {
  model             = "Catalyst 3650-48FD-E"
  slug              = "cisco-ws-c3650-48fd-e"
  part_number       = "WS-C3650-48FD-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fd_l" {
  model             = "Catalyst 3650-48FD-L"
  slug              = "cisco-ws-c3650-48fd-l"
  part_number       = "WS-C3650-48FD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fd_s" {
  model             = "Catalyst 3650-48FD-S"
  slug              = "cisco-ws-c3650-48fd-s"
  part_number       = "WS-C3650-48FD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fq_e" {
  model             = "Catalyst 3650-48FQ-E"
  slug              = "cisco-ws-c3650-48fq-e"
  part_number       = "WS-C3650-48FQ-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fq_l" {
  model             = "Catalyst 3650-48FQ-L"
  slug              = "cisco-ws-c3650-48fq-l"
  part_number       = "WS-C3650-48FQ-l"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fq_s" {
  model             = "Catalyst 3650-48FQ-S"
  slug              = "cisco-ws-c3650-48fq-s"
  part_number       = "WS-C3650-48FQ-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fqm_e" {
  model             = "Catalyst 3650-48FQM-E"
  slug              = "cisco-ws-c3650-48fqm-e"
  part_number       = "WS-C3650-48FQM-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fqm_l" {
  model             = "Catalyst 3650-48FQM-L"
  slug              = "cisco-ws-c3650-48fqm-l"
  part_number       = "WS-C3650-48FQM-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fqm_s" {
  model             = "Catalyst 3650-48FQM-S"
  slug              = "cisco-ws-c3650-48fqm-s"
  part_number       = "WS-C3650-48FQM-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_fs_l" {
  model             = "Catalyst 3650-48FS-L"
  slug              = "cisco-ws-c3650-48fs-l"
  part_number       = "WS-C3650-48FS-l"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_pd_e" {
  model             = "Catalyst 3650-48PD-E"
  slug              = "cisco-ws-c3650-48pd-e"
  part_number       = "WS-C3650-48PD-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_pd_l" {
  model             = "Catalyst 3650-48PD-L"
  slug              = "cisco-ws-c3650-48pd-l"
  part_number       = "WS-C3650-48PD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_pd" {
  model             = "Catalyst 3650-48PD"
  slug              = "cisco-ws-c3650-48pd"
  part_number       = "WS-C3650-48PD"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_pq_e" {
  model             = "Catalyst 3650-48PQ-E"
  slug              = "cisco-ws-c3650-48pq-e"
  part_number       = "WS-C3650-48PQ-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_pq_l" {
  model             = "Catalyst 3650-48PQ-L"
  slug              = "cisco-ws-c3650-48pq-l"
  part_number       = "WS-C3650-48PQ-l"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_pq_s" {
  model             = "Catalyst 3650-48PQ-S"
  slug              = "cisco-ws-c3650-48pq-s"
  part_number       = "WS-C3650-48PQ-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_ps_l" {
  model             = "Catalyst 3650-48PS-L"
  slug              = "cisco-ws-c3650-48ps-l"
  part_number       = "WS-C3650-48PS-l"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_ps" {
  model             = "Catalyst 3650-48PS"
  slug              = "cisco-ws-c3650-48ps"
  part_number       = "WS-C3650-48PS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_td_e" {
  model             = "Catalyst 3650-48TD-E"
  slug              = "cisco-ws-c3650-48td-e"
  part_number       = "WS-C3650-48TD-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_td_l" {
  model             = "Catalyst 3650-48TD-L"
  slug              = "cisco-ws-c3650-48td-l"
  part_number       = "WS-C3650-48TD-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_td_s" {
  model             = "Catalyst 3650-48TD-S"
  slug              = "cisco-ws-c3650-48td-s"
  part_number       = "WS-C3650-48TD-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_tq_e" {
  model             = "Catalyst 3650-48TQ-E"
  slug              = "cisco-ws-c3650-48tq-e"
  part_number       = "WS-C3650-48TQ-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3650_48_ts_l" {
  model             = "Catalyst 3650-48TS-L"
  slug              = "cisco-ws-c3650-48ts-l"
  part_number       = "WS-C3650-48TS-l"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_24_ps_s" {
  model             = "Catalyst 3750-24PS"
  slug              = "cisco-ws-c3750-24ps-s"
  part_number       = "WS-C3750-24PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_24_ts_s" {
  model             = "Catalyst 3750-24TS IP Base"
  slug              = "cisco-ws-c3750-24ts-s"
  part_number       = "WS-C3750-24TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_48_ps_s" {
  model             = "Catalyst 3750-48PS"
  slug              = "cisco-ws-c3750-48ps-s"
  part_number       = "WS-C3750-48PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_48_ts_s" {
  model             = "Catalyst 3750-48TS"
  slug              = "cisco-ws-c3750-48ts-s"
  part_number       = "WS-C3750-48TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_e_24_pd" {
  model             = "Catalyst 3750E-24PD"
  slug              = "cisco-ws-c3750e-24pd"
  part_number       = "WS-C3750E-24PD"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_e_24_td" {
  model             = "Catalyst 3750E-24TD"
  slug              = "cisco-ws-c3750e-24td"
  part_number       = "WS-C3750E-24TD"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_e_48_ts_s" {
  model             = "Catalyst 3750E-48TS-S"
  slug              = "cisco-ws-c3750e-48ts-s"
  part_number       = "WS-C3750E-48TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_12_s_e" {
  model             = "Catalyst 3750G-12S-E"
  slug              = "cisco-ws-c3750g-12s-e"
  part_number       = "WS-C3750G-12S-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_12_s_s" {
  model             = "Catalyst 3750G-12S-S"
  slug              = "cisco-ws-c3750g-12s-s"
  part_number       = "WS-C3750G-12S-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_12_s" {
  model             = "Catalyst 3750G-12S"
  slug              = "cisco-ws-c3750g-12s"
  part_number       = "WS-C3750G-12S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_24_ps_s" {
  model             = "Catalyst 3750G-24PS-S"
  slug              = "cisco-ws-c3750g-24ps-s"
  part_number       = "WS-C3750G-24PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_24_ts_1_u" {
  model             = "Catalyst 3750G-24TS-1U"
  slug              = "cisco-ws-c3750g-24ts-1u"
  part_number       = "WS-C3750G-24TS-1U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_24_ts_s" {
  model             = "Catalyst 3750G-24TS-S"
  slug              = "cisco-ws-c3750g-24ts-s"
  part_number       = "WS-C3750G-24TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_24_ts_s_1_u" {
  model             = "Catalyst 3750G-24TS-S1U"
  slug              = "cisco-ws-c3750g-24ts-s1u"
  part_number       = "WS-C3750G-24TS-S1U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_48_ps_s" {
  model             = "Catalyst 3750G-48PS-S"
  slug              = "cisco-ws-c3750g-48ps-s"
  part_number       = "WS-C3750G-48PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_g_48_ts_s" {
  model             = "Catalyst 3750G-48TS-S"
  slug              = "cisco-ws-c3750g-48ts-s"
  part_number       = "WS-C3750G-48TS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_v_2_48_ps_s" {
  model             = "Catalyst 3750v2-48PS-S"
  slug              = "cisco-ws-c3750v2-48ps-s"
  part_number       = "WS-C3750V2-48PS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_12_s_s" {
  model             = "Catalyst 3750X-12S-S"
  slug              = "cisco-ws-c3750x-12s-s"
  part_number       = "WS-C3750X-12S-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_12_s" {
  model             = "Catalyst 3750X-12S"
  slug              = "cisco-ws-c3750x-12s"
  part_number       = "WS-C3750X-12S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_24" {
  model             = "Catalyst 3750X-24"
  slug              = "cisco-ws-c3750x-24"
  part_number       = "WS-C3750X-24"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_24_p_s" {
  model             = "Catalyst 3750X-24P-S"
  slug              = "cisco-ws-c3750x-24p-s"
  part_number       = "WS-C3750X-24P-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_24_t_s" {
  model             = "Catalyst 3750X-24T-S"
  slug              = "cisco-ws-c3750x-24t-s"
  part_number       = "WS-C3750X-24T-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_48_p_l" {
  model             = "Catalyst 3750X-48P-L"
  slug              = "cisco-ws-c3750x-48p-l"
  part_number       = "WS-C3750X-48P-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_48_p_s" {
  model             = "Catalyst 3750X-48P-S"
  slug              = "cisco-ws-c3750x-48p-s"
  part_number       = "WS-C3750X-48P-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_48_pf_s" {
  model             = "Catalyst 3750X-48PF-S"
  slug              = "cisco-ws-c3750x-48pf-s"
  part_number       = "WS-C3750X-48PF-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_48_t_l" {
  model             = "Catalyst 3750X-48T-L"
  slug              = "cisco-ws-c3750x-48t-l"
  part_number       = "WS-C3750X-48T-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3750_x_48_t_s" {
  model             = "Catalyst 3750X-48T-S"
  slug              = "cisco-ws-c3750x-48t-s"
  part_number       = "WS-C3750X-48T-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_12_s_e" {
  model             = "Catalyst 3850-12S-E"
  slug              = "cisco-ws-c3850-12s-e"
  part_number       = "WS-C3850-12S-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_12_s" {
  model             = "Catalyst 3850-12S"
  slug              = "cisco-ws-c3850-12s"
  part_number       = "WS-C3850-12S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_12_x_48_u_l" {
  model             = "Catalyst 3850-12X48U-L"
  slug              = "cisco-ws-c3850-12x48u-l"
  part_number       = "WS-C3850-12X48U-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_3850_48_pt_12_mgig_plus_36_gig_upoe" {
  model             = "CATALYST 3850 48PT 12 MGIG+36 GIG UPOE"
  slug              = "cisco-catalyst-3850-48pt-12-mgig-plus-36-gig-upoe"
  part_number       = "WS-C3850-12X48U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_12_xs_e" {
  model             = "Catalyst 3850-12XS-E"
  slug              = "cisco-ws-c3850-12xs-e"
  part_number       = "WS-C3850-12XS-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_12_xs_s" {
  model             = "Catalyst 3850-12XS-S"
  slug              = "cisco-ws-c3850-12xs-s"
  part_number       = "WS-C3850-12XS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_12_xs" {
  model             = "Catalyst 3850-12XS"
  slug              = "cisco-ws-c3850-12xs"
  part_number       = "WS-C3850-12XS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_p_e" {
  model             = "Catalyst 3850-24P-E"
  slug              = "cisco-ws-c3850-24p-e"
  part_number       = "WS-C3850-24P-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_p_l" {
  model             = "Catalyst 3850-24P-L"
  slug              = "cisco-ws-c3850-24p-l"
  part_number       = "WS-C3850-24P-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_p_s" {
  model             = "Catalyst 3850-24P-S"
  slug              = "cisco-ws-c3850-24p-s"
  part_number       = "WS-C3850-24P-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_s" {
  model             = "Catalyst 3850-24S"
  slug              = "cisco-ws-c3850-24s"
  part_number       = "WS-C3850-24S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_t_l" {
  model             = "Catalyst 3850-24T-L"
  slug              = "cisco-ws-c3850-24t-l"
  part_number       = "WS-C3850-24T-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_t_s" {
  model             = "Catalyst 3850-24T-S"
  slug              = "cisco-ws-c3850-24t-s"
  part_number       = "WS-C3850-24T-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_u" {
  model             = "Catalyst 3850-24U"
  slug              = "cisco-ws-c3850-24u"
  part_number       = "WS-C3850-24U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_xs_e" {
  model             = "Catalyst 3850-24XS-E"
  slug              = "cisco-ws-c3850-24xs-e"
  part_number       = "WS-C3850-24XS-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_xs_l" {
  model             = "Catalyst 3850-24XS-L"
  slug              = "cisco-ws-c3850-24xs-l"
  part_number       = "WS-C3850-24XS-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_xs_s" {
  model             = "Catalyst 3850-24XS-S"
  slug              = "cisco-ws-c3850-24xs-s"
  part_number       = "WS-C3850-24XS-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_24_xs" {
  model             = "Catalyst 3850-24XS"
  slug              = "cisco-ws-c3850-24xs"
  part_number       = "WS-C3850-24XS"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_f_l" {
  model             = "Catalyst 3850-48F LAN Base"
  slug              = "cisco-ws-c3850-48f-l"
  part_number       = "WS-C3850-48F-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_f_s" {
  model             = "Catalyst 3850-48F IP Base"
  slug              = "cisco-ws-c3850-48f-s"
  part_number       = "WS-C3850-48F-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_p_e" {
  model             = "Catalyst 3850-48P IP Services"
  slug              = "cisco-ws-c3850-48p-e"
  part_number       = "WS-C3850-48P-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_p_l" {
  model             = "Catalyst 3850-48P LAN Base"
  slug              = "cisco-ws-c3850-48p-l"
  part_number       = "WS-C3850-48P-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_p_s" {
  model             = "Catalyst 3850-48P IP Base"
  slug              = "cisco-ws-c3850-48p-s"
  part_number       = "WS-C3850-48P-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_p" {
  model             = "Catalyst 3850-48P"
  slug              = "cisco-ws-c3850-48p"
  part_number       = "WS-C3850-48P"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_t_e" {
  model             = "Catalyst 3850-48T IP Services"
  slug              = "cisco-ws-c3850-48t-e"
  part_number       = "WS-C3850-48T-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_t_l" {
  model             = "Catalyst 3850-48T LAN Base"
  slug              = "cisco-ws-c3850-48t-l"
  part_number       = "WS-C3850-48T-L"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_t_s" {
  model             = "Catalyst 3850-48T IP Base"
  slug              = "cisco-ws-c3850-48t-s"
  part_number       = "WS-C3850-48T-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_u" {
  model             = "Catalyst 3850-48U"
  slug              = "cisco-ws-c3850-48u"
  part_number       = "WS-C3850-48U"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_3850_48_xs_e" {
  model             = "Catalyst 3850-48XS-E"
  slug              = "cisco-ws-c3850-48xs-e"
  part_number       = "WS-C3850-48XS-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_c_4500_x_16_sfpp" {
  model             = "Catalyst C4500X-16SFP+"
  slug              = "cisco-catalyst-c4500x-16sfpp"
  part_number       = "WS-C4500X-16SFP+"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_c_4500_x_32_sfpp" {
  model             = "Catalyst C4500X-32SFP+"
  slug              = "cisco-catalyst-c4500x-32sfpp"
  part_number       = "WS-C4500X-32SFP+"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_4506_e" {
  model             = "Catalyst 4506-E"
  slug              = "cisco-ws-c4506-e"
  part_number       = "WS-C4506-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_4506" {
  model             = "Catalyst 4506"
  slug              = "cisco-ws-c4506"
  part_number       = "WS-C4506"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_c_4507_r_plus_e" {
  model             = "Catalyst C4507R+E"
  slug              = "cisco-catalyst-c4507r-plus-e"
  part_number       = "WS-C4507R+E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_catalyst_c_4510_r_plus_e" {
  model             = "Catalyst C4510R+E"
  slug              = "cisco-catalyst-c4510r-plus-e"
  part_number       = "WS-C4510R+E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_4900_m" {
  model             = "Catalyst C4900M"
  slug              = "cisco-ws-c4900m"
  part_number       = "WS-C4900M"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_4948_10_ge_s" {
  model             = "Catalyst 4948-10GE"
  slug              = "cisco-ws-c4948-10ge-s"
  part_number       = "WS-C4948-10GE-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_4948_s" {
  model             = "Catalyst 4948-S"
  slug              = "cisco-ws-c4948-s"
  part_number       = "WS-C4948-S"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_6506_e" {
  model             = "Catalyst 6506-E"
  slug              = "cisco-ws-c6506-e"
  part_number       = "WS-C6506-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_6509_e" {
  model             = "Catalyst 6509-E"
  slug              = "cisco-ws-c6509-e"
  part_number       = "WS-C6509-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_6509_v_e" {
  model             = "Catalyst 6509-V-E"
  slug              = "cisco-ws-c6509-v-e"
  part_number       = "WS-C6509-V-E"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_6509" {
  model             = "Catalyst 6509"
  slug              = "cisco-ws-c6509"
  part_number       = "WS-C6509"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_device_type" "cisco_ws_c_6513" {
  model             = "Catalyst 6513"
  slug              = "cisco-ws-c6513"
  part_number       = "WS-C6513"
  manufacturer_id   = netbox_manufacturer.cisco.id
}

resource "netbox_manufacturer" "citrix" {
  name = "Citrix"
  slug = "citrix"
}

resource "netbox_device_type" "citrix_mpx_59_xx" {
  model             = "MPX-59xx"
  slug              = "citrix-mpx-59xx"
  manufacturer_id   = netbox_manufacturer.citrix.id
}

resource "netbox_device_type" "citrix_sdx_14000" {
  model             = "SDX-14000"
  slug              = "citrix-sdx-14000"
  manufacturer_id   = netbox_manufacturer.citrix.id
}

resource "netbox_manufacturer" "colable" {
  name = "Colable"
  slug = "colable"
}

resource "netbox_device_type" "colable_col_5141_s" {
  model             = "COL5141S"
  slug              = "colable-col5141s"
  manufacturer_id   = netbox_manufacturer.colable.id
}

resource "netbox_manufacturer" "corning" {
  name = "Corning"
  slug = "corning"
}

resource "netbox_device_type" "corning_edge_01_u_sp" {
  model             = "EDGE-01U-SP"
  slug              = "corning-edge-01u-sp"
  part_number       = "EDGE-01U-SP"
  manufacturer_id   = netbox_manufacturer.corning.id
}

resource "netbox_device_type" "corning_edge_01_u" {
  model             = "EDGE-01U"
  slug              = "corning-edge-01u"
  part_number       = "EDGE-01U"
  manufacturer_id   = netbox_manufacturer.corning.id
}

resource "netbox_device_type" "corning_edge_02_u" {
  model             = "EDGE-02U"
  slug              = "corning-edge-02u"
  part_number       = "EDGE-02U"
  manufacturer_id   = netbox_manufacturer.corning.id
}

resource "netbox_device_type" "corning_edge_04_u" {
  model             = "EDGE-04U"
  slug              = "corning-edge-04u"
  part_number       = "EDGE-04U"
  manufacturer_id   = netbox_manufacturer.corning.id
}

resource "netbox_manufacturer" "crypto_pro" {
  name = "CryptoPro"
  slug = "crypto-pro"
}

resource "netbox_device_type" "cryptopro_ngate_320" {
  model             = "NGATE-320"
  slug              = "cryptopro-ngate-320"
  manufacturer_id   = netbox_manufacturer.crypto_pro.id
}

resource "netbox_device_type" "cryptopro_ngate_600" {
  model             = "NGATE-600"
  slug              = "cryptopro-ngate-600"
  manufacturer_id   = netbox_manufacturer.crypto_pro.id
}

resource "netbox_manufacturer" "cyber_power" {
  name = "CyberPower"
  slug = "cyber-power"
}

resource "netbox_device_type" "cyberpower_cps_1215_rms" {
  model             = "CPS1215RMS"
  slug              = "cyberpower-cps1215rms"
  part_number       = "cps1215rms"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_device_type" "cyberpower_or_1000_lcdrm_1_u" {
  model             = "OR1000LCDRM1U"
  slug              = "cyberpower-or1000lcdrm1u"
  part_number       = "or1000lcdrm1u"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_device_type" "cyberpower_or_1500_lcdrtxl_2_u" {
  model             = "OR1500LCDRTXL2U"
  slug              = "cyberpower-or1500lcdrtxl2u"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_device_type" "cyberpower_or_2200_lcdrt_2_u" {
  model             = "OR2200LCDRT2U"
  slug              = "cyberpower-or2200lcdrt2u"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_device_type" "cyberpower_pdu_15_m_2_f_12_r" {
  model             = "PDU15M2F12R"
  slug              = "cyberpower-pdu15m2f12r"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_device_type" "cyberpower_cps_1220_rms" {
  model             = "CPS-1220RMS"
  slug              = "cyberpower-cps-1220rms"
  part_number       = "cps1220rms"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_device_type" "cyberpower_cps_1500_pfclcd" {
  model             = "CP1500PFCLCD"
  slug              = "cyberpower-cps1500pfclcd"
  part_number       = "cps1500pfclcd"
  manufacturer_id   = netbox_manufacturer.cyber_power.id
}

resource "netbox_manufacturer" "d_link" {
  name = "D-Link"
  slug = "d-link"
}

resource "netbox_device_type" "d_link_des_1210_28" {
  model             = "DES-1210-28"
  slug              = "d-link-des-1210-28"
  part_number       = "DES-1210-28"
  manufacturer_id   = netbox_manufacturer.d_link.id
}

resource "netbox_device_type" "d_link_des_3200_52" {
  model             = "DES-3200-52"
  slug              = "d-link-des-3200-52"
  part_number       = "DES-3200-52"
  manufacturer_id   = netbox_manufacturer.d_link.id
}

resource "netbox_device_type" "d_link_dgs_1210_52" {
  model             = "DGS-1210-52"
  slug              = "d-link-dgs-1210-52"
  part_number       = "DGS-1210-52"
  manufacturer_id   = netbox_manufacturer.d_link.id
}

resource "netbox_device_type" "d_link_dgs_1100_05_pdv_2" {
  model             = "DGS-1100-05PDV2"
  slug              = "d-link-dgs-1100-05pdv2"
  manufacturer_id   = netbox_manufacturer.d_link.id
}

resource "netbox_manufacturer" "datacom" {
  name = "Datacom"
  slug = "datacom"
}

resource "netbox_device_type" "datacom_dm_4610_olt_4_gpon_plus_4_gx_plus_2_xs" {
  model             = "DM4610 OLT 4GPON+4GX+2XS"
  slug              = "datacom-dm4610-olt-4gpon-plus-4gx-plus-2xs"
  manufacturer_id   = netbox_manufacturer.datacom.id
}

resource "netbox_manufacturer" "datto" {
  name = "Datto"
  slug = "datto"
}

resource "netbox_device_type" "datto_ap_440" {
  model             = "AP440"
  slug              = "datto-ap440"
  part_number       = "AP440"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_ap_840" {
  model             = "AP840"
  slug              = "datto-ap840"
  part_number       = "AP840"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_ap_840_e" {
  model             = "AP840E"
  slug              = "datto-ap840e"
  part_number       = "AP840E"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_d_200" {
  model             = "D200"
  slug              = "datto-d200"
  part_number       = "D200"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_networking_appliance" {
  model             = "Datto Networking Appliance"
  slug              = "datto-networking-appliance"
  part_number       = "DNA"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_dsw_100_24_p_4_x" {
  model             = "DSW100-24P-4X"
  slug              = "datto-dsw100-24p-4x"
  part_number       = "DSW100-24P-4X"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_dsw_100_48_p_4_x" {
  model             = "DSW100-48P-4X"
  slug              = "datto-dsw100-48p-4x"
  part_number       = "DSW100-48P-4X"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_dsw_100_8_p_2_g" {
  model             = "DSW100-8P-2G"
  slug              = "datto-dsw100-8p-2g"
  part_number       = "DSW100-8P-2G"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_device_type" "datto_dsw_250_8_p_2_x" {
  model             = "DSW250-8P-2X"
  slug              = "datto-dsw250-8p-2x"
  part_number       = "DSW250-8P-2X"
  manufacturer_id   = netbox_manufacturer.datto.id
}

resource "netbox_manufacturer" "deciso" {
  name = "Deciso"
  slug = "deciso"
}

resource "netbox_device_type" "deciso_dec_2600" {
  model             = "DEC2600"
  slug              = "deciso-dec2600"
  part_number       = "DEC2600"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_2610" {
  model             = "DEC2610"
  slug              = "deciso-dec2610"
  part_number       = "DEC2610"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_2630" {
  model             = "DEC2630"
  slug              = "deciso-dec2630"
  part_number       = "DEC2630"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_2640" {
  model             = "DEC2640"
  slug              = "deciso-dec2640"
  part_number       = "DEC2640"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_2650" {
  model             = "DEC2650"
  slug              = "deciso-dec2650"
  part_number       = "DEC2650"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_2685" {
  model             = "DEC2685"
  slug              = "deciso-dec2685"
  part_number       = "DEC2685"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_3840" {
  model             = "DEC3840"
  slug              = "deciso-dec3840"
  part_number       = "DEC3840"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_3850" {
  model             = "DEC3850"
  slug              = "deciso-dec3850"
  part_number       = "DEC3850"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_3860" {
  model             = "DEC3860"
  slug              = "deciso-dec3860"
  part_number       = "DEC3860"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_4020" {
  model             = "DEC4020"
  slug              = "deciso-dec4020"
  part_number       = "DEC4020"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_4040" {
  model             = "DEC4040"
  slug              = "deciso-dec4040"
  part_number       = "DEC4040"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_4610" {
  model             = "DEC4610"
  slug              = "deciso-dec4610"
  part_number       = "DEC4610"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_4620" {
  model             = "DEC4620"
  slug              = "deciso-dec4620"
  part_number       = "DEC4620"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_4630" {
  model             = "DEC4630"
  slug              = "deciso-dec4630"
  part_number       = "DEC4630"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_4640" {
  model             = "DEC4640"
  slug              = "deciso-dec4640"
  part_number       = "DEC4640"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_600" {
  model             = "DEC600"
  slug              = "deciso-dec600"
  part_number       = "DEC600"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_610" {
  model             = "DEC610"
  slug              = "deciso-dec610"
  part_number       = "DEC610"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_620" {
  model             = "DEC620"
  slug              = "deciso-dec620"
  part_number       = "DEC620"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_630" {
  model             = "DEC630"
  slug              = "deciso-dec630"
  part_number       = "DEC630"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_670" {
  model             = "DEC670"
  slug              = "deciso-dec670"
  part_number       = "DEC670"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_690" {
  model             = "DEC690"
  slug              = "deciso-dec690"
  part_number       = "DEC690"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_740" {
  model             = "DEC740"
  slug              = "deciso-dec740"
  part_number       = "DEC740"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_750" {
  model             = "DEC750"
  slug              = "deciso-dec750"
  part_number       = "DEC750"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_840" {
  model             = "DEC840"
  slug              = "deciso-dec840"
  part_number       = "DEC840"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_device_type" "deciso_dec_850" {
  model             = "DEC850"
  slug              = "deciso-dec850"
  part_number       = "DEC850"
  manufacturer_id   = netbox_manufacturer.deciso.id
}

resource "netbox_manufacturer" "dell" {
  name = "Dell"
  slug = "dell"
}

resource "netbox_device_type" "dell_49_h_29_powervault_me_sas_controller" {
  model             = "49H29 PowerVault ME SAS Controller"
  slug              = "dell-49h29-powervault-me-sas-controller"
  part_number       = "49H29"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_dkmmled_185_207" {
  model             = "DKMMLED185-207"
  slug              = "dell-dkmmled185-207"
  part_number       = "A7485910"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_dmpu_2016_g_01" {
  model             = "DMPU2016-G01"
  slug              = "dell-dmpu2016-g01"
  part_number       = "A7485893"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_dr_4100" {
  model             = "DR4100"
  slug              = "dell-dr4100"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerconnect_5448" {
  model             = "PowerConnect 5448"
  slug              = "dell-powerconnect-5448"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerconnect_6224" {
  model             = "PowerConnect 6224"
  slug              = "dell-powerconnect-6224"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerconnect_6248" {
  model             = "PowerConnect 6248"
  slug              = "dell-powerconnect-6248"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_1950" {
  model             = "PowerEdge 1950"
  slug              = "dell-poweredge-1950"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_c_6400" {
  model             = "PowerEdge C6400"
  slug              = "dell-poweredge-c6400"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_c_6420" {
  model             = "PowerEdge C6420"
  slug              = "dell-poweredge-c6420"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_m_1000_e" {
  model             = "PowerEdge M1000e"
  slug              = "dell-poweredge-m1000e"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_mx_7000" {
  model             = "PowerEdge MX7000"
  slug              = "dell-poweredge-mx7000"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_200" {
  model             = "PowerEdge R200"
  slug              = "dell-poweredge-r200"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_230" {
  model             = "PowerEdge R230"
  slug              = "dell-poweredge-r230"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_310" {
  model             = "PowerEdge R310"
  slug              = "dell-poweredge-r310"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_320" {
  model             = "PowerEdge R320"
  slug              = "dell-poweredge-r320"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_330" {
  model             = "PowerEdge R330"
  slug              = "dell-poweredge-r330"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_340" {
  model             = "PowerEdge R340"
  slug              = "dell-poweredge-r340"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_410" {
  model             = "PowerEdge R410"
  slug              = "dell-poweredge-r410"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_415" {
  model             = "PowerEdge R415"
  slug              = "dell-poweredge-r415"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_420" {
  model             = "PowerEdge R420"
  slug              = "dell-poweredge-r420"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_430" {
  model             = "PowerEdge R430"
  slug              = "dell-poweredge-r430"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_440" {
  model             = "PowerEdge R440"
  slug              = "dell-poweredge-r440"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_450" {
  model             = "PowerEdge R450"
  slug              = "dell-poweredge-r450"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_510" {
  model             = "PowerEdge R510"
  slug              = "dell-poweredge-r510"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_520" {
  model             = "PowerEdge R520"
  slug              = "dell-poweredge-r520"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_530" {
  model             = "PowerEdge R530"
  slug              = "dell-poweredge-r530"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_540" {
  model             = "PowerEdge R540"
  slug              = "dell-poweredge-r540"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_550" {
  model             = "PowerEdge R550"
  slug              = "dell-poweredge-r550"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_610" {
  model             = "PowerEdge R610"
  slug              = "dell-poweredge-r610"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_620" {
  model             = "PowerEdge R620"
  slug              = "dell-poweredge-r620"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_620_xl" {
  model             = "PowerEdge R620 XL"
  slug              = "dell-poweredge-r620-xl"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_630" {
  model             = "PowerEdge R630"
  slug              = "dell-poweredge-r630"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_640" {
  model             = "PowerEdge R640"
  slug              = "dell-poweredge-r640"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_650" {
  model             = "PowerEdge R650"
  slug              = "dell-poweredge-r650"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_650_xs" {
  model             = "PowerEdge R650xs"
  slug              = "dell-poweredge-r650xs"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_6515" {
  model             = "PowerEdge R6515"
  slug              = "dell-poweredge-r6515"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_6525" {
  model             = "PowerEdge R6525"
  slug              = "dell-poweredge-r6525"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_710" {
  model             = "PowerEdge R710"
  slug              = "dell-poweredge-r710"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_715" {
  model             = "PowerEdge R715"
  slug              = "dell-poweredge-r715"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_720" {
  model             = "PowerEdge R720"
  slug              = "dell-poweredge-r720"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_720_xd" {
  model             = "PowerEdge R720xd"
  slug              = "dell-poweredge-r720xd"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_730" {
  model             = "PowerEdge R730"
  slug              = "dell-poweredge-r730"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_730_xd" {
  model             = "PowerEdge R730xd"
  slug              = "dell-poweredge-r730xd"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_740" {
  model             = "PowerEdge R740"
  slug              = "dell-poweredge-r740"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_740_xd" {
  model             = "PowerEdge R740xd"
  slug              = "dell-poweredge-r740xd"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_740_xd_2" {
  model             = "PowerEdge R740xd2"
  slug              = "dell-poweredge-r740xd2"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_750" {
  model             = "PowerEdge R750"
  slug              = "dell-poweredge-r750"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_7515" {
  model             = "PowerEdge R7515"
  slug              = "dell-poweredge-r7515"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_7525" {
  model             = "PowerEdge R7525"
  slug              = "dell-poweredge-r7525"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_815" {
  model             = "PowerEdge R815"
  slug              = "dell-poweredge-r815"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_820" {
  model             = "PowerEdge R820"
  slug              = "dell-poweredge-r820"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_840" {
  model             = "PowerEdge R840"
  slug              = "dell-poweredge-r840"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_r_940" {
  model             = "PowerEdge R940"
  slug              = "dell-poweredge-r940"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_110" {
  model             = "PowerEdge T110"
  slug              = "dell-poweredge-t110"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_310" {
  model             = "PowerEdge T310"
  slug              = "dell-poweredge-t310"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_320" {
  model             = "PowerEdge T320"
  slug              = "dell-poweredge-t320"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_330" {
  model             = "PowerEdge T330"
  slug              = "dell-poweredge-t330"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_340" {
  model             = "PowerEdge T340"
  slug              = "dell-poweredge-t340"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_420" {
  model             = "PowerEdge T420"
  slug              = "dell-poweredge-t420"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_430" {
  model             = "PowerEdge T430"
  slug              = "dell-poweredge-t430"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_440" {
  model             = "PowerEdge T440"
  slug              = "dell-poweredge-t440"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_poweredge_t_640" {
  model             = "PowerEdge T640"
  slug              = "dell-poweredge-t640"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_n_1124_p_on" {
  model             = "PowerSwitch N1124P-ON"
  slug              = "dell-powerswitch-n1124p-on"
  part_number       = "N1124P-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_n_2048" {
  model             = "PowerSwitch N2048"
  slug              = "dell-powerswitch-n2048"
  part_number       = "N2048"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_n_2248_x_on" {
  model             = "PowerSwitch N2248X-ON"
  slug              = "dell-powerswitch-n2248x-on"
  part_number       = "N2248X-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_n_3048" {
  model             = "PowerSwitch N3048"
  slug              = "dell-powerswitch-n3048"
  part_number       = "N3048"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_n_3248_te_on" {
  model             = "PowerSwitch N3248TE-ON"
  slug              = "dell-powerswitch-n3248te-on"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_n_4064_f" {
  model             = "PowerSwitch N4064F"
  slug              = "dell-powerswitch-n4064f"
  part_number       = "N4064F"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_4048_on" {
  model             = "PowerSwitch S4048-ON"
  slug              = "dell-powerswitch-s4048-on"
  part_number       = "S4048-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_4148_t_on" {
  model             = "PowerSwitch S4148T-ON"
  slug              = "dell-powerswitch-s4148t-on"
  part_number       = "S4148T-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_z_9100_on" {
  model             = "PowerSwitch Z9100-ON"
  slug              = "dell-powerswitch-z9100-on"
  part_number       = "Z9100-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_3048_on" {
  model             = "PowerSwitch S3048-ON"
  slug              = "dell-powerswitch-s3048-on"
  part_number       = "S3048-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_4148_f_on" {
  model             = "PowerSwitch S4148F-ON"
  slug              = "dell-powerswitch-s4148f-on"
  part_number       = "S4148F-ON"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_5224_f_on" {
  model             = "PowerSwitch S5224F-ON"
  slug              = "dell-powerswitch-s5224f-on"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_5232_f_on" {
  model             = "PowerSwitch S5232F-ON"
  slug              = "dell-powerswitch-s5232f-on"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powerswitch_s_5248_f_on" {
  model             = "PowerSwitch S5248F-ON"
  slug              = "dell-powerswitch-s5248f-on"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powervault_md_3200" {
  model             = "PowerVault MD3200"
  slug              = "dell-powervault-md3200"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powervault_me_4024" {
  model             = "PowerVault ME4024"
  slug              = "dell-powervault-me4024"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_powervault_nx_3240" {
  model             = "PowerVault NX3240"
  slug              = "dell-powervault-nx3240"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_device_type" "dell_unity_xt_880_f" {
  model             = "Unity XT 880F"
  slug              = "dell-unity-xt-880f"
  part_number       = "100-538-040-030"
  manufacturer_id   = netbox_manufacturer.dell.id
}

resource "netbox_manufacturer" "delta" {
  name = "Delta"
  slug = "delta"
}

resource "netbox_device_type" "delta_pd_1215_rm" {
  model             = "PD1215-RM"
  slug              = "delta-pd1215-rm"
  manufacturer_id   = netbox_manufacturer.delta.id
}

resource "netbox_manufacturer" "digi" {
  name = "Digi"
  slug = "digi"
}

resource "netbox_device_type" "digi_cm_32" {
  model             = "Digi CM 32"
  slug              = "digi-cm-32"
  part_number       = "70001908"
  manufacturer_id   = netbox_manufacturer.digi.id
}

resource "netbox_device_type" "digi_cm_48" {
  model             = "Digi CM 48"
  slug              = "digi-cm-48"
  part_number       = "70001949"
  manufacturer_id   = netbox_manufacturer.digi.id
}

resource "netbox_manufacturer" "digital_loggers" {
  name = "Digital Loggers"
  slug = "digital-loggers"
}

resource "netbox_device_type" "digital_loggers_smart_power_supply_pro" {
  model             = "Smart Power Supply Pro"
  slug              = "digital-loggers-smart-power-supply-pro"
  manufacturer_id   = netbox_manufacturer.digital_loggers.id
}

resource "netbox_manufacturer" "eaton" {
  name = "Eaton"
  slug = "eaton"
}

resource "netbox_device_type" "eaton_5_px_2200_irt" {
  model             = "5PX2200IRT"
  slug              = "eaton-5px2200irt"
  part_number       = "920-7374-00P"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_5_px_3000_irt_2_u" {
  model             = "5PX3000IRT2U"
  slug              = "eaton-5px3000irt2u"
  part_number       = "5PX3000IRT2U"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_5_px_3000_rtn" {
  model             = "5PX3000RTN"
  slug              = "eaton-5px3000rtn"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_9_px_3000_i_rt_2_u" {
  model             = "9PX 3000i RT 2U"
  slug              = "eaton-9px-3000i-rt-2u"
  part_number       = "9PX3000iRT2U"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_9_px_5_kirtn" {
  model             = "9PX5KIRTN"
  slug              = "eaton-9px5kirtn"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_9_px_6_k" {
  model             = "9PX6K"
  slug              = "eaton-9px6k"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_9_pxebm_180" {
  model             = "9PXEBM180"
  slug              = "eaton-9pxebm180"
  part_number       = "9PXEBM180"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_9_pxebm_72_rt_2_u" {
  model             = "9PXEBM72RT2U"
  slug              = "eaton-9pxebm72rt2u"
  part_number       = "9PXEBM72RT2U"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_cbl_2_out_32" {
  model             = "CBL2OUT32"
  slug              = "eaton-cbl2out32"
  part_number       = "CBL2OUT32"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_ema_107_10" {
  model             = "EMA107-10"
  slug              = "eaton-ema107-10"
  part_number       = "743172069184"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_emat_09_10" {
  model             = "EMAT09-10"
  slug              = "eaton-emat09-10"
  part_number       = "743172082664"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_eswb_05" {
  model             = "ESWB05"
  slug              = "eaton-eswb05"
  part_number       = "ESWB05"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_eswb_22" {
  model             = "ESWB22"
  slug              = "eaton-eswb22"
  part_number       = "ESWB22"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_pw_103_ba_1_u_405" {
  model             = "PW103BA1U405"
  slug              = "eaton-pw103ba1u405"
  part_number       = "PW103BA1U405"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_b_064_016_02_ipg" {
  model             = "Tripp Lite B064-016-02-IPG"
  slug              = "eaton-tripp-lite-b064-016-02-ipg"
  part_number       = "037332151513"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_b_096_016" {
  model             = "Tripp Lite B096-016"
  slug              = "eaton-tripp-lite-b096-016"
  part_number       = "037332148902"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_b_096_032" {
  model             = "Tripp Lite B096-032"
  slug              = "eaton-tripp-lite-b096-032"
  part_number       = "037332181183"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_b_097_016" {
  model             = "Tripp Lite B097-016"
  slug              = "eaton-tripp-lite-b097-016"
  part_number       = "037332218025"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_pdumh_15_at" {
  model             = "Tripp Lite PDUMH15AT"
  slug              = "eaton-tripp-lite-pdumh15at"
  part_number       = "037332126658"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_pdumh_20_hvat" {
  model             = "Tripp Lite PDUMH20HVAT"
  slug              = "eaton-tripp-lite-pdumh20hvat"
  part_number       = "037332156488"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_smart_1500_lcd" {
  model             = "Tripp Lite SMART1500LCD"
  slug              = "eaton-tripp-lite-smart1500lcd"
  part_number       = "037332126146"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_smart_1500_rmxl_2_ua" {
  model             = "Tripp Lite SMART1500RMXL2UA"
  slug              = "eaton-tripp-lite-smart1500rmxl2ua"
  part_number       = "037332120403"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_smart_2200_crmxl" {
  model             = "Tripp Lite SMART2200CRMXL"
  slug              = "eaton-tripp-lite-smart2200crmxl"
  part_number       = "037332142368"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_device_type" "eaton_tripp_lite_ultrablok" {
  model             = "Tripp Lite ULTRABLOK"
  slug              = "eaton-tripp-lite-ultrablok"
  part_number       = "037332010476"
  manufacturer_id   = netbox_manufacturer.eaton.id
}

resource "netbox_manufacturer" "edgecore" {
  name = "Edgecore"
  slug = "edgecore"
}

resource "netbox_device_type" "edgecore_5812_54_x_o_ac_b" {
  model             = "5812-54X-O-AC-B"
  slug              = "edgecore-5812-54x-o-ac-b"
  part_number       = "5812-54X-O-AC-B"
  manufacturer_id   = netbox_manufacturer.edgecore.id
}

resource "netbox_device_type" "edgecore_5912_54_x_o_ac_f" {
  model             = "5912-54X-O-AC-F"
  slug              = "edgecore-5912-54x-o-ac-f"
  part_number       = "5912-54X-O-AC-F"
  manufacturer_id   = netbox_manufacturer.edgecore.id
}

resource "netbox_device_type" "edgecore_5912_54_xm_o_ac_f" {
  model             = "5912-54XM-O-AC-F"
  slug              = "edgecore-5912-54xm-o-ac-f"
  part_number       = "5912-54XM-O-AC-F"
  manufacturer_id   = netbox_manufacturer.edgecore.id
}

resource "netbox_device_type" "edgecore_7726_32_x_o" {
  model             = "7726-32X-O"
  slug              = "edgecore-7726-32x-o"
  part_number       = "FP3ZZ7632xxxx"
  manufacturer_id   = netbox_manufacturer.edgecore.id
}

resource "netbox_manufacturer" "eltex" {
  name = "Eltex"
  slug = "eltex"
}

resource "netbox_device_type" "eltex_mes_3348" {
  model             = "MES3348"
  slug              = "eltex-mes3348"
  part_number       = "MES3348"
  manufacturer_id   = netbox_manufacturer.eltex.id
}

resource "netbox_manufacturer" "en_genius" {
  name = "EnGenius"
  slug = "en-genius"
}

resource "netbox_device_type" "engenius_ews_1200_28_tfp" {
  model             = "EWS1200-28TFP"
  slug              = "engenius-ews1200-28tfp"
  part_number       = "EWS1200-28TFP"
  manufacturer_id   = netbox_manufacturer.en_genius.id
}

resource "netbox_device_type" "engenius_ews_360_ap" {
  model             = "EWS360AP"
  slug              = "engenius-ews360ap"
  part_number       = "EWS360AP"
  manufacturer_id   = netbox_manufacturer.en_genius.id
}

resource "netbox_device_type" "engenius_ews_5912_fp" {
  model             = "EWS5912FP"
  slug              = "engenius-ews5912fp"
  part_number       = "EWS5912FP"
  manufacturer_id   = netbox_manufacturer.en_genius.id
}

resource "netbox_manufacturer" "ericsson" {
  name = "Ericsson"
  slug = "ericsson"
}

resource "netbox_device_type" "ericsson_r_6672" {
  model             = "R6672"
  slug              = "ericsson-r6672"
  part_number       = "R6672"
  manufacturer_id   = netbox_manufacturer.ericsson.id
}

resource "netbox_manufacturer" "extreme_networks" {
  name = "Extreme Networks"
  slug = "extreme-networks"
}

resource "netbox_device_type" "extreme_networks_5520_12_mw_36_w_fabricengine" {
  model             = "5520-12MW-36W-FabricEngine"
  slug              = "extreme-networks-5520-12mw-36w-fabricengine"
  part_number       = "5520-12MW-36W-FabricEngine"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_5520_24_t" {
  model             = "5520-24T"
  slug              = "extreme-networks-5520-24t"
  part_number       = "5520-24T"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_715_w_ac_psu_fb" {
  model             = "715W AC PSU FB"
  slug              = "extreme-networks-715w-ac-psu-fb"
  part_number       = "10951"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_extremewireless_ap_30" {
  model             = "ExtremeWireless AP30"
  slug              = "extreme-networks-extremewireless-ap30"
  part_number       = "AP30"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_mlxe_16_mr_2_ac" {
  model             = "BR-MLXE-16-MR2-AC"
  slug              = "extreme-networks-br-mlxe-16-mr2-ac"
  part_number       = "BR-MLXE-16-MR2-AC"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_mlxe_32_mr_2_ac" {
  model             = "BR-MLXE-32-MR2-AC"
  slug              = "extreme-networks-br-mlxe-32-mr2-ac"
  part_number       = "BR-MLXE-32-MR2-AC"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_mlxe_4_mr_2_ac" {
  model             = "BR-MLXE-4-MR2-AC"
  slug              = "extreme-networks-br-mlxe-4-mr2-ac"
  part_number       = "BR-MLXE-4-MR2-AC"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_mlxe_8_mr_2_ac" {
  model             = "BR-MLXE-8-MR2-AC"
  slug              = "extreme-networks-br-mlxe-8-mr2-ac"
  part_number       = "BR-MLXE-8-MR2-AC"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9140_48_v" {
  model             = "BR-SLX-9140-48V"
  slug              = "extreme-networks-br-slx-9140-48v"
  part_number       = "BR-SLX-9140-48V"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9150_48_xt" {
  model             = "BR-SLX-9150-48XT"
  slug              = "extreme-networks-br-slx-9150-48xt"
  part_number       = "BR-SLX-9150-48XT"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9150_48_y" {
  model             = "BR-SLX-9150-48Y"
  slug              = "extreme-networks-br-slx-9150-48y"
  part_number       = "BR-SLX-9150-48Y"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9240_32_c" {
  model             = "BR-SLX-9240-32C"
  slug              = "extreme-networks-br-slx-9240-32c"
  part_number       = "BR-SLX-9240-32C"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9250_32_c" {
  model             = "BR-SLX-9250-32C"
  slug              = "extreme-networks-br-slx-9250-32c"
  part_number       = "BR-SLX-9250-32C"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9540_48_s" {
  model             = "BR-SLX-9540-48S"
  slug              = "extreme-networks-br-slx-9540-48s"
  part_number       = "BR-SLX-9540-48S"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9640_24_s_12_c" {
  model             = "BR-SLX-9640-24S-12C"
  slug              = "extreme-networks-br-slx-9640-24s-12c"
  part_number       = "BR-SLX-9640-24S-12C"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9740_40_c" {
  model             = "BR-SLX-9740-40C"
  slug              = "extreme-networks-br-slx-9740-40c"
  part_number       = "BR-SLX-9740-40C"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_br_slx_9740_80_c" {
  model             = "BR-SLX-9740-80C"
  slug              = "extreme-networks-br-slx-9740-80c"
  part_number       = "BR-SLX-9740-80C"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_vsp_7254_xsq" {
  model             = "VSP-7254XSQ"
  slug              = "extreme-networks-vsp-7254xsq"
  part_number       = "VSP-7254XSQ"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_vsp_7400_48_y_8_c" {
  model             = "VSP-7400-48Y-8C"
  slug              = "extreme-networks-vsp-7400-48y-8c"
  part_number       = "VSP-7400-48Y-8C"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_440_g_2_24_p_10_ge_4" {
  model             = "X440-G2-24p-10GE4"
  slug              = "extreme-networks-x440-g2-24p-10ge4"
  part_number       = "16533"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_440_g_2_24_t_10_ge_4" {
  model             = "X440-G2-24t-10GE4"
  slug              = "extreme-networks-x440-g2-24t-10ge4"
  part_number       = "16532"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_440_g_2_24_x_10_ge_4" {
  model             = "X440-G2-24x-10GE4"
  slug              = "extreme-networks-x440-g2-24x-10ge4"
  part_number       = "16538"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_450_g_2_48_p_10_ge_4" {
  model             = "X450-G2-48p-10GE4"
  slug              = "extreme-networks-x450-g2-48p-10ge4"
  part_number       = "16179"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_460_g_2_24_t_10_ge_4" {
  model             = "X460-G2-24t-10GE4"
  slug              = "extreme-networks-x460-g2-24t-10ge4"
  part_number       = "16701"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_460_g_2_48_p_10_ge_4" {
  model             = "X460-G2-48p-10GE4"
  slug              = "extreme-networks-x460-g2-48p-10ge4"
  part_number       = "16704"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_device_type" "extreme_networks_x_460_g_2_vim_2_x" {
  model             = "X460-G2 VIM-2x"
  slug              = "extreme-networks-x460-g2-vim-2x"
  part_number       = "16711"
  manufacturer_id   = netbox_manufacturer.extreme_networks.id
}

resource "netbox_manufacturer" "f_5" {
  name = "F5"
  slug = "f-5"
}

resource "netbox_device_type" "f_5_big_ip_2000" {
  model             = "BIG-IP 2000"
  slug              = "f5-big-ip-2000"
  part_number       = "2000"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_3900" {
  model             = "BIG-IP 3900"
  slug              = "f5-big-ip-3900"
  part_number       = "3900"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_4200_v" {
  model             = "BIG-IP 4200v"
  slug              = "f5-big-ip-4200v"
  part_number       = "4200v"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_5200_v" {
  model             = "BIG-IP 5200v"
  slug              = "f5-big-ip-5200v"
  part_number       = "5200v"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_5250_v" {
  model             = "BIG-IP 5250v"
  slug              = "f5-big-ip-5250v"
  part_number       = "5250v"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_vpr_c_2400" {
  model             = "BIG-IP VPR-C2400"
  slug              = "f5-big-ip-vpr-c2400"
  part_number       = "VPR-C2400"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_i_2600" {
  model             = "BIG-IP i2600"
  slug              = "f5-big-ip-i2600"
  part_number       = "i2600"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_i_2800" {
  model             = "BIG-IP i2800"
  slug              = "f5-big-ip-i2800"
  part_number       = "i2800"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_i_4600" {
  model             = "BIG-IP i4600"
  slug              = "f5-big-ip-i4600"
  part_number       = "i4600"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_i_4800" {
  model             = "BIG-IP i4800"
  slug              = "f5-big-ip-i4800"
  part_number       = "i4800"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_device_type" "f_5_big_ip_i_5800" {
  model             = "BIG-IP i5800"
  slug              = "f5-big-ip-i5800"
  part_number       = "i5800"
  manufacturer_id   = netbox_manufacturer.f_5.id
}

resource "netbox_manufacturer" "fs" {
  name = "FS"
  slug = "fs"
}

resource "netbox_device_type" "fs_fhd_1_ufce" {
  model             = "FHD-1UFCE"
  slug              = "fs-fhd-1ufce"
  part_number       = "FHD-1UFCE (#70361)"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fhd_2_ufce" {
  model             = "FHD-2UFCE"
  slug              = "fs-fhd-2ufce"
  part_number       = "FHD-2UFCE (#73205)"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fhd_fpp_5_drl" {
  model             = "FHD-FPP5DRL"
  slug              = "fs-fhd-fpp5drl"
  part_number       = "FHD-FPP5DRL (#72910)"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fhu_fpp_48_flcsmf" {
  model             = "FHU-FPP48FLCSMF"
  slug              = "fs-fhu-fpp48flcsmf"
  part_number       = "FHU-FPP48FLCSMF (#35530)"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fhx_1_ufsp" {
  model             = "FHX-1UFSP"
  slug              = "fs-fhx-1ufsp"
  part_number       = "FHX-1UFSP (#68911) (discontinued)"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_1_ufmx_n" {
  model             = "FMU-1UFMX-N"
  slug              = "fs-fmu-1ufmx-n"
  part_number       = "FMU-1UFMX-N"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_c_182761_m" {
  model             = "FMU-C182761M"
  slug              = "fs-fmu-c182761m"
  part_number       = "FMU-C182761M"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_d_402160_m" {
  model             = "FMU-D402160M"
  slug              = "fs-fmu-d402160m"
  part_number       = "FMU-D402160M"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_mc_042733" {
  model             = "FMU-MC042733"
  slug              = "fs-fmu-mc042733"
  part_number       = "42972"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_mc_082745" {
  model             = "FMU-MC082745"
  slug              = "fs-fmu-mc082745"
  part_number       = "42937"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_mc_084761_em_3" {
  model             = "FMU-MC084761EM3"
  slug              = "fs-fmu-mc084761em3"
  part_number       = "72428"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_fmu_md_085360_em_3" {
  model             = "FMU-MD085360EM3"
  slug              = "fs-fmu-md085360em3"
  part_number       = "FMU-MD085360EM3"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_ies_3110_8_tf_r" {
  model             = "IES3110-8TF-R"
  slug              = "fs-ies3110-8tf-r"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_n_5860_48_sc" {
  model             = "N5860-48SC"
  slug              = "fs-n5860-48sc"
  part_number       = "n5860-48sc"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_pdu_2_pe_42_i_vmo" {
  model             = "PDU-2PE42I-VMO"
  slug              = "fs-pdu-2pe42i-vmo"
  part_number       = "PDU-2PE42I-VMO (#74156)"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_s_3150_8_t_2_fp" {
  model             = "S3150-8T2FP"
  slug              = "fs-s3150-8t2fp"
  part_number       = "S3150-8T2FP"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_s_3800_24_f_4_s" {
  model             = "S3800-24F4S"
  slug              = "fs-s3800-24f4s"
  part_number       = "s3800-24f4s"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_s_3900_24_t_4_s_r" {
  model             = "S3900-24T4S-R"
  slug              = "fs-s3900-24t4s-r"
  part_number       = "s3900-24t4s-r"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_s_3900_24_t_4_s" {
  model             = "S3900-24T4S"
  slug              = "fs-s3900-24t4s"
  part_number       = "s3900-24t4s"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_s_3900_48_t_6_s_r" {
  model             = "S3900-48T6S-R"
  slug              = "fs-s3900-48t6s-r"
  part_number       = "s3900-48t6s-r"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_device_type" "fs_s_5860_20_sq" {
  model             = "S5860-20SQ"
  slug              = "fs-s5860-20sq"
  part_number       = "s5860-20sq"
  manufacturer_id   = netbox_manufacturer.fs.id
}

resource "netbox_manufacturer" "factor_ts" {
  name = "Factor-TS"
  slug = "factor-ts"
}

resource "netbox_device_type" "factor_ts_dionis_dps_2004" {
  model             = "Dionis DPS-2004"
  slug              = "factor-ts-dionis-dps-2004"
  part_number       = "RM-4E"
  manufacturer_id   = netbox_manufacturer.factor_ts.id
}

resource "netbox_device_type" "factor_ts_dionis_dps_3010_rm_6_e_4_s" {
  model             = "Dionis DPS-3010"
  slug              = "factor-ts-dionis-dps-3010-rm-6e-4s"
  part_number       = "RM-6E-4S"
  manufacturer_id   = netbox_manufacturer.factor_ts.id
}

resource "netbox_manufacturer" "fire_brick" {
  name = "FireBrick"
  slug = "fire-brick"
}

resource "netbox_device_type" "firebrick_fb_2900" {
  model             = "FB2900"
  slug              = "firebrick-fb2900"
  part_number       = "FB2900"
  manufacturer_id   = netbox_manufacturer.fire_brick.id
}

resource "netbox_device_type" "firebrick_fb_6202" {
  model             = "FB6202"
  slug              = "firebrick-fb6202"
  part_number       = "FB6202"
  manufacturer_id   = netbox_manufacturer.fire_brick.id
}

resource "netbox_manufacturer" "fortinet" {
  name = "Fortinet"
  slug = "fortinet"
}

resource "netbox_device_type" "fortinet_fex_40_d" {
  model             = "FortiExtender 40D"
  slug              = "fortinet-fex-40d"
  part_number       = "FEX-40D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_100_d" {
  model             = "FortiGate 100D"
  slug              = "fortinet-fg-100d"
  part_number       = "FG-100D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_100_e" {
  model             = "FortiGate 100E"
  slug              = "fortinet-fg-100e"
  part_number       = "FG-100E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_100_ef" {
  model             = "FortiGate 100EF"
  slug              = "fortinet-fg-100ef"
  part_number       = "FG-100EF"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_100_f" {
  model             = "FortiGate 100F"
  slug              = "fortinet-fg-100f"
  part_number       = "FG-100F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_101_f" {
  model             = "FortiGate 101F"
  slug              = "fortinet-fg-101f"
  part_number       = "FG-101F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_1100_e" {
  model             = "FortiGate 1100E"
  slug              = "fortinet-fg-1100e"
  part_number       = "FG-1100E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_1101_e" {
  model             = "FortiGate 1101E"
  slug              = "fortinet-fg-1101e"
  part_number       = "FG-1101E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_140_e_poe" {
  model             = "FortiGate 140E-POE"
  slug              = "fortinet-fg-140e-poe"
  part_number       = "FG-140E-POE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_1500_d" {
  model             = "FortiGate 1500D"
  slug              = "fortinet-fg-1500d"
  part_number       = "FG-1500D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_1500_dt" {
  model             = "FortiGate 1500DT"
  slug              = "fortinet-fg-1500dt"
  part_number       = "FG-1500DT"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_1800_f" {
  model             = "FortiGate 1800F"
  slug              = "fortinet-fg-1800f"
  part_number       = "FG-1800F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_200_d" {
  model             = "FortiGate 200D"
  slug              = "fortinet-fg-200d"
  part_number       = "FG-200D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_200_e" {
  model             = "FortiGate 200E"
  slug              = "fortinet-fg-200e"
  part_number       = "FG-200E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_200_f" {
  model             = "FortiGate 200F"
  slug              = "fortinet-fg-200f"
  part_number       = "FG-200F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_201_e" {
  model             = "FortiGate 201E"
  slug              = "fortinet-fg-201e"
  part_number       = "FG-201E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_2200_e" {
  model             = "FortiGate 2200E"
  slug              = "fortinet-fg-2200e"
  part_number       = "FG-2200E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_2600_f" {
  model             = "FortiGate 2600F"
  slug              = "fortinet-fg-2600f"
  part_number       = "FG-2600F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_3000_d" {
  model             = "FortiGate 3000D"
  slug              = "fortinet-fg-3000d"
  part_number       = "FG-3000D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_300_c" {
  model             = "FortiGate 300C"
  slug              = "fortinet-fg-300c"
  part_number       = "FG-300C"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_300_e" {
  model             = "FortiGate 300E"
  slug              = "fortinet-fg-300e"
  part_number       = "FG-300E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_301_e" {
  model             = "FortiGate 301E"
  slug              = "fortinet-fg-301e"
  part_number       = "FG-301E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_3300_e" {
  model             = "FortiGate 3300E"
  slug              = "fortinet-fg-3300e"
  part_number       = "FG-3300E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_3301_e" {
  model             = "FortiGate 3301E"
  slug              = "fortinet-fg-3301e"
  part_number       = "FG-3301E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_400_e" {
  model             = "FortiGate 400E"
  slug              = "fortinet-fg-400e"
  part_number       = "FG-400E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_40_f" {
  model             = "FortiGate 40F"
  slug              = "fortinet-fg-40f"
  part_number       = "FG-40F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_500_e" {
  model             = "FortiGate 500E"
  slug              = "fortinet-fg-500e"
  part_number       = "FG-500E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_50_e" {
  model             = "FortiGate 50E"
  slug              = "fortinet-fg-50e"
  part_number       = "FG-50E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_600_d" {
  model             = "FortiGate-600D"
  slug              = "fortinet-fg-600d"
  part_number       = "FG-600D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_600_e" {
  model             = "FortiGate 600E"
  slug              = "fortinet-fg-600e"
  part_number       = "FG-600E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_600_f" {
  model             = "FortiGate 600F"
  slug              = "fortinet-fg-600f"
  part_number       = "FG-600F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_601_e" {
  model             = "FortiGate 601E"
  slug              = "fortinet-fg-601e"
  part_number       = "FG-601E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_601_f" {
  model             = "FortiGate 601F"
  slug              = "fortinet-fg-601f"
  part_number       = "FG-601F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_60_d" {
  model             = "FortiGate 60D"
  slug              = "fortinet-fg-60d"
  part_number       = "FG-60D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_60_e" {
  model             = "FortiGate 60E"
  slug              = "fortinet-fg-60e"
  part_number       = "FG-60E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_60_f" {
  model             = "FortiGate 60F"
  slug              = "fortinet-fg-60f"
  part_number       = "FG-60F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_80_e_poe" {
  model             = "FortiGate 80E-POE"
  slug              = "fortinet-fg-80e-poe"
  part_number       = "FG-80E-POE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_80_e" {
  model             = "FortiGate 80E"
  slug              = "fortinet-fg-80e"
  part_number       = "FG-80E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_80_f" {
  model             = "FortiGate 80F"
  slug              = "fortinet-fg-80f"
  part_number       = "FG-80F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_81_e_poe" {
  model             = "FortiGate 81E-POE"
  slug              = "fortinet-fg-81e-poe"
  part_number       = "FG-81E-POE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_81_e" {
  model             = "FortiGate 81E"
  slug              = "fortinet-fg-81e"
  part_number       = "FG-81E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_81_f" {
  model             = "FortiGate 81F"
  slug              = "fortinet-fg-81f"
  part_number       = "FG-81F"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fg_90_d" {
  model             = "FortiGate 90D"
  slug              = "fortinet-fg-90d"
  part_number       = "FG-90D"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fs_1048_e" {
  model             = "FortiSwitch 1048E"
  slug              = "fortinet-fs-1048e"
  part_number       = "FS-1048E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fs_248_e_fpoe" {
  model             = "FortiSwitch 248E-FPOE"
  slug              = "fortinet-fs-248e-fpoe"
  part_number       = "FS-248E-FPOE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fs_424_e_fpoe" {
  model             = "FortiSwitch 424E-FPOE"
  slug              = "fortinet-fs-424e-fpoe"
  part_number       = "FS-424E-FPOE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fs_448_d_fpoe" {
  model             = "FortiSwitch 448D-FPOE"
  slug              = "fortinet-fs-448d-fpoe"
  part_number       = "FS-448D-FPOE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fs_448_d_poe" {
  model             = "FortiSwitch 448D-POE"
  slug              = "fortinet-fs-448d-poe"
  part_number       = "FS-448D-POE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fwb_2000_e" {
  model             = "FortiWeb 2000E"
  slug              = "fortinet-fwb-2000e"
  part_number       = "FWB-2000E"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_fs_224_e_poe" {
  model             = "FortiSwitch 224E-POE"
  slug              = "fortinet-fs-224e-poe"
  part_number       = "FS-224E-POE"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_device_type" "fortinet_sp_racktray_02" {
  model             = "SP-RACKTRAY-02"
  slug              = "fortinet-sp-racktray-02"
  part_number       = "SP-RACKTRAY-02"
  manufacturer_id   = netbox_manufacturer.fortinet.id
}

resource "netbox_manufacturer" "fujitsu" {
  name = "Fujitsu"
  slug = "fujitsu"
}

resource "netbox_device_type" "fujitsu_primergy_bx_2560_m_1" {
  model             = "Primergy BX2560 M1"
  slug              = "fujitsu-primergy-bx2560-m1"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_device_type" "fujitsu_primergy_bx_2560_m_2" {
  model             = "Primergy BX2560 M2"
  slug              = "fujitsu-primergy-bx2560-m2"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_device_type" "fujitsu_primergy_bx_924_s_4" {
  model             = "Primergy BX924 S4"
  slug              = "fujitsu-primergy-bx924-s4"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_device_type" "fujitsu_primergy_tx_100_s_1" {
  model             = "PRIMERGY TX100 S1"
  slug              = "fujitsu-primergy-tx100-s1"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_device_type" "fujitsu_primergy_tx_1310_m_1" {
  model             = "PRIMERGY TX1310 M1"
  slug              = "fujitsu-primergy-tx1310-m1"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_device_type" "fujitsu_primergy_tx_1310_m_3" {
  model             = "PRIMERGY TX1310 M3"
  slug              = "fujitsu-primergy-tx1310-m3"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_device_type" "fujitsu_primergy_tx_1330_m_4" {
  model             = "PRIMERGY TX1330 M4"
  slug              = "fujitsu-primergy-tx1330-m4"
  manufacturer_id   = netbox_manufacturer.fujitsu.id
}

resource "netbox_manufacturer" "generic" {
  name = "Generic"
  slug = "generic"
}

resource "netbox_device_type" "generic_24_port_utp_patch_panel_half_depth" {
  model             = "24-port UTP Patch Panel Half Depth"
  slug              = "generic-24-port-utp-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_24_port_utp_patch_panel" {
  model             = "24-port UTP Patch Panel"
  slug              = "generic-24-port-utp-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_48_port_utp_patch_panel_half_depth" {
  model             = "48-port UTP Patch Panel Half Depth"
  slug              = "generic-48-port-utp-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_48_port_utp_patch_panel" {
  model             = "48-port UTP Patch Panel"
  slug              = "generic-48-port-utp-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_lc_12_port_fiber_patch_panel_half_depth" {
  model             = "LC-12-port Fiber Patch Panel Half Depth"
  slug              = "generic-lc-12-port-fiber-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_lc_12_port_fiber_patch_panel" {
  model             = "LC-12-port Fiber Patch Panel"
  slug              = "generic-lc-12-port-fiber-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_lc_24_port_fiber_patch_panel_half_depth" {
  model             = "LC-24-port Fiber Patch Panel Half Depth"
  slug              = "generic-lc-24-port-fiber-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_lc_24_port_fiber_patch_panel" {
  model             = "LC-24-port Fiber Patch Panel"
  slug              = "generic-lc-24-port-fiber-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_lc_48_port_fiber_patch_panel_half_depth" {
  model             = "LC-48-port Fiber Patch Panel Half Depth"
  slug              = "generic-lc-48-port-fiber-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_lc_48_port_fiber_patch_panel" {
  model             = "LC-48-port Fiber Patch Panel"
  slug              = "generic-lc-48-port-fiber-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_sc_24_double_port_fiber_patch_panel_half_depth" {
  model             = "SC-24-double-port Fiber Patch Panel Half Depth"
  slug              = "generic-sc-24-double-port-fiber-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_sc_24_double_port_fiber_patch_panel" {
  model             = "SC-24-double-port Fiber Patch Panel"
  slug              = "generic-sc-24-double-port-fiber-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_sc_24_port_fiber_patch_panel_half_depth" {
  model             = "SC-24-port Fiber Patch Panel Half Depth"
  slug              = "generic-sc-24-port-fiber-patch-panel-half-depth"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_sc_24_port_fiber_patch_panel" {
  model             = "SC-24-port Fiber Patch Panel"
  slug              = "generic-sc-24-port-fiber-patch-panel"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_cable_management_panel_1_ru" {
  model             = "cable-management-panel-1ru"
  slug              = "generic-cable-management-panel-1ru"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_cable_management_panel_2_ru" {
  model             = "cable-management-panel-2ru"
  slug              = "generic-cable-management-panel-2ru"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_shelf_1_he" {
  model             = "shelf-1he"
  slug              = "generic-shelf-1he"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_shelf_2_he" {
  model             = "shelf-2he"
  slug              = "generic-shelf-2he"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_wall_box_2_utp_plugs" {
  model             = "Wall box, 2 UTP plugs"
  slug              = "generic-wall-box-2-utp-plugs"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_wall_box_3_utp_plugs" {
  model             = "Wall box, 3 UTP plugs"
  slug              = "generic-wall-box-3-utp-plugs"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_wall_box_4_utp_plugs" {
  model             = "Wall box, 4 UTP plugs"
  slug              = "generic-wall-box-4-utp-plugs"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_wall_box_6_utp_plugs" {
  model             = "Wall box, 6 UTP plugs"
  slug              = "generic-wall-box-6-utp-plugs"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_device_type" "generic_test_1000" {
  model             = "TEST-1000"
  slug              = "generic-test-1000"
  manufacturer_id   = netbox_manufacturer.generic.id
}

resource "netbox_manufacturer" "hpe" {
  name = "HPE"
  slug = "hpe"
}

resource "netbox_device_type" "hpe_5406_r_zl_2" {
  model             = "5406R zl2"
  slug              = "hpe-5406r-zl2"
  part_number       = "J9850A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_5412_r_zl_2" {
  model             = "5412R zl2"
  slug              = "hpe-5412r-zl2"
  part_number       = "J9851A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_alletra_6050" {
  model             = "Alletra 6050"
  slug              = "hpe-alletra-6050"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_10000_48_y_6_c_front_to_back" {
  model             = "Aruba 10000-48Y6C Front-to-Back"
  slug              = "hpe-aruba-10000-48y6c-front-to-back"
  part_number       = "R8P13A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_10000_48_y_6_c_back_to_front" {
  model             = "Aruba 10000-48Y6C Back-to-Front"
  slug              = "hpe-aruba-10000-48y6c-back-to-front"
  part_number       = "R8P14A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_24_g_poe_195_w" {
  model             = "Aruba 1930 24G PoE 195W"
  slug              = "hpe-aruba-1930-24g-poe-195w"
  part_number       = "JL683B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_24_g_poe_370_w" {
  model             = "Aruba 1930 24G PoE 370W"
  slug              = "hpe-aruba-1930-24g-poe-370w"
  part_number       = "JL684B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_24_g" {
  model             = "Aruba 1930 24G"
  slug              = "hpe-aruba-1930-24g"
  part_number       = "JL682A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_48_g_poe" {
  model             = "Aruba 1930 48G PoE"
  slug              = "hpe-aruba-1930-48g-poe"
  part_number       = "JL686B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_48_g" {
  model             = "Aruba 1930 48G"
  slug              = "hpe-aruba-1930-48g"
  part_number       = "JL685A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_8_g_poe" {
  model             = "Aruba 1930 8G PoE"
  slug              = "hpe-aruba-1930-8g-poe"
  part_number       = "JL681A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_1930_8_g" {
  model             = "Aruba 1930 8G"
  slug              = "hpe-aruba-1930-8g"
  part_number       = "JL680A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_24_poep" {
  model             = "Aruba 2530-24-PoE+"
  slug              = "hpe-aruba-2530-24-poep"
  part_number       = "J9779A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_24" {
  model             = "Aruba 2530-24"
  slug              = "hpe-aruba-2530-24"
  part_number       = "J9782A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_24_g_poep" {
  model             = "Aruba 2530-24G-PoE+"
  slug              = "hpe-aruba-2530-24g-poep"
  part_number       = "J9773A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_24_g" {
  model             = "Aruba 2530-24G"
  slug              = "hpe-aruba-2530-24g"
  part_number       = "J9776A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_48_poep" {
  model             = "Aruba 2530-48-PoE+"
  slug              = "hpe-aruba-2530-48-poep"
  part_number       = "J9778A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_48" {
  model             = "Aruba 2530-48"
  slug              = "hpe-aruba-2530-48"
  part_number       = "J9781A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_48_g_poep" {
  model             = "Aruba 2530-48G-PoE+"
  slug              = "hpe-aruba-2530-48g-poep"
  part_number       = "J9772A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_48_g" {
  model             = "Aruba 2530-48G"
  slug              = "hpe-aruba-2530-48g"
  part_number       = "J9775A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_8_poep" {
  model             = "Aruba 2530-8-PoE+"
  slug              = "hpe-aruba-2530-8-poep"
  part_number       = "J9780A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_8" {
  model             = "Aruba 2530-8"
  slug              = "hpe-aruba-2530-8"
  part_number       = "J9783A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_8_g_poep" {
  model             = "Aruba 2530-8G-PoE+"
  slug              = "hpe-aruba-2530-8g-poep"
  part_number       = "J9774A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2530_8_g" {
  model             = "Aruba 2530-8G"
  slug              = "hpe-aruba-2530-8g"
  part_number       = "J9777A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2540_24_g_4_sfpp" {
  model             = "Aruba 2540-24G-4SFP+"
  slug              = "hpe-aruba-2540-24g-4sfpp"
  part_number       = "JL354A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2540_48_g_4_sfpp" {
  model             = "Aruba 2540-48G-4SFP+"
  slug              = "hpe-aruba-2540-48g-4sfpp"
  part_number       = "JL355A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2620_24_poep" {
  model             = "Aruba 2620-24-PoE+"
  slug              = "hpe-aruba-2620-24-poep"
  part_number       = "J9625A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2620_24" {
  model             = "Aruba 2620-24"
  slug              = "hpe-aruba-2620-24"
  part_number       = "J9623A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2620_48" {
  model             = "Aruba 2620-48"
  slug              = "hpe-aruba-2620-48"
  part_number       = "J9626A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2920_24_g_poep" {
  model             = "Aruba 2920-24G-PoE+"
  slug              = "hpe-aruba-2920-24g-poep"
  part_number       = "9727AJ"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2920_24_g" {
  model             = "Aruba 2920-24G"
  slug              = "hpe-aruba-2920-24g"
  part_number       = "J9726A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2920_48_g_poep" {
  model             = "Aruba 2920-48G-PoE+"
  slug              = "hpe-aruba-2920-48g-poep"
  part_number       = "J9729A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2920_48_g" {
  model             = "Aruba 2920-48G"
  slug              = "hpe-aruba-2920-48g"
  part_number       = "J9728A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_f_24_g_4_sfp" {
  model             = "Aruba 2930F-24G-4SFP"
  slug              = "hpe-aruba-2930f-24g-4sfp"
  part_number       = "JL259A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_f_24_g_4_sfpp" {
  model             = "Aruba 2930F-24G-4SFP+"
  slug              = "hpe-aruba-2930f-24g-4sfpp"
  part_number       = "JL253A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_f_24_g_poep_4_sfp" {
  model             = "Aruba 2930F-24G-POE+-4SFP"
  slug              = "hpe-aruba-2930f-24g-poep-4sfp"
  part_number       = "JL261A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_f_24_g_poep_4_sfpp" {
  model             = "Aruba 2930F-24G-PoE+-4SFP+"
  slug              = "hpe-aruba-2930f-24g-poep-4sfpp"
  part_number       = "JL255A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_f_48_g_4_sfpp" {
  model             = "Aruba 2930F-48G-4SFP+"
  slug              = "hpe-aruba-2930f-48g-4sfpp"
  part_number       = "JL254A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_f_48_g_poep_4_sfpp" {
  model             = "Aruba 2930F-48G-PoE+-4SFP+"
  slug              = "hpe-aruba-2930f-48g-poep-4sfpp"
  part_number       = "JL256ACM"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_m_24_g" {
  model             = "Aruba 2930M-24G"
  slug              = "hpe-aruba-2930m-24g"
  part_number       = "JL319A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_m_48_g_poep" {
  model             = "Aruba 2930M-48G-POE+"
  slug              = "hpe-aruba-2930m-48g-poep"
  part_number       = "JL322A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_2930_m_48_g" {
  model             = "Aruba 2930M-48G"
  slug              = "hpe-aruba-2930m-48g"
  part_number       = "JL321A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_3810_m_24_g_1_slot_switch" {
  model             = "Aruba 3810M 24G 1-slot Switch"
  slug              = "hpe-aruba-3810m-24g-1-slot-switch"
  part_number       = "JL071A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_3810_m_40_g_8_sr" {
  model             = "Aruba 3810M-40G-8SR"
  slug              = "hpe-aruba-3810m-40g-8sr"
  part_number       = "JL076A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_3810_m_48_g_poep_1_slot" {
  model             = "Aruba 3810M 48G PoeP 1-slot"
  slug              = "hpe-aruba-3810m-48g-poep-1-slot"
  part_number       = "JL074A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_5406_r_zl_2" {
  model             = "Aruba 5406R zl2"
  slug              = "hpe-aruba-5406r-zl2"
  part_number       = "J9821A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_5412_r_zl_2" {
  model             = "Aruba 5412R zl2"
  slug              = "hpe-aruba-5412r-zl2"
  part_number       = "J9822A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6000_12_g_poe_4_2_sfp_139_w" {
  model             = "Aruba 6000-12G-POE4-2SFP 139W"
  slug              = "hpe-aruba-6000-12g-poe4-2sfp-139w"
  part_number       = "R8N89A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6000_24_g_poe_4_4_sfp_370_w" {
  model             = "Aruba 6000-24G-POE4-4SFP 370W"
  slug              = "hpe-aruba-6000-24g-poe4-4sfp-370w"
  part_number       = "R8N87A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6000_24_g_4_sfp" {
  model             = "Aruba 6000-24G-4SFP"
  slug              = "hpe-aruba-6000-24g-4sfp"
  part_number       = "R8N88A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6000_48_g_poe_4_4_sfp_370_w" {
  model             = "Aruba 6000-48G-POE4-4SFP 370W"
  slug              = "hpe-aruba-6000-48g-poe4-4sfp-370w"
  part_number       = "R8N85A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6000_48_g_4_sfp" {
  model             = "Aruba 6000-48G-4SFP"
  slug              = "hpe-aruba-6000-48g-4sfp"
  part_number       = "R8N86A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6100_12_g_poe_4_2_sfpp_139_w" {
  model             = "Aruba 6100-12G-POE4-2SFP+ 139W"
  slug              = "hpe-aruba-6100-12g-poe4-2sfpp-139w"
  part_number       = "JL679A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6100_24_g_4_sfpp" {
  model             = "Aruba 6100-24G-4SFP+"
  slug              = "hpe-aruba-6100-24g-4sfpp"
  part_number       = "JL678A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6100_24_g_poe_4_4_sfpp_370_w" {
  model             = "Aruba 6100-24G-POE4-4SFP+ 370W"
  slug              = "hpe-aruba-6100-24g-poe4-4sfpp-370w"
  part_number       = "JL677A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6100_48_g_4_sfpp" {
  model             = "Aruba 6100-48G-4SFP+"
  slug              = "hpe-aruba-6100-48g-4sfpp"
  part_number       = "JL675A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6100_48_g_poe_4_4_sfpp_370_w" {
  model             = "Aruba 6100-48G-POE4-4SFP+ 370W"
  slug              = "hpe-aruba-6100-48g-poe4-4sfpp-370w"
  part_number       = "JL675A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6200_f_24_g_4_sfpp" {
  model             = "Aruba 6200F-24G-4SFP+"
  slug              = "hpe-aruba-6200f-24g-4sfpp"
  part_number       = "JL724A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6200_f_24_g_poe_4_4_sfpp_370_w" {
  model             = "Aruba 6200F-24G-POE4-4SFP+ 370W"
  slug              = "hpe-aruba-6200f-24g-poe4-4sfpp-370w"
  part_number       = "JL725A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6200_f_48_g_4_sfpp" {
  model             = "Aruba 6200F-48G-4SFP+"
  slug              = "hpe-aruba-6200f-48g-4sfpp"
  part_number       = "JL726A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6200_f_48_g_poe_4_4_sfpp_370_w" {
  model             = "Aruba 6200F-48G-POE4-4SFP+ 370W"
  slug              = "hpe-aruba-6200f-48g-poe4-4sfpp-370w"
  part_number       = "JL727A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6200_f_48_g_poe_4_4_sfpp_740_w" {
  model             = "Aruba 6200F-48G-POE4-4SFP+ 740W"
  slug              = "hpe-aruba-6200f-48g-poe4-4sfpp-740w"
  part_number       = "JL728A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_f_24_g_poe_4_4_sfp_56" {
  model             = "Aruba 6300F-24G-POE4-4SFP56"
  slug              = "hpe-aruba-6300f-24g-poe4-4sfp56"
  part_number       = "JL666A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_f_24_g_4_sfp_56" {
  model             = "Aruba 6300F-24G-4SFP56"
  slug              = "hpe-aruba-6300f-24g-4sfp56"
  part_number       = "JL668A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_f_48_g_poe_4_4_sfp_56" {
  model             = "Aruba 6300F-48G-POE4-4SFP56"
  slug              = "hpe-aruba-6300f-48g-poe4-4sfp56"
  part_number       = "JL665A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_f_48_g_4_sfp_56" {
  model             = "Aruba 6300F-48G-4SFP56"
  slug              = "hpe-aruba-6300f-48g-4sfp56"
  part_number       = "JL667A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_24_sfpp_4_sfp_56" {
  model             = "Aruba 6300M-24SFPP-4SFP56"
  slug              = "hpe-aruba-6300m-24sfpp-4sfp56"
  part_number       = "JL658A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_24_gsr_poe_6_4_sfp_56" {
  model             = "Aruba 6300M-24GSR-POE6-4SFP56"
  slug              = "hpe-aruba-6300m-24gsr-poe6-4sfp56"
  part_number       = "JL660A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_24_g_poe_4_4_sfp_56" {
  model             = "Aruba 6300M-24G-POE4-4SFP56"
  slug              = "hpe-aruba-6300m-24g-poe4-4sfp56"
  part_number       = "JL662A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_24_g_4_sfp_56" {
  model             = "Aruba 6300M-24G-4SFP56"
  slug              = "hpe-aruba-6300m-24g-4sfp56"
  part_number       = "JL664A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_48_gsr_poe_6_4_sfp_56" {
  model             = "Aruba 6300M-48GSR-POE6-4SFP56"
  slug              = "hpe-aruba-6300m-48gsr-poe6-4sfp56"
  part_number       = "JL659A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_48_g_poe_4_4_sfp_56" {
  model             = "Aruba 6300M-48G-POE4-4SFP56"
  slug              = "hpe-aruba-6300m-48g-poe4-4sfp56"
  part_number       = "JL661A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_6300_m_48_g_4_sfp_56" {
  model             = "Aruba 6300M-48G-4SFP56"
  slug              = "hpe-aruba-6300m-48g-4sfp56"
  part_number       = "JL663A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7005" {
  model             = "Aruba 7005"
  slug              = "hpe-aruba-7005"
  part_number       = "JW634A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7010" {
  model             = "Aruba 7010"
  slug              = "hpe-aruba-7010"
  part_number       = "JW679A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7030" {
  model             = "Aruba 7030"
  slug              = "hpe-aruba-7030"
  part_number       = "JW687A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7205" {
  model             = "Aruba 7205"
  slug              = "hpe-aruba-7205"
  part_number       = "JW736A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7210" {
  model             = "Aruba 7210"
  slug              = "hpe-aruba-7210"
  part_number       = "JW744A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7220" {
  model             = "Aruba 7220"
  slug              = "hpe-aruba-7220"
  part_number       = "JW752A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7240" {
  model             = "Aruba 7240"
  slug              = "hpe-aruba-7240"
  part_number       = "JW760A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_7280" {
  model             = "Aruba 7280"
  slug              = "hpe-aruba-7280"
  part_number       = "JX910A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8320_32_q" {
  model             = "Aruba 8320-32Q"
  slug              = "hpe-aruba-8320-32q"
  part_number       = "JL579A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8320_48_xf_6_q" {
  model             = "Aruba 8320-48XF6Q"
  slug              = "hpe-aruba-8320-48xf6q"
  part_number       = "JL479A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8320_48_xt_6_q" {
  model             = "Aruba 8320-48XT6Q"
  slug              = "hpe-aruba-8320-48xt6q"
  part_number       = "JL581A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8325_32_c_front_to_back" {
  model             = "Aruba 8325-32C Front-to-Back"
  slug              = "hpe-aruba-8325-32c-front-to-back"
  part_number       = "JL626A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8325_32_c_back_to_front" {
  model             = "Aruba 8325-32C Back-to-Front"
  slug              = "hpe-aruba-8325-32c-back-to-front"
  part_number       = "JL627A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8325_48_y_8_c_front_to_back" {
  model             = "Aruba 8325-48Y8C Front-to-Back"
  slug              = "hpe-aruba-8325-48y8c-front-to-back"
  part_number       = "JL624A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8325_48_y_8_c_back_to_front" {
  model             = "Aruba 8325-48Y8C Back-to-Front"
  slug              = "hpe-aruba-8325-48y8c-back-to-front"
  part_number       = "JL625A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_12_c_front_to_back" {
  model             = "Aruba 8360-12C Front-to-Back"
  slug              = "hpe-aruba-8360-12c-front-to-back"
  part_number       = "JL708C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_12_c_back_to_front" {
  model             = "Aruba 8360-12C Back-to-Front"
  slug              = "hpe-aruba-8360-12c-back-to-front"
  part_number       = "JL709C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_16_y_2_c_front_to_back" {
  model             = "Aruba 8360-16Y2C Front-to-Back"
  slug              = "hpe-aruba-8360-16y2c-front-to-back"
  part_number       = "JL702C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_16_y_2_c_back_to_front" {
  model             = "Aruba 8360-16Y2C Back-to-Front"
  slug              = "hpe-aruba-8360-16y2c-back-to-front"
  part_number       = "JL703C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_24_xf_2_c" {
  model             = "Aruba 8360-24XF2C"
  slug              = "hpe-aruba-8360-24xf2c"
  part_number       = "JL710C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8320_24_xf_2_c_back_to_front" {
  model             = "Aruba 8320-24XF2C Back-to-Front"
  slug              = "hpe-aruba-8320-24xf2c-back-to-front"
  part_number       = "JL711C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_32_y_4_c_front_to_back" {
  model             = "Aruba 8360-32Y4C Front-to-Back"
  slug              = "hpe-aruba-8360-32y4c-front-to-back"
  part_number       = "JL700C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_32_y_4_c_back_to_front" {
  model             = "Aruba 8360-32Y4C Back-to-Front"
  slug              = "hpe-aruba-8360-32y4c-back-to-front"
  part_number       = "JL701C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_48_xt_4_c_front_to_back" {
  model             = "Aruba 8360-48XT4C Front-to-Back"
  slug              = "hpe-aruba-8360-48xt4c-front-to-back"
  part_number       = "JL706C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_48_xt_4_c_back_to_front" {
  model             = "Aruba 8360-48XT4C Back-to-Front"
  slug              = "hpe-aruba-8360-48xt4c-back-to-front"
  part_number       = "JL707C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_48_y_6_c_front_to_back" {
  model             = "Aruba 8360-48Y6C Front-to-Back"
  slug              = "hpe-aruba-8360-48y6c-front-to-back"
  part_number       = "JL704C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_8360_48_y_6_c_back_to_front" {
  model             = "Aruba 8360-48Y6C Back-to-Front"
  slug              = "hpe-aruba-8360-48y6c-back-to-front"
  part_number       = "JL705C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_iap_205" {
  model             = "Aruba IAP-205"
  slug              = "hpe-aruba-iap-205"
  part_number       = "IAP-205"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_iap_304" {
  model             = "Aruba IAP-304"
  slug              = "hpe-aruba-iap-304"
  part_number       = "IAP-304"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_iap_305" {
  model             = "Aruba IAP-305"
  slug              = "hpe-aruba-iap-305"
  part_number       = "IAP-305"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_iap_315" {
  model             = "Aruba IAP-315"
  slug              = "hpe-aruba-iap-315"
  part_number       = "IAP-315"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ap_505" {
  model             = "Aruba AP-505"
  slug              = "hpe-aruba-ap-505"
  part_number       = "AP-505"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_iap_515" {
  model             = "Aruba IAP-515"
  slug              = "hpe-aruba-iap-515"
  part_number       = "IAP-515"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_3200" {
  model             = "Aruba 3200"
  slug              = "hpe-aruba-3200"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_3400" {
  model             = "Aruba 3400"
  slug              = "hpe-aruba-3400"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_mm_hw_10_k" {
  model             = "Aruba MM-HW-10K"
  slug              = "hpe-aruba-mm-hw-10k"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_mm_hw_1_k" {
  model             = "Aruba MM-HW-1K"
  slug              = "hpe-aruba-mm-hw-1k"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_mm_hw_5_k" {
  model             = "Aruba MM-HW-5K"
  slug              = "hpe-aruba-mm-hw-5k"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l_b_nm" {
  model             = "Aruba ec-l-b-nm"
  slug              = "hpe-aruba-ec-l-b-nm"
  part_number       = "201272"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l_b" {
  model             = "Aruba ec-l-b"
  slug              = "hpe-aruba-ec-l-b"
  part_number       = "201270"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l_h" {
  model             = "Aruba ec-l-h"
  slug              = "hpe-aruba-ec-l-h"
  part_number       = "201754"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l_nm" {
  model             = "Aruba ec-l-nm"
  slug              = "hpe-aruba-ec-l-nm"
  part_number       = "200887"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l_p_nm" {
  model             = "Aruba ec-l-p-nm"
  slug              = "hpe-aruba-ec-l-p-nm"
  part_number       = "201307"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l_p" {
  model             = "Aruba ec-l-p"
  slug              = "hpe-aruba-ec-l-p"
  part_number       = "201305"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_l" {
  model             = "Aruba ec-l"
  slug              = "hpe-aruba-ec-l"
  part_number       = "200883"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m_b_gen_2" {
  model             = "Aruba ec-m-b-gen2"
  slug              = "hpe-aruba-ec-m-b-gen2"
  part_number       = "201553"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m_b" {
  model             = "Aruba ec-m-b"
  slug              = "hpe-aruba-ec-m-b"
  part_number       = "200969"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m_h_ac" {
  model             = "Aruba ec-m-h-ac"
  slug              = "hpe-aruba-ec-m-h-ac"
  part_number       = "201762"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m_p_fips" {
  model             = "Aruba ec-m-p-fips"
  slug              = "hpe-aruba-ec-m-p-fips"
  part_number       = "201634"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m_p_gen_2" {
  model             = "Aruba ec-m-p-gen2"
  slug              = "hpe-aruba-ec-m-p-gen2"
  part_number       = "201552"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m_p" {
  model             = "Aruba ec-m-p"
  slug              = "hpe-aruba-ec-m-p"
  part_number       = "201274"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_m" {
  model             = "Aruba ec-m"
  slug              = "hpe-aruba-ec-m"
  part_number       = "200890"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_s_p_ac" {
  model             = "Aruba ec-s-p-ac"
  slug              = "hpe-aruba-ec-s-p-ac"
  part_number       = "201687"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_s_p_dc" {
  model             = "Aruba ec-s-p-dc"
  slug              = "hpe-aruba-ec-s-p-dc"
  part_number       = "201743"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_s" {
  model             = "Aruba ec-s"
  slug              = "hpe-aruba-ec-s"
  part_number       = "200877"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_us" {
  model             = "Aruba ec-us"
  slug              = "hpe-aruba-ec-us"
  part_number       = "201106"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_v" {
  model             = "Aruba ec-v"
  slug              = "hpe-aruba-ec-v"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_xs_fips" {
  model             = "Aruba ec-xs-fips"
  slug              = "hpe-aruba-ec-xs-fips"
  part_number       = "201447"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_xs_gen_2" {
  model             = "Aruba ec-xs-gen2"
  slug              = "hpe-aruba-ec-xs-gen2"
  part_number       = "201571"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_aruba_ec_xs" {
  model             = "Aruba ec-xs"
  slug              = "hpe-aruba-ec-xs"
  part_number       = "200889"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_bladesystem_c_7000" {
  model             = "BladeSystem c7000"
  slug              = "hpe-bladesystem-c7000"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5700_32_xgt_8_xg_2_qsfpp" {
  model             = "FlexFabric 5700-32XGT-8XG-2QSFP+"
  slug              = "hpe-flexfabric-5700-32xgt-8xg-2qsfpp"
  part_number       = "JG898A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5700_40_xg_2_qsfpp" {
  model             = "FlexFabric 5700-40XG-2QSFP+"
  slug              = "hpe-flexfabric-5700-40xg-2qsfpp"
  part_number       = "JG896A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5800_24_g" {
  model             = "FlexFabric 5800-24G"
  slug              = "hpe-flexfabric-5800-24g"
  part_number       = "JC100B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5800_48_g" {
  model             = "FlexFabric 5800-48G"
  slug              = "hpe-flexfabric-5800-48g"
  part_number       = "JC105B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5820_x_24_xg_sfpp" {
  model             = "FlexFabric 5820X-24XG-SFP+"
  slug              = "hpe-flexfabric-5820x-24xg-sfpp"
  part_number       = "JC102B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5920_af_24_xg" {
  model             = "FlexFabric 5920AF-24XG"
  slug              = "hpe-flexfabric-5920af-24xg"
  part_number       = "JG296A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexfabric_5945_2_slot" {
  model             = "FlexFabric 5945 2-slot"
  slug              = "hpe-flexfabric-5945-2-slot"
  part_number       = "JQ075A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_3600_24_poep_v_2_si" {
  model             = "FlexNetwork 3600 24 PoE+ v2 SI"
  slug              = "hpe-flexnetwork-3600-24-poep-v2-si"
  part_number       = "JG306C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_3600_24_v_2_si" {
  model             = "FlexNetwork 3600 24 v2 SI"
  slug              = "hpe-flexnetwork-3600-24-v2-si"
  part_number       = "JG304B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5130_24_g_4_sfpp_ei" {
  model             = "FlexNetwork 5130-24G-4SFP+ EI"
  slug              = "hpe-flexnetwork-5130-24g-4sfpp-ei"
  part_number       = "JG932A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5130_24_g_poep_4_sfpp_ei" {
  model             = "FlexNetwork 5130-24G-PoEP-4SFP+ EI"
  slug              = "hpe-flexnetwork-5130-24g-poep-4sfpp-ei"
  part_number       = "JG936A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5130_48_g_4_sfpp_1_slot_hi" {
  model             = "FlexNetwork 5130-48G-4SFP+-1-slot HI"
  slug              = "hpe-flexnetwork-5130-48g-4sfpp-1-slot-hi"
  part_number       = "JH324A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5130_48_g_4_sfpp_ei" {
  model             = "FlexNetwork 5130-48G-4SFP+ EI"
  slug              = "hpe-flexnetwork-5130-48g-4sfpp-ei"
  part_number       = "JG934A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5130_48_g_poep_4_sfpp_1_slot_hi" {
  model             = "FlexNetwork 5130-48G-POE+-4SFP+-1-slot HI"
  slug              = "hpe-flexnetwork-5130-48g-poep-4sfpp-1-slot-hi"
  part_number       = "JH326A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5130_48_g_poep_4_sfpp_ei" {
  model             = "FlexNetwork 5130-48G-PoE+-4SFP+ EI"
  slug              = "hpe-flexnetwork-5130-48g-poep-4sfpp-ei"
  part_number       = "JG937A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5510_24_g_sfp_4_sfpp_hi" {
  model             = "FlexNetwork 5510-24G-SFP-4SFP+ HI"
  slug              = "hpe-flexnetwork-5510-24g-sfp-4sfpp-hi"
  part_number       = "JH149A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5510_48_g_4_sfpp_hi" {
  model             = "FlexNetwork 5510-48G-4SFP+ HI"
  slug              = "hpe-flexnetwork-5510-48g-4sfpp-hi"
  part_number       = "JH146A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5510_48_g_poep_4_sfpp_hi" {
  model             = "FlexNetwork 5510-48G-PoE+-4SFP+ HI"
  slug              = "hpe-flexnetwork-5510-48g-poep-4sfpp-hi"
  part_number       = "JH148A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_5520_24_g_sfp_4_sfpp_hi" {
  model             = "FlexNetwork 5520-24G-SFP-4SFPP HI"
  slug              = "hpe-flexnetwork-5520-24g-sfp-4sfpp-hi"
  part_number       = "R8M27A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_flexnetwork_7503" {
  model             = "FlexNetwork 7503"
  slug              = "hpe-flexnetwork-7503"
  part_number       = "JD240C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_3100_16_v_2_ei" {
  model             = "3100-16 v2 EI"
  slug              = "hpe-3100-16-v2-ei"
  part_number       = "JD319B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_3100_24_ei" {
  model             = "3100-24 EI"
  slug              = "hpe-3100-24-ei"
  part_number       = "JD320A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_3100_24_poe_v_2_ei" {
  model             = "3100-24-PoE v2 EI"
  slug              = "hpe-3100-24-poe-v2-ei"
  part_number       = "JD313B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_3100_24_v_2_ei" {
  model             = "3100-24 v2 EI"
  slug              = "hpe-3100-24-v2-ei"
  part_number       = "JD320B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_3100_8_v_2_ei" {
  model             = "3100-8 v2 EI"
  slug              = "hpe-3100-8-v2-ei"
  part_number       = "JD318B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_5120_24_g_poep_ei" {
  model             = "5120-24G-PoE+ EI"
  slug              = "hpe-5120-24g-poep-ei"
  part_number       = "JG236A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_5120_48_g_ei" {
  model             = "5120-48G EI"
  slug              = "hpe-5120-48g-ei"
  part_number       = "JE069A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_5120_48_g_poep_ei" {
  model             = "5120-48G-PoE+ EI"
  slug              = "hpe-5120-48g-poep-ei"
  part_number       = "JG237A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_5500_24_g_4_sfp_hi" {
  model             = "HPE 5500-24G-4SFP HI"
  slug              = "hpe-5500-24g-4sfp-hi"
  part_number       = "JG311A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_officeconnect_1810_24_g" {
  model             = "OfficeConnect 1810-24G"
  slug              = "hpe-officeconnect-1810-24g"
  part_number       = "J9803A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_officeconnect_1820_48_g" {
  model             = "OfficeConnect 1820-48G"
  slug              = "hpe-officeconnect-1820-48g"
  part_number       = "J9981A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_officeconnect_1920_s_48_g_4_sfp_ppoep" {
  model             = "OfficeConnect 1920S-48G-4SFP-PPoE+"
  slug              = "hpe-officeconnect-1920s-48g-4sfp-ppoep"
  part_number       = "JL386A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_1700_24" {
  model             = "ProCurve 1700-24"
  slug              = "hpe-procurve-1700-24"
  part_number       = "J9080A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2510_24_a" {
  model             = "ProCurve 2510-24A"
  slug              = "hpe-procurve-2510-24a"
  part_number       = "J9019A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2510_24_b" {
  model             = "ProCurve 2510-24B"
  slug              = "hpe-procurve-2510-24b"
  part_number       = "J9019B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2510_g_48" {
  model             = "ProCurve 2510G-48"
  slug              = "hpe-procurve-2510g-48"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2524" {
  model             = "ProCurve 2524"
  slug              = "hpe-procurve-2524"
  part_number       = "J4813A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2610_24_poe" {
  model             = "ProCurve 2610-24-PoE"
  slug              = "hpe-procurve-2610-24-poe"
  part_number       = "J9087A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2610_24" {
  model             = "ProCurve 2610-24"
  slug              = "hpe-procurve-2610-24"
  part_number       = "J9085A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2610_48" {
  model             = "ProCurve 2610-48"
  slug              = "hpe-procurve-2610-48"
  part_number       = "J9088A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2626_j_4900_a" {
  model             = "ProCurve 2626 - J4900A"
  slug              = "hpe-procurve-2626-j4900a"
  part_number       = "J4900A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2626_j_4900_b" {
  model             = "ProCurve 2626 - J4900B"
  slug              = "hpe-procurve-2626-j4900b"
  part_number       = "J4900B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2626_j_4900_c" {
  model             = "ProCurve 2626 - J4900C"
  slug              = "hpe-procurve-2626-j4900c"
  part_number       = "J4900C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2650_j_4899_a" {
  model             = "ProCurve 2650 - J4899A"
  slug              = "hpe-procurve-2650-j4899a"
  part_number       = "J4899A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2650_j_4899_b" {
  model             = "ProCurve 2650 - J4899B"
  slug              = "hpe-procurve-2650-j4899b"
  part_number       = "J4899B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2650_j_4899_c" {
  model             = "ProCurve 2650 - J4899C"
  slug              = "hpe-procurve-2650-j4899c"
  part_number       = "J4899C"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2810_24_g" {
  model             = "ProCurve 2810-24G"
  slug              = "hpe-procurve-2810-24g"
  part_number       = "J9021A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2810_48_g" {
  model             = "ProCurve 2810-48G"
  slug              = "hpe-procurve-2810-48g"
  part_number       = "J9022A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2824" {
  model             = "ProCurve 2824"
  slug              = "hpe-procurve-2824"
  part_number       = "J4903A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_2910_al_24_g" {
  model             = "ProCurve 2910al-24G"
  slug              = "hpe-procurve-2910al-24g"
  part_number       = "J9145A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_3500_48_g_poe_yl" {
  model             = "ProCurve 3500-48G-PoE yl"
  slug              = "hpe-procurve-3500-48g-poe-yl"
  part_number       = "J8693A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_4202_vl_72_j_8772_a" {
  model             = "ProCurve 4202vl-72 - J8772A"
  slug              = "hpe-procurve-4202vl-72-j8772a"
  part_number       = "J8772A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_4202_vl_72_j_8772_b" {
  model             = "ProCurve 4202vl-72 - J8772B"
  slug              = "hpe-procurve-4202vl-72-j8772b"
  part_number       = "J8772B"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_4204_vl" {
  model             = "ProCurve 4204vl"
  slug              = "hpe-procurve-4204vl"
  part_number       = "J8770A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_4208_vl_96" {
  model             = "ProCurve 4208vl-96"
  slug              = "hpe-procurve-4208vl-96"
  part_number       = "J8775A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_4208_vl" {
  model             = "ProCurve 4208vl"
  slug              = "hpe-procurve-4208vl"
  part_number       = "J8773A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_5304_xl" {
  model             = "ProCurve 5304xl"
  slug              = "hpe-procurve-5304xl"
  part_number       = "J4850A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_5308_xl" {
  model             = "ProCurve 5308xl"
  slug              = "hpe-procurve-5308xl"
  part_number       = "J4819A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_5406_zl" {
  model             = "ProCurve 5406zl"
  slug              = "hpe-procurve-5406zl"
  part_number       = "J8697A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_6108" {
  model             = "ProCurve 6108"
  slug              = "hpe-procurve-6108"
  part_number       = "J4902A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_a_5800_24_g" {
  model             = "ProCurve A5800-24G"
  slug              = "hpe-procurve-a5800-24g"
  part_number       = "JC100A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_e_2510_24_g" {
  model             = "ProCurve E2510-24G"
  slug              = "hpe-procurve-e2510-24g"
  part_number       = "J9279A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_180_gen_6" {
  model             = "ProLiant DL180 Gen6"
  slug              = "hpe-proliant-dl180-gen6"
  part_number       = "590638-371"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_320_e_gen_8" {
  model             = "ProLiant DL320e Gen8"
  slug              = "hpe-proliant-dl320e-gen8"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_325_gen_10_plus_v_2" {
  model             = "ProLiant DL325 Gen10 Plus v2"
  slug              = "hpe-proliant-dl325-gen10-plus-v2"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_325_gen_10_plus" {
  model             = "ProLiant DL325 Gen10 Plus"
  slug              = "hpe-proliant-dl325-gen10-plus"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_325_gen_10" {
  model             = "ProLiant DL325 Gen10"
  slug              = "hpe-proliant-dl325-gen10"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_360_gen_10_plus" {
  model             = "ProLiant DL360 Gen10 Plus"
  slug              = "hpe-proliant-dl360-gen10-plus"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_360_gen_10" {
  model             = "ProLiant DL360 Gen10"
  slug              = "hpe-proliant-dl360-gen10"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_360_gen_7" {
  model             = "ProLiant DL360 Gen7"
  slug              = "hpe-proliant-dl360-gen7"
  part_number       = "579237-B21"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_360_gen_9" {
  model             = "ProLiant DL360 Gen9"
  slug              = "hpe-proliant-dl360-gen9"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_360_e_gen_8" {
  model             = "ProLiant DL360e Gen8"
  slug              = "hpe-proliant-dl360e-gen8"
  part_number       = "661189-B21"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_365_gen_11" {
  model             = "ProLiant DL365 Gen11"
  slug              = "hpe-proliant-dl365-gen11"
  part_number       = "P53933-B21"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_gen_10_plus" {
  model             = "ProLiant DL380 Gen10 Plus"
  slug              = "hpe-proliant-dl380-gen10-plus"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_gen_10" {
  model             = "ProLiant DL380 Gen10"
  slug              = "hpe-proliant-dl380-gen10"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_gen_5" {
  model             = "ProLiant DL380 Gen5"
  slug              = "hpe-proliant-dl380-gen5"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_gen_6" {
  model             = "ProLiant DL380 Gen6"
  slug              = "hpe-proliant-dl380-gen6"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_gen_7" {
  model             = "ProLiant DL380 Gen7"
  slug              = "hpe-proliant-dl380-gen7"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_gen_9" {
  model             = "ProLiant DL380 Gen9"
  slug              = "hpe-proliant-dl380-gen9"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_380_p_gen_8" {
  model             = "ProLiant DL380p Gen8"
  slug              = "hpe-proliant-dl380p-gen8"
  part_number       = "670524-001"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_560_gen_10" {
  model             = "ProLiant DL560 Gen10"
  slug              = "hpe-proliant-dl560-gen10"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_580_gen_10" {
  model             = "ProLiant DL580 Gen10"
  slug              = "hpe-proliant-dl580-gen10"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_dl_580_gen_9" {
  model             = "ProLiant DL580 Gen9"
  slug              = "hpe-proliant-dl580-gen9"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_ml_110_gen_10" {
  model             = "ProLiant ML110 Gen10"
  slug              = "hpe-proliant-ml110-gen10"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_ml_110_gen_9" {
  model             = "ProLiant ML110 Gen9"
  slug              = "hpe-proliant-ml110-gen9"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_proliant_ml_350_p_gen_8" {
  model             = "ProLiant ML350p Gen8"
  slug              = "hpe-proliant-ml350p-gen8"
  part_number       = "652063-B21"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_procurve_4104_gl" {
  model             = "ProCurve 4104GL"
  slug              = "hpe-procurve-4104gl"
  part_number       = "J4887A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_synergy_12000_frame" {
  model             = "Synergy 12000 Frame"
  slug              = "hpe-synergy-12000-frame"
  part_number       = "P06011-B21"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_synergy_480_gen_10" {
  model             = "Synergy 480 Gen10"
  slug              = "hpe-synergy-480-gen10"
  part_number       = "P22139-B21"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_device_type" "hpe_v_1910_48_g" {
  model             = "V1910-48G"
  slug              = "hpe-v1910-48g"
  part_number       = "JE009A"
  manufacturer_id   = netbox_manufacturer.hpe.id
}

resource "netbox_manufacturer" "huawei" {
  name = "Huawei"
  slug = "huawei"
}

resource "netbox_device_type" "huawei_ar_6121_e" {
  model             = "AR6121E"
  slug              = "huawei-ar6121e"
  part_number       = "02353TBH"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_atn_910_i_d" {
  model             = "ATN910I-D"
  slug              = "huawei-atn910i-d"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_ce_6851_48_s_6_q_hi" {
  model             = "CE6851-48S6Q-HI"
  slug              = "huawei-ce6851-48s6q-hi"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_ce_8850_64_cq_ei" {
  model             = "CE8850-64CQ-EI"
  slug              = "huawei-ce8850-64cq-ei"
  part_number       = "CE8850-64CQ-EI"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_ce_8861_4_c_ei" {
  model             = "CE8861-4C-EI"
  slug              = "huawei-ce8861-4c-ei"
  part_number       = "CE8861-4C-EI"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_cloudengine_s_5732_h_48_xum_2_cc" {
  model             = "CloudEngine S5732-H48XUM2CC"
  slug              = "huawei-cloudengine-s5732-h48xum2cc"
  part_number       = "02353MLH"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_optixtrans_dc_908" {
  model             = "OptiXtrans DC908"
  slug              = "huawei-optixtrans-dc908"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_2288_h_v_5" {
  model             = "Huawei 2288H V5"
  slug              = "huawei-2288h-v5"
  part_number       = "H22-05-S8AFF"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_ce_6820_h_48_s_6_cq" {
  model             = "Huawei_CE6820H-48S6CQ"
  slug              = "huawei-ce6820h-48s6cq"
  part_number       = "CE6820H-48S6CQ"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_dorado_3000_v_6" {
  model             = "Huawei Dorado 3000 V6"
  slug              = "huawei-dorado-3000-v6"
  part_number       = "D3V6-192G-SAS"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5732_h_24_um_2_cc" {
  model             = "Huawei_S5732-H24UM2CC"
  slug              = "huawei-s5732-h24um2cc"
  part_number       = "S5732-H24UM2CC"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_ne_40_e_m_2_k_b" {
  model             = "NE40E-M2K-B"
  slug              = "huawei-ne40e-m2k-b"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_1720_28_gwr_pwr_4_tp_e" {
  model             = "S1720-28GWR-PWR-4TP-E"
  slug              = "huawei-s1720-28gwr-pwr-4tp-e"
  part_number       = "98010752"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_3100_8_tp_pwr_ei" {
  model             = "S3100-8TP-PWR-EI"
  slug              = "huawei-s3100-8tp-pwr-ei"
  part_number       = "S3100-8TP-PWR-EI"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5700_28_p_li_ac" {
  model             = "S5700-28P-LI-AC"
  slug              = "huawei-s5700-28p-li-ac"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5700_28_x_li_ac" {
  model             = "S5700-28X-LI-AC"
  slug              = "huawei-s5700-28x-li-ac"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5720_28_x_li_24_s_dc" {
  model             = "S5720-28X-LI-24S-DC"
  slug              = "huawei-s5720-28x-li-24s-dc"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5731_s_24_t_4_x" {
  model             = "S5731-S24T4X"
  slug              = "huawei-s5731-s24t4x"
  part_number       = "02353AHU-001"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5735_l_24_p_4_x_a_1" {
  model             = "S5735-L24P4X-A1"
  slug              = "huawei-s5735-l24p4x-a1"
  part_number       = "98011318"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5735_l_24_t_4_x_a" {
  model             = "S5735-L24T4X-A"
  slug              = "huawei-s5735-l24t4x-a"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_6720_30_c_ei_24_s_ac" {
  model             = "S6720-30C-EI-24S-AC"
  slug              = "huawei-s6720-30c-ei-24s-ac"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_6720_30_c_ei_24_s_dc" {
  model             = "S6720-30C-EI-24S-DC"
  slug              = "huawei-s6720-30c-ei-24s-dc"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_6720_s_26_q_ei_24_s_ac" {
  model             = "S6720S-26Q-EI-24S-AC"
  slug              = "huawei-s6720s-26q-ei-24s-ac"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_6730_h_24_x_6_c" {
  model             = "S6730-H24X6C"
  slug              = "huawei-s6730-h24x6c"
  part_number       = "S6730-H24X6C"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_6730_h_28_y_4_c" {
  model             = "S6730-H28Y4C"
  slug              = "huawei-s6730-h28y4c"
  part_number       = "S6730-H28Y4C"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_6730_h_48_x_6_c" {
  model             = "S6730-H48X6C"
  slug              = "huawei-s6730-h48x6c"
  part_number       = "S6730-H48X6C"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_device_type" "huawei_s_5720_56_c_ei_48_s_ac" {
  model             = "S5720-56C-EI-48S-AC"
  slug              = "huawei-s5720-56c-ei-48s-ac"
  manufacturer_id   = netbox_manufacturer.huawei.id
}

resource "netbox_manufacturer" "ibm" {
  name = "IBM"
  slug = "ibm"
}

resource "netbox_device_type" "ibm_bladecenter_hs_22" {
  model             = "BladeCenter HS22"
  slug              = "ibm-bladecenter-hs22"
  manufacturer_id   = netbox_manufacturer.ibm.id
}

resource "netbox_device_type" "ibm_bladecenter_h" {
  model             = "BladeCenter H"
  slug              = "ibm-bladecenter-h"
  manufacturer_id   = netbox_manufacturer.ibm.id
}

resource "netbox_device_type" "ibm_system_x_3550" {
  model             = "System x3550"
  slug              = "ibm-system-x3550"
  manufacturer_id   = netbox_manufacturer.ibm.id
}

resource "netbox_device_type" "ibm_eserver_x_226" {
  model             = "eServer x226"
  slug              = "ibm-eserver-x226"
  part_number       = "86482DG"
  manufacturer_id   = netbox_manufacturer.ibm.id
}

resource "netbox_manufacturer" "infinera" {
  name = "Infinera"
  slug = "infinera"
}

resource "netbox_device_type" "infinera_cloud_xpress_2" {
  model             = "Cloud Xpress 2"
  slug              = "infinera-cloud-xpress-2"
  manufacturer_id   = netbox_manufacturer.infinera.id
}

resource "netbox_manufacturer" "infoblox" {
  name = "Infoblox"
  slug = "infoblox"
}

resource "netbox_device_type" "infoblox_ib_1410" {
  model             = "IB-1410"
  slug              = "infoblox-ib-1410"
  manufacturer_id   = netbox_manufacturer.infoblox.id
}

resource "netbox_device_type" "infoblox_ib_1420" {
  model             = "IB-1420"
  slug              = "infoblox-ib-1420"
  manufacturer_id   = netbox_manufacturer.infoblox.id
}

resource "netbox_device_type" "infoblox_te_1415_ns_1_gd_ac" {
  model             = "TE-1415-NS1GD-AC"
  slug              = "infoblox-te-1415-ns1gd-ac"
  manufacturer_id   = netbox_manufacturer.infoblox.id
}

resource "netbox_device_type" "infoblox_te_805_hw_ac_b" {
  model             = "Trinzic TE-805"
  slug              = "infoblox-te-805-hw-ac-b"
  part_number       = "TE-805-HW-AC-B"
  manufacturer_id   = netbox_manufacturer.infoblox.id
}

resource "netbox_device_type" "infoblox_te_815_ns_1_gd_ac" {
  model             = "TE-815-NS1GD-AC"
  slug              = "infoblox-te-815-ns1gd-ac"
  manufacturer_id   = netbox_manufacturer.infoblox.id
}

resource "netbox_manufacturer" "infotecs" {
  name = "Infotecs"
  slug = "infotecs"
}

resource "netbox_device_type" "infotecs_vipnet_coordinator_hw_1000_c" {
  model             = "ViPNet Coordinator HW1000C"
  slug              = "infotecs-vipnet-coordinator-hw1000c"
  manufacturer_id   = netbox_manufacturer.infotecs.id
}

resource "netbox_manufacturer" "inspur" {
  name = "Inspur"
  slug = "inspur"
}

resource "netbox_device_type" "inspur_nf_5180_m_6" {
  model             = "NF5180M6"
  slug              = "inspur-nf5180m6"
  part_number       = "NF5180M6"
  manufacturer_id   = netbox_manufacturer.inspur.id
}

resource "netbox_device_type" "inspur_nf_8260_m_6" {
  model             = "NF8260M6"
  slug              = "inspur-nf8260m6"
  part_number       = "NF8260M6"
  manufacturer_id   = netbox_manufacturer.inspur.id
}

resource "netbox_manufacturer" "intel" {
  name = "Intel"
  slug = "intel"
}

resource "netbox_device_type" "intel_h_2312_xxkr_2" {
  model             = "H2312XXKR2"
  slug              = "intel-h2312xxkr2"
  manufacturer_id   = netbox_manufacturer.intel.id
}

resource "netbox_device_type" "intel_h_2312_xxlr_2" {
  model             = "H2312XXLR2"
  slug              = "intel-h2312xxlr2"
  manufacturer_id   = netbox_manufacturer.intel.id
}

resource "netbox_device_type" "intel_hns_2600_tpr" {
  model             = "HNS2600TPR"
  slug              = "intel-hns2600tpr"
  manufacturer_id   = netbox_manufacturer.intel.id
}

resource "netbox_device_type" "intel_nuc_11_tnbi_5" {
  model             = "NUC11TNBi5"
  slug              = "intel-nuc11tnbi5"
  manufacturer_id   = netbox_manufacturer.intel.id
}

resource "netbox_manufacturer" "juniper" {
  name = "Juniper"
  slug = "juniper"
}

resource "netbox_device_type" "juniper_acx_1100_ac" {
  model             = "ACX1100-AC"
  slug              = "juniper-acx1100-ac"
  part_number       = "ACX1100-AC"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_acx_4000" {
  model             = "ACX4000"
  slug              = "juniper-acx4000"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_acx_5448_m" {
  model             = "ACX5448-M"
  slug              = "juniper-acx5448-m"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_acx_7100_48_l_ac_ao" {
  model             = "ACX7100-48L-AC-AO"
  slug              = "juniper-acx7100-48l-ac-ao"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_acx_710_dc" {
  model             = "ACX710DC"
  slug              = "juniper-acx710dc"
  part_number       = "ACX710DC"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2200_48_t_4_g" {
  model             = "EX2200-48T-4G"
  slug              = "juniper-ex2200-48t-4g"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2200_c_12_p" {
  model             = "EX2200-C-12P"
  slug              = "juniper-ex2200-c-12p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2200_c_12_t" {
  model             = "EX2200-C-12T"
  slug              = "juniper-ex2200-c-12t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2300_24_t" {
  model             = "EX2300-24T"
  slug              = "juniper-ex2300-24t"
  part_number       = "ex2300-24t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2300_48_t" {
  model             = "EX2300-48T"
  slug              = "juniper-ex2300-48t"
  part_number       = "ex2300-48t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2300_c_12_p" {
  model             = "EX2300-C-12P"
  slug              = "juniper-ex2300-c-12p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_2300_c_12_t" {
  model             = "EX2300-C-12T"
  slug              = "juniper-ex2300-c-12t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3300_24_p" {
  model             = "EX3300-24P"
  slug              = "juniper-ex3300-24p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3300_24_t" {
  model             = "EX3300-24T"
  slug              = "juniper-ex3300-24t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3300_48_p" {
  model             = "EX3300-48P"
  slug              = "juniper-ex3300-48p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3300_48_t" {
  model             = "EX3300-48T"
  slug              = "juniper-ex3300-48t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3400_24_p" {
  model             = "EX3400-24P"
  slug              = "juniper-ex3400-24p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3400_24_t" {
  model             = "EX3400-24T"
  slug              = "juniper-ex3400-24t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3400_48_p" {
  model             = "EX3400-48P"
  slug              = "juniper-ex3400-48p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_3400_48_t" {
  model             = "EX3400-48T"
  slug              = "juniper-ex3400-48t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4100_24_p" {
  model             = "EX4100-24P"
  slug              = "juniper-ex4100-24p"
  part_number       = "EX4100-24P"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4100_24_t" {
  model             = "EX4100-24T"
  slug              = "juniper-ex4100-24t"
  part_number       = "EX4100-24T"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4100_48_p" {
  model             = "EX4100-48P"
  slug              = "juniper-ex4100-48p"
  part_number       = "EX4100-48P"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4100_48_t" {
  model             = "EX4100-48T"
  slug              = "juniper-ex4100-48t"
  part_number       = "EX4100-48T"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4200_48_t" {
  model             = "EX4200-48T"
  slug              = "juniper-ex4200-48t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4300_24_p" {
  model             = "EX4300-24P"
  slug              = "juniper-ex4300-24p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4300_24_t" {
  model             = "EX4300-24T"
  slug              = "juniper-ex4300-24t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4300_32_f" {
  model             = "EX4300-32F"
  slug              = "juniper-ex4300-32f"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4300_48_mp" {
  model             = "EX4300-48MP"
  slug              = "juniper-ex4300-48mp"
  part_number       = "EX4300-48MP"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4300_48_p" {
  model             = "EX4300-48P"
  slug              = "juniper-ex4300-48p"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4300_48_t" {
  model             = "EX4300-48T"
  slug              = "juniper-ex4300-48t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4500_40_f" {
  model             = "EX4500-40F"
  slug              = "juniper-ex4500-40f"
  part_number       = "EX4500-40F-VC1-BF-C"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_4550_32_f" {
  model             = "ex4550-32f"
  slug              = "juniper-ex4550-32f"
  part_number       = "ex4550-32f"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_9204" {
  model             = "EX9204"
  slug              = "juniper-ex9204"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_ex_9214" {
  model             = "EX9214"
  slug              = "juniper-ex9214"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_10003_base" {
  model             = "MX10003-BASE"
  slug              = "juniper-mx10003-base"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_10003_premium" {
  model             = "MX10003-PREMIUM"
  slug              = "juniper-mx10003-premium"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_104_base" {
  model             = "MX104-BASE"
  slug              = "juniper-mx104-base"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_104_premium" {
  model             = "MX104-PREMIUM"
  slug              = "juniper-mx104-premium"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_204" {
  model             = "MX204"
  slug              = "juniper-mx204"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_240" {
  model             = "MX240"
  slug              = "juniper-mx240"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_480" {
  model             = "MX480"
  slug              = "juniper-mx480"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_80" {
  model             = "MX80"
  slug              = "juniper-mx80"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_mx_960" {
  model             = "MX960"
  slug              = "juniper-mx960"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_nfx_250" {
  model             = "NFX250"
  slug              = "juniper-nfx250"
  part_number       = "NFX250-S2"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_10002_36_q" {
  model             = "QFX10002-36Q"
  slug              = "juniper-qfx10002-36q"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_10002_72_q" {
  model             = "QFX10002-72Q"
  slug              = "juniper-qfx10002-72q"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_3500_48_s_4_q" {
  model             = "QFX3500-48S4Q"
  slug              = "juniper-qfx3500-48s4q"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5100_48_s_3_afo" {
  model             = "QFX5100-48S-3afo"
  slug              = "juniper-qfx5100-48s-3afo"
  part_number       = "QFX5100-48S-3AFO"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5100_48_s_6_q" {
  model             = "QFX5100-48S-6q"
  slug              = "juniper-qfx5100-48s-6q"
  part_number       = "QFX5100-48S-6Q"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5100_48_t_6_q" {
  model             = "QFX5100-48T-6Q"
  slug              = "juniper-qfx5100-48t-6q"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5100_96_s_8_q" {
  model             = "QFX5100-96S-8Q"
  slug              = "juniper-qfx5100-96s-8q"
  part_number       = "QFX5100-96S-8Q"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5110_48_s_4_c" {
  model             = "QFX5110-48S-4C"
  slug              = "juniper-qfx5110-48s-4c"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5120_32_c" {
  model             = "QFX5120-32C"
  slug              = "juniper-qfx5120-32c"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5120_48_t" {
  model             = "QFX5120-48T"
  slug              = "juniper-qfx5120-48t"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5120_48_y" {
  model             = "QFX5120-48Y"
  slug              = "juniper-qfx5120-48y"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5130_32_cd" {
  model             = "QFX5130-32CD"
  slug              = "juniper-qfx5130-32cd"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5200_32_c" {
  model             = "QFX5200-32C"
  slug              = "juniper-qfx5200-32c"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5200_48_y" {
  model             = "QFX5200-48Y"
  slug              = "juniper-qfx5200-48y"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5210_128_c" {
  model             = "QFX5210-128C"
  slug              = "juniper-qfx5210-128c"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_qfx_5210_64_c" {
  model             = "QFX5210-64C"
  slug              = "juniper-qfx5210-64c"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_110_h_2_va" {
  model             = "SRX110H2-VA"
  slug              = "juniper-srx110h2-va"
  part_number       = "srx110h2-va"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_1500" {
  model             = "SRX1500"
  slug              = "juniper-srx1500"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_21_he_2" {
  model             = "SRX21HE2"
  slug              = "juniper-srx21he2"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_240_h_2_poe" {
  model             = "SRX240H2-POE"
  slug              = "juniper-srx240h2-poe"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_240_h_2" {
  model             = "SRX240H2"
  slug              = "juniper-srx240h2"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_300" {
  model             = "SRX300"
  slug              = "juniper-srx300"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_320" {
  model             = "SRX320"
  slug              = "juniper-srx320"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_340" {
  model             = "SRX340"
  slug              = "juniper-srx340"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_345" {
  model             = "SRX345"
  slug              = "juniper-srx345"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_3600" {
  model             = "SRX3600"
  slug              = "juniper-srx3600"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_jnp_srx_380_p" {
  model             = "JNP-SRX380-P"
  slug              = "juniper-jnp-srx380-p"
  part_number       = "SRX380-P"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_4100" {
  model             = "SRX4100"
  slug              = "juniper-srx4100"
  part_number       = "SRX4100-SYS-JB-AC"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_4200" {
  model             = "SRX4200"
  slug              = "juniper-srx4200"
  part_number       = "SRX4200-SYS-JB-AC"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_4600" {
  model             = "SRX4600"
  slug              = "juniper-srx4600"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_550" {
  model             = "SRX550"
  slug              = "juniper-srx550"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_device_type" "juniper_srx_650" {
  model             = "SRX650"
  slug              = "juniper-srx650"
  manufacturer_id   = netbox_manufacturer.juniper.id
}

resource "netbox_manufacturer" "lancom" {
  name = "LANCOM"
  slug = "lancom"
}

resource "netbox_device_type" "lancom_gs_1108" {
  model             = "GS-1108"
  slug              = "lancom-gs-1108"
  part_number       = "61457"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_1108_p" {
  model             = "GS-1108P"
  slug              = "lancom-gs-1108p"
  part_number       = "61430"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_1326" {
  model             = "GS-1326"
  slug              = "lancom-gs-1326"
  part_number       = "61438"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2310" {
  model             = "GS-2310"
  slug              = "lancom-gs-2310"
  part_number       = "61492"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2310_p_plus" {
  model             = "GS-2310P+"
  slug              = "lancom-gs-2310p-plus"
  part_number       = "61440"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2310_p" {
  model             = "GS-2310P"
  slug              = "lancom-gs-2310p"
  part_number       = "61433"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2326_plus" {
  model             = "GS-2326+"
  slug              = "lancom-gs-2326-plus"
  part_number       = "61483"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2326" {
  model             = "GS-2326"
  slug              = "lancom-gs-2326"
  part_number       = "61470"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2326_p_plus" {
  model             = "GS-2326P+"
  slug              = "lancom-gs-2326p-plus"
  part_number       = "61481"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2328" {
  model             = "GS-2328"
  slug              = "lancom-gs-2328"
  part_number       = "61444"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2328_f" {
  model             = "GS-2328F"
  slug              = "lancom-gs-2328f"
  part_number       = "61446"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2328_p" {
  model             = "GS-2328P"
  slug              = "lancom-gs-2328p"
  part_number       = "61442"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2352" {
  model             = "GS-2352"
  slug              = "lancom-gs-2352"
  part_number       = "61472"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_2352_p" {
  model             = "GS-2352P"
  slug              = "lancom-gs-2352p"
  part_number       = "61436"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3126_x" {
  model             = "GS-3126X"
  slug              = "lancom-gs-3126x"
  part_number       = "61847"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3126_xp" {
  model             = "GS-3126XP"
  slug              = "lancom-gs-3126xp"
  part_number       = "61848"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3152_x" {
  model             = "GS-3152X"
  slug              = "lancom-gs-3152x"
  part_number       = "61488"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3152_xp" {
  model             = "GS-3152XP"
  slug              = "lancom-gs-3152xp"
  part_number       = "61487"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3152_xsp" {
  model             = "GS-3152XSP"
  slug              = "lancom-gs-3152xsp"
  part_number       = "61486"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3510_xp" {
  model             = "GS-3510XP"
  slug              = "lancom-gs-3510xp"
  part_number       = "61849"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3528_x" {
  model             = "GS-3528X"
  slug              = "lancom-gs-3528x"
  part_number       = "61496"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_gs_3528_xp" {
  model             = "GS-3528XP"
  slug              = "lancom-gs-3528xp"
  part_number       = "61850"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_isg_1000" {
  model             = "ISG-1000"
  slug              = "lancom-isg-1000"
  part_number       = "61073"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_isg_4000" {
  model             = "ISG-4000"
  slug              = "lancom-isg-4000"
  part_number       = "61075"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_isg_8000" {
  model             = "ISG-8000"
  slug              = "lancom-isg-8000"
  part_number       = "61077"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_ln_1700" {
  model             = "LN-1700"
  slug              = "lancom-ln-1700"
  part_number       = "61767"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_ln_1700_b" {
  model             = "LN-1700B"
  slug              = "lancom-ln-1700b"
  part_number       = "61792"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_ln_1700_ue" {
  model             = "LN-1700UE"
  slug              = "lancom-ln-1700ue"
  part_number       = "61801"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_ln_1702" {
  model             = "LN-1702"
  slug              = "lancom-ln-1702"
  part_number       = "61764"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_ln_1702_b" {
  model             = "LN-1702B"
  slug              = "lancom-ln-1702b"
  part_number       = "61794"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_wlc_1000" {
  model             = "WLC-1000"
  slug              = "lancom-wlc-1000"
  part_number       = "61783"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_wlc_30" {
  model             = "WLC-30"
  slug              = "lancom-wlc-30"
  part_number       = "61789"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_wlc_4006_plus" {
  model             = "WLC-4006+"
  slug              = "lancom-wlc-4006-plus"
  part_number       = "62035"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_wlc_4025_plus" {
  model             = "WLC-4025+"
  slug              = "lancom-wlc-4025-plus"
  part_number       = "wlc-4025-plus"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_wlc_4025" {
  model             = "WLC-4025"
  slug              = "lancom-wlc-4025"
  part_number       = "wlc-4025"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_device_type" "lancom_wlc_4100" {
  model             = "WLC-4100"
  slug              = "lancom-wlc-4100"
  part_number       = "61369"
  manufacturer_id   = netbox_manufacturer.lancom.id
}

resource "netbox_manufacturer" "lenovo" {
  name = "Lenovo"
  slug = "lenovo"
}

resource "netbox_device_type" "lenovo_flex_system" {
  model             = "Flex System"
  slug              = "lenovo-flex-system"
  part_number       = "8721W3X"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_thinksystem_10_gb_2_port_sfpp_lom" {
  model             = "ThinkSystem 10Gb 2-port SFP+ LOM"
  slug              = "lenovo-thinksystem-10gb-2-port-sfpp-lom"
  part_number       = "7ZT7A00546"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_thinksystem_10_gb_4_port_sfpp_lom" {
  model             = "ThinkSystem 10Gb 4-port SFP+ LOM"
  slug              = "lenovo-thinksystem-10gb-4-port-sfpp-lom"
  part_number       = "7ZT7A00547"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_thinksystem_sr_530" {
  model             = "ThinkSystem SR530"
  slug              = "lenovo-thinksystem-sr530"
  part_number       = "7X07"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_thinksystem_sr_550" {
  model             = "ThinkSystem SR550"
  slug              = "lenovo-thinksystem-sr550"
  part_number       = "7X04"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_thinksystem_sr_630" {
  model             = "ThinkSystem SR630"
  slug              = "lenovo-thinksystem-sr630"
  part_number       = "7X02"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_thinksystem_sr_650" {
  model             = "ThinkSystem SR650"
  slug              = "lenovo-thinksystem-sr650"
  part_number       = "7X06"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_system_x_3250_m_6" {
  model             = "System x3250 M6"
  slug              = "lenovo-system-x3250-m6"
  part_number       = "3633"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_system_x_3550_m_5" {
  model             = "System x3550 M5"
  slug              = "lenovo-system-x3550-m5"
  part_number       = "5463AC1"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_device_type" "lenovo_system_x_3750_m_4" {
  model             = "System x3750 M4"
  slug              = "lenovo-system-x3750-m4"
  part_number       = "8722C1U"
  manufacturer_id   = netbox_manufacturer.lenovo.id
}

resource "netbox_manufacturer" "leviton" {
  name = "Leviton"
  slug = "leviton"
}

resource "netbox_device_type" "leviton_24_port_keystone_patch_panel" {
  model             = "24 Port Keystone Patch Panel"
  slug              = "leviton-24-port-keystone-patch-panel"
  part_number       = "49255-H24"
  manufacturer_id   = netbox_manufacturer.leviton.id
}

resource "netbox_device_type" "leviton_48_port_keystone_patch_panel" {
  model             = "48 Port Keystone Patch Panel"
  slug              = "leviton-48-port-keystone-patch-panel"
  part_number       = "49255-Q48"
  manufacturer_id   = netbox_manufacturer.leviton.id
}

resource "netbox_device_type" "leviton_5_r_1_um_f_03" {
  model             = "5R1UM-F03"
  slug              = "leviton-5r1um-f03"
  manufacturer_id   = netbox_manufacturer.leviton.id
}

resource "netbox_device_type" "leviton_5_r_2_um_f_06" {
  model             = "5R2UM-F06"
  slug              = "leviton-5r2um-f06"
  manufacturer_id   = netbox_manufacturer.leviton.id
}

resource "netbox_device_type" "leviton_5_r_3_um_f_09" {
  model             = "5R3UM-F09"
  slug              = "leviton-5r3um-f09"
  manufacturer_id   = netbox_manufacturer.leviton.id
}

resource "netbox_device_type" "leviton_5_r_3_um_f_12" {
  model             = "5R3UM-F12"
  slug              = "leviton-5r3um-f12"
  manufacturer_id   = netbox_manufacturer.leviton.id
}

resource "netbox_manufacturer" "mellanox" {
  name = "Mellanox"
  slug = "mellanox"
}

resource "netbox_device_type" "mellanox_sb_7800" {
  model             = "SB7800"
  slug              = "mellanox-sb7800"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_2010" {
  model             = "SN2010"
  slug              = "mellanox-sn2010"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_2700" {
  model             = "SN2700"
  slug              = "mellanox-sn2700"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_3700" {
  model             = "SN3700"
  slug              = "mellanox-sn3700"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_3700_c" {
  model             = "SN3700C"
  slug              = "mellanox-sn3700c"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_4600" {
  model             = "SN4600"
  slug              = "mellanox-sn4600"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_4600_c" {
  model             = "SN4600C"
  slug              = "mellanox-sn4600c"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sn_4700" {
  model             = "SN4700"
  slug              = "mellanox-sn4700"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_device_type" "mellanox_sx_6036" {
  model             = "SX6036"
  slug              = "mellanox-sx6036"
  manufacturer_id   = netbox_manufacturer.mellanox.id
}

resource "netbox_manufacturer" "mikro_tik" {
  name = "MikroTik"
  slug = "mikro-tik"
}

resource "netbox_device_type" "mikrotik_c_52_ig_5_haxd_2_haxd_tc" {
  model             = "C52iG-5HaxD2HaxD-TC"
  slug              = "mikrotik-c52ig-5haxd2haxd-tc"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_c_53_uig_plus_5_hpaxd_2_hpaxd" {
  model             = "C53UiG+5HPaxD2HPaxD"
  slug              = "mikrotik-c53uig-plus-5hpaxd2hpaxd"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1009_7_g_1_c_1_s_plus" {
  model             = "CCR1009-7G-1C-1S+"
  slug              = "mikrotik-ccr1009-7g-1c-1s-plus"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1009_7_g_1_c_1_s_plus_pc" {
  model             = "CCR1009-7G-1C-1S+PC"
  slug              = "mikrotik-ccr1009-7g-1c-1s-plus-pc"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1009_7_g_1_c_pc" {
  model             = "CCR1009-7G-1C-PC"
  slug              = "mikrotik-ccr1009-7g-1c-pc"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1009_8_g_1_s_1_s_plus" {
  model             = "CCR1009-8G-1S-1S+"
  slug              = "mikrotik-ccr1009-8g-1s-1s-plus"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1016_12_g" {
  model             = "CCR1016-12G"
  slug              = "mikrotik-ccr1016-12g"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1016_12_s_1_s_plus" {
  model             = "CCR1016-12S-1S+"
  slug              = "mikrotik-ccr1016-12s-1s-plus"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1036_12_g_4_s_em" {
  model             = "CCR1036-12G-4S-EM"
  slug              = "mikrotik-ccr1036-12g-4s-em"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1036_12_g_4_s" {
  model             = "CCR1036-12G-4S"
  slug              = "mikrotik-ccr1036-12g-4s"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1036_8_g_2_s_plus" {
  model             = "CCR1036-8G-2S+"
  slug              = "mikrotik-ccr1036-8g-2s-plus"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1036_8_g_2_s_plus_em" {
  model             = "CCR1036-8G-2S+EM"
  slug              = "mikrotik-ccr1036-8g-2s-plus-em"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_1072_1_g_8_s_plus" {
  model             = "CCR1072-1G-8S+"
  slug              = "mikrotik-ccr1072-1g-8s-plus"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_2004_16_g_2_s_plus" {
  model             = "CCR2004-16G-2S+"
  slug              = "mikrotik-ccr2004-16g-2s-plus"
  part_number       = "CCR2004-16G-2S+"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_2004_1_g_12_s_plus_2_xs" {
  model             = "CCR2004-1G-12S+2XS"
  slug              = "mikrotik-ccr2004-1g-12s-plus-2xs"
  part_number       = "CCR2004-1G-12S+2XS"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_2116_12_g_4_s_plus" {
  model             = "CCR2116-12G-4S+"
  slug              = "mikrotik-ccr2116-12g-4s-plus"
  part_number       = "CCR2116-12G-4S+"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_ccr_2216_1_g_12_xs_2_xq" {
  model             = "CCR2216-1G-12XS-2XQ"
  slug              = "mikrotik-ccr2216-1g-12xs-2xq"
  part_number       = "CCR2216-1G-12XS-2XQ"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_106_1_c_5_s" {
  model             = "CRS106-1C-5S"
  slug              = "mikrotik-crs106-1c-5s"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_109_8_g_1_s_2_hnd_in" {
  model             = "CRS109-8G-1S-2HnD-IN"
  slug              = "mikrotik-crs109-8g-1s-2hnd-in"
  part_number       = "CRS109-8G-1S-2HnD-IN"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_112_8_g_4_s_in" {
  model             = "CRS112-8G-4S-IN"
  slug              = "mikrotik-crs112-8g-4s-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_112_8_p_4_s_in" {
  model             = "CRS112-8P-4S-IN"
  slug              = "mikrotik-crs112-8p-4s-in"
  part_number       = "CRS112-8P-4S"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_125_24_g_1_s_2_hnd_in" {
  model             = "CRS125-24G-1S-2HnD-IN"
  slug              = "mikrotik-crs125-24g-1s-2hnd-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_125_24_g_1_s_in" {
  model             = "CRS125-24G-1S-IN"
  slug              = "mikrotik-crs125-24g-1s-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_125_24_g_1_s_rm" {
  model             = "CRS125-24G-1S-RM"
  slug              = "mikrotik-crs125-24g-1s-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_212_1_g_10_s_1_s_plus_in" {
  model             = "CRS212-1G-10S-1S+IN"
  slug              = "mikrotik-crs212-1g-10s-1s-plus-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_226_24_g_2_s_plus_rm" {
  model             = "CRS226-24G-2S+RM"
  slug              = "mikrotik-crs226-24g-2s-plus-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_305_1_g_4_s_plus_in" {
  model             = "CRS305-1G-4S+IN"
  slug              = "mikrotik-crs305-1g-4s-plus-in"
  part_number       = "CRS305-1G-4S+"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_309_1_g_8_s_plus_in" {
  model             = "CRS309-1G-8S+IN"
  slug              = "mikrotik-crs309-1g-8s-plus-in"
  part_number       = "CRS309-1G-8S+"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_310_1_g_5_s_4_s_plus_in" {
  model             = "CRS310-1G-5S-4S+IN"
  slug              = "mikrotik-crs310-1g-5s-4s-plus-in"
  part_number       = "CRS310-1G-5S-4S+"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_312_4_c_plus_8_xg_rm" {
  model             = "CRS312-4C+8XG-RM"
  slug              = "mikrotik-crs312-4c-plus-8xg-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_317_1_g_16_s_plus_rm" {
  model             = "CRS317-1G-16S+RM"
  slug              = "mikrotik-crs317-1g-16s-plus-rm"
  part_number       = "CRS317-1G-16S+"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_326_24_g_2_s_plus_rm" {
  model             = "CRS326-24G-2S+RM"
  slug              = "mikrotik-crs326-24g-2s-plus-rm"
  part_number       = "CRS326-24G-2S"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_326_24_s_plus_2_q_plus_rm" {
  model             = "CRS326-24S+2Q+RM"
  slug              = "mikrotik-crs326-24s-plus-2q-plus-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_328_24_p_4_s_plus_rm" {
  model             = "CRS328-24P-4S+RM"
  slug              = "mikrotik-crs328-24p-4s-plus-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_328_4_c_20_s_4_s_plus_rm" {
  model             = "CRS328-4C-20S-4S+RM"
  slug              = "mikrotik-crs328-4c-20s-4s-plus-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_354_48_g_4_s_plus_2_q_plus_rm" {
  model             = "CRS354-48G-4S+2Q+RM"
  slug              = "mikrotik-crs354-48g-4s-plus-2q-plus-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_354_48_p_4_s_plus_2_q_plus_rm" {
  model             = "CRS354-48P-4S+2Q+RM"
  slug              = "mikrotik-crs354-48p-4s-plus-2q-plus-rm"
  part_number       = "CRS354-48P-4S+2Q+RM"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_504_4_xq_in" {
  model             = "CRS504-4XQ-IN"
  slug              = "mikrotik-crs504-4xq-in"
  part_number       = "CRS504-4XQ-IN"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_crs_518_16_xs_2_xq" {
  model             = "CRS518-16XS-2XQ"
  slug              = "mikrotik-crs518-16xs-2xq"
  part_number       = "CRS518-16XS-2XQ"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_css_326_24_g_2_s_plus_rm" {
  model             = "CSS326-24G-2S+RM"
  slug              = "mikrotik-css326-24g-2s-plus-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_css_610_8_g_2_s_plus_in" {
  model             = "CSS610-8G-2S+IN"
  slug              = "mikrotik-css610-8g-2s-plus-in"
  part_number       = "CSS610-8G-2S+IN"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_1100_ahx_2" {
  model             = "RB1100AHx2"
  slug              = "mikrotik-rb1100ahx2"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_1100_ahx_4_dude_edition" {
  model             = "RB1100AHx4 Dude Edition"
  slug              = "mikrotik-rb1100ahx4-dude-edition"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_1100_ahx_4" {
  model             = "RB1100AHx4"
  slug              = "mikrotik-rb1100ahx4"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_1200" {
  model             = "RB1200"
  slug              = "mikrotik-rb1200"
  part_number       = "RB1200"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_2011_uias_in" {
  model             = "RB2011UiAS-IN"
  slug              = "mikrotik-rb2011uias-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_2011_uias_rm" {
  model             = "RB2011UiAS-RM"
  slug              = "mikrotik-rb2011uias-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_2011_il_in" {
  model             = "RB2011iL-IN"
  slug              = "mikrotik-rb2011il-in"
  part_number       = "RB2011iL-IN"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_2011_il_rm" {
  model             = "RB2011iL-RM"
  slug              = "mikrotik-rb2011il-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_2011_ils_in" {
  model             = "RB2011iLS-IN"
  slug              = "mikrotik-rb2011ils-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_260_gs" {
  model             = "RB260GS"
  slug              = "mikrotik-rb260gs"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_260_gsp" {
  model             = "RB260GSP"
  slug              = "mikrotik-rb260gsp"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_3011_uias_rm" {
  model             = "RB3011UiAS-RM"
  slug              = "mikrotik-rb3011uias-rm"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_4011_igs_plus_rm" {
  model             = "RB4011iGS+RM"
  slug              = "mikrotik-rb4011igs-plus-rm"
  part_number       = "RB4011iGS+RM"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_5009_ug_plus_s_plus_in" {
  model             = "RB5009UG+S+IN"
  slug              = "mikrotik-rb5009ug-plus-s-plus-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_5009_upr_plus_s_plus_in" {
  model             = "RB5009UPr+S+IN"
  slug              = "mikrotik-rb5009upr-plus-s-plus-in"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_750_gr_3" {
  model             = "RB750Gr3"
  slug              = "mikrotik-rb750gr3"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_750_r_2" {
  model             = "RB750r2"
  slug              = "mikrotik-rb750r2"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_750_r_3" {
  model             = "RB750r3"
  slug              = "mikrotik-rb750r3"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_760_igs" {
  model             = "RB760iGS"
  slug              = "mikrotik-rb760igs"
  part_number       = "RB760iGS"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_hap_lite_tc" {
  model             = "hAP lite TC"
  slug              = "mikrotik-hap-lite-tc"
  part_number       = "RB941-2nD-TC"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_hap_lite" {
  model             = "hAP lite"
  slug              = "mikrotik-hap-lite"
  part_number       = "RB941-2nD"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_951_g_2_hnd" {
  model             = "RB951G-2HnD"
  slug              = "mikrotik-rb951g-2hnd"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_hap" {
  model             = "hAP"
  slug              = "mikrotik-hap"
  part_number       = "RB951Ui-2nD"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rb_960_pgs" {
  model             = "RB960PGS"
  slug              = "mikrotik-rb960pgs"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rblhgr_and_r_11_e_lte_us" {
  model             = "RBLHGR&R11e-LTE-US"
  slug              = "mikrotik-rblhgr-and-r11e-lte-us"
  part_number       = "RBLHGR&R11e-LTE-US"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rblhgr_and_r_11_e_lte_6" {
  model             = "RBLHGR&R11e-LTE6"
  slug              = "mikrotik-rblhgr-and-r11e-lte6"
  part_number       = "RBLHGR&R11e-LTE6"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rbltap_2_hnd" {
  model             = "RBLtAP-2HnD"
  slug              = "mikrotik-rbltap-2hnd"
  part_number       = "RBLtAP-2HnD"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_device_type" "mikrotik_rbsxtr_and_r_11_e_lte_6" {
  model             = "RBSXTR&R11e-LTE6"
  slug              = "mikrotik-rbsxtr-and-r11e-lte6"
  part_number       = "RBSXTR&R11e-LTE6"
  manufacturer_id   = netbox_manufacturer.mikro_tik.id
}

resource "netbox_manufacturer" "mimosa_networks" {
  name = "Mimosa Networks"
  slug = "mimosa-networks"
}

resource "netbox_device_type" "mimosa_networks_a_5" {
  model             = "A5"
  slug              = "mimosa-networks-a5"
  part_number       = "a5"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_a_5_c" {
  model             = "A5c"
  slug              = "mimosa-networks-a5c"
  part_number       = "a5c"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_a_5_x" {
  model             = "A5x"
  slug              = "mimosa-networks-a5x"
  part_number       = "a5x"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_b_5_c" {
  model             = "B5c"
  slug              = "mimosa-networks-b5c"
  part_number       = "b5c"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_b_5_x" {
  model             = "B5X"
  slug              = "mimosa-networks-b5x"
  part_number       = "b5x"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_c_5_c" {
  model             = "C5c"
  slug              = "mimosa-networks-c5c"
  part_number       = "C5c"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_c_5_x" {
  model             = "C5x"
  slug              = "mimosa-networks-c5x"
  part_number       = "C5x"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_device_type" "mimosa_networks_c_6_x" {
  model             = "C6x"
  slug              = "mimosa-networks-c6x"
  part_number       = "C6x"
  manufacturer_id   = netbox_manufacturer.mimosa_networks.id
}

resource "netbox_manufacturer" "nec" {
  name = "NEC"
  slug = "nec"
}

resource "netbox_device_type" "nec_univerge_ix_2015" {
  model             = "UNIVERGE IX2015"
  slug              = "nec-univerge-ix2015"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2025" {
  model             = "UNIVERGE IX2025"
  slug              = "nec-univerge-ix2025"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2105" {
  model             = "UNIVERGE IX2105"
  slug              = "nec-univerge-ix2105"
  part_number       = "BE108821"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2106" {
  model             = "UNIVERGE IX2106"
  slug              = "nec-univerge-ix2106"
  part_number       = "BI000087"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2107" {
  model             = "UNIVERGE IX2107"
  slug              = "nec-univerge-ix2107"
  part_number       = "BI000118"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2207" {
  model             = "UNIVERGE IX2207"
  slug              = "nec-univerge-ix2207"
  part_number       = "BI000059"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2215" {
  model             = "UNIVERGE IX2215"
  slug              = "nec-univerge-ix2215"
  part_number       = "BI000054"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2235" {
  model             = "UNIVERGE IX2235"
  slug              = "nec-univerge-ix2235"
  part_number       = "BI000106"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_2310" {
  model             = "UNIVERGE IX2310"
  slug              = "nec-univerge-ix2310"
  part_number       = "BI000111"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_device_type" "nec_univerge_ix_3110" {
  model             = "UNIVERGE IX3110"
  slug              = "nec-univerge-ix3110"
  part_number       = "BE105556"
  manufacturer_id   = netbox_manufacturer.nec.id
}

resource "netbox_manufacturer" "neousys" {
  name = "Neousys"
  slug = "neousys"
}

resource "netbox_device_type" "neousys_nuvo_8240_gc" {
  model             = "Nuvo-8240GC"
  slug              = "neousys-nuvo-8240gc"
  manufacturer_id   = netbox_manufacturer.neousys.id
}

resource "netbox_manufacturer" "net_app" {
  name = "NetApp"
  slug = "net-app"
}

resource "netbox_device_type" "netapp_fas_2750" {
  model             = "FAS2750"
  slug              = "netapp-fas2750"
  part_number       = "FAS2750"
  manufacturer_id   = netbox_manufacturer.net_app.id
}

resource "netbox_device_type" "netapp_fas_8200" {
  model             = "FAS8200"
  slug              = "netapp-fas8200"
  part_number       = "FAS8200A"
  manufacturer_id   = netbox_manufacturer.net_app.id
}

resource "netbox_device_type" "netapp_fas_8200_controller" {
  model             = "FAS8200 Controller"
  slug              = "netapp-fas8200-controller"
  part_number       = "X3172A"
  manufacturer_id   = netbox_manufacturer.net_app.id
}

resource "netbox_device_type" "netapp_fas_2700_controller_cna" {
  model             = "FAS2700 Controller CNA"
  slug              = "netapp-fas2700-controller-cna"
  part_number       = "X3218A"
  manufacturer_id   = netbox_manufacturer.net_app.id
}

resource "netbox_device_type" "netapp_fas_2700_controller_10_gbase_t" {
  model             = "FAS2700 Controller 10GBASE-T"
  slug              = "netapp-fas2700-controller-10gbase-t"
  part_number       = "X3219A"
  manufacturer_id   = netbox_manufacturer.net_app.id
}

resource "netbox_manufacturer" "netgate" {
  name = "Netgate"
  slug = "netgate"
}

resource "netbox_device_type" "netgate_7100_security_gateway" {
  model             = "7100 Security Gateway"
  slug              = "netgate-7100-security-gateway"
  manufacturer_id   = netbox_manufacturer.netgate.id
}

resource "netbox_manufacturer" "netgear" {
  name = "Netgear"
  slug = "netgear"
}

resource "netbox_device_type" "netgear_d_6220" {
  model             = "D6220"
  slug              = "netgear-d6220"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_105" {
  model             = "GS105"
  slug              = "netgear-gs105"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_105_e" {
  model             = "GS105E"
  slug              = "netgear-gs105e"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_108" {
  model             = "GS108"
  slug              = "netgear-gs108"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_108_e" {
  model             = "GS108E"
  slug              = "netgear-gs108e"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_108_pev_3" {
  model             = "GS108PEv3"
  slug              = "netgear-gs108pev3"
  part_number       = "GS108PEv3"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_110_emx" {
  model             = "GS110EMX"
  slug              = "netgear-gs110emx"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_116" {
  model             = "GS116"
  slug              = "netgear-gs116"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_116_ev_2" {
  model             = "GS116Ev2"
  slug              = "netgear-gs116ev2"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_308_e" {
  model             = "GS308E"
  slug              = "netgear-gs308e"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_gs_308_t" {
  model             = "GS308T"
  slug              = "netgear-gs308t"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_jgs_524" {
  model             = "JGS524"
  slug              = "netgear-jgs524"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_m_4300_12_x_12_f" {
  model             = "M4300-12X12F"
  slug              = "netgear-m4300-12x12f"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_device_type" "netgear_prosafe_gs_752_tp" {
  model             = "ProSafe GS752TP"
  slug              = "netgear-prosafe-gs752tp"
  part_number       = "GS752TP"
  manufacturer_id   = netbox_manufacturer.netgear.id
}

resource "netbox_manufacturer" "netonix" {
  name = "Netonix"
  slug = "netonix"
}

resource "netbox_device_type" "netonix_ws_12_250_ac" {
  model             = "WS-12-250-AC"
  slug              = "netonix-ws-12-250-ac"
  manufacturer_id   = netbox_manufacturer.netonix.id
}

resource "netbox_device_type" "netonix_ws_24_400_a" {
  model             = "WS-24-400A"
  slug              = "netonix-ws-24-400a"
  manufacturer_id   = netbox_manufacturer.netonix.id
}

resource "netbox_manufacturer" "nokia" {
  name = "Nokia"
  slug = "nokia"
}

resource "netbox_device_type" "nokia_7210_sas_sx_10_100_ge" {
  model             = "7210 SAS-Sx 10/100GE"
  slug              = "nokia-7210-sas-sx-10-100ge"
  part_number       = "3HE11597AARB01"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7220_ixr_d_1_88_g_48_baset_4_sfpp" {
  model             = "7220 IXR-D1 88G 48baseT 4SFP+"
  slug              = "nokia-7220-ixr-d1-88g-48baset-4sfpp"
  part_number       = "3HE15621AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7220_ixr_d_2_25_100_ge" {
  model             = "7220 IXR-D2 25/100GE"
  slug              = "nokia-7220-ixr-d2-25-100ge"
  part_number       = "3HE15622AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7220_ixr_d_2_l_25_100_ge" {
  model             = "7220 IXR-D2L 25/100GE"
  slug              = "nokia-7220-ixr-d2l-25-100ge"
  part_number       = "3HE17645AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7220_ixr_d_3_32_100_ge" {
  model             = "7220 IXR-D3 32*100GE"
  slug              = "nokia-7220-ixr-d3-32-100ge"
  part_number       = "3HE15623AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7220_ixr_d_3_l_32_100_ge" {
  model             = "7220 IXR-D3L 32*100GE"
  slug              = "nokia-7220-ixr-d3l-32-100ge"
  part_number       = "3HE17646AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7220_ixr_h_3_32_qsfpdd_2_sfpp" {
  model             = "7220 IXR-H3 32QSFPDD 2SFP+"
  slug              = "nokia-7220-ixr-h3-32qsfpdd-2sfpp"
  part_number       = "3HE16425AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_device_type" "nokia_7250_ixr_s" {
  model             = "7250 IXR-s"
  slug              = "nokia-7250-ixr-s"
  part_number       = "3HE13343AA"
  manufacturer_id   = netbox_manufacturer.nokia.id
}

resource "netbox_manufacturer" "nvidia" {
  name = "Nvidia"
  slug = "nvidia"
}

resource "netbox_device_type" "nvidia_jetson_xavier_nx_developer_kit" {
  model             = "Jetson Xavier NX Developer Kit"
  slug              = "nvidia-jetson-xavier-nx-developer-kit"
  manufacturer_id   = netbox_manufacturer.nvidia.id
}

resource "netbox_manufacturer" "opengear" {
  name = "Opengear"
  slug = "opengear"
}

resource "netbox_device_type" "opengear_acm_7008_2_m" {
  model             = "ACM7008-2-M"
  slug              = "opengear-acm7008-2-m"
  part_number       = "ACM7008-2-M"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_cm_7116_2_dac_us" {
  model             = "CM7116-2-DAC-US"
  slug              = "opengear-cm7116-2-dac-us"
  part_number       = "CM7116-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_cm_7116_2_sac_us" {
  model             = "CM7116-2-SAC-US"
  slug              = "opengear-cm7116-2-sac-us"
  part_number       = "CM7116-2-SAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_cm_7132_2_dac_us" {
  model             = "CM7132-2-DAC-US"
  slug              = "opengear-cm7132-2-dac-us"
  part_number       = "CM7132-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_cm_7148_2_dac_us" {
  model             = "CM7148-2-DAC-US"
  slug              = "opengear-cm7148-2-dac-us"
  part_number       = "CM7148-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_cm_7148_2_sac_us" {
  model             = "CM7148-2-SAC-US"
  slug              = "opengear-cm7148-2-sac-us"
  part_number       = "CM7148-2-SAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_cm_7196_2_dac_us" {
  model             = "CM7196-2-DAC-US"
  slug              = "opengear-cm7196-2-dac-us"
  part_number       = "CM7196-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_4216_2" {
  model             = "IM4216-2"
  slug              = "opengear-im4216-2"
  part_number       = "IM4248-2"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_4232_2" {
  model             = "IM4232-2"
  slug              = "opengear-im4232-2"
  part_number       = "IM4232-2"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_4248_2" {
  model             = "IM4248-2"
  slug              = "opengear-im4248-2"
  part_number       = "IM4248-2"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7216_2_dac_us" {
  model             = "IM7216-2-DAC-US"
  slug              = "opengear-im7216-2-dac-us"
  part_number       = "IM7216-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7232_2_dac_us" {
  model             = "IM7232-2-DAC-US"
  slug              = "opengear-im7232-2-dac-us"
  part_number       = "IM7232-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7248_2_dac_lma" {
  model             = "IM7248-2-DAC-LMA"
  slug              = "opengear-im7248-2-dac-lma"
  part_number       = "IM7248-2-DAC-LMA"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7248_2_dac_lmp" {
  model             = "IM7248-2-DAC-LMP"
  slug              = "opengear-im7248-2-dac-lmp"
  part_number       = "IM7248-2-DAC-LMP"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7248_2_dac_lmv" {
  model             = "IM7248-2-DAC-LMV"
  slug              = "opengear-im7248-2-dac-lmv"
  part_number       = "IM7248-2-DAC-LMV"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7248_2_dac_lr" {
  model             = "IM7248-2-DAC-LR"
  slug              = "opengear-im7248-2-dac-lr"
  part_number       = "IM7248-2-DAC-LR"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7248_2_dac_us" {
  model             = "IM7248-2-DAC-US"
  slug              = "opengear-im7248-2-dac-us"
  part_number       = "IM7248-2-DAC-US"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_im_7248_2_dac" {
  model             = "IM7248-2-DAC"
  slug              = "opengear-im7248-2-dac"
  part_number       = "IM7248-2-DAC"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_om_2248_l_eu" {
  model             = "OM2248-L-EU"
  slug              = "opengear-om2248-l-eu"
  part_number       = "OM2248-L-EU"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_device_type" "opengear_om_2248_l" {
  model             = "OM2248-L"
  slug              = "opengear-om2248-l"
  part_number       = "OM2248-L-EU"
  manufacturer_id   = netbox_manufacturer.opengear.id
}

resource "netbox_manufacturer" "pc_engines" {
  name = "PC Engines"
  slug = "pc-engines"
}

resource "netbox_device_type" "pc_engines_apu_1" {
  model             = "APU"
  slug              = "pc-engines-apu1"
  part_number       = "apu1"
  manufacturer_id   = netbox_manufacturer.pc_engines.id
}

resource "netbox_device_type" "pc_engines_apu_2" {
  model             = "APU2"
  slug              = "pc-engines-apu2"
  part_number       = "apu2"
  manufacturer_id   = netbox_manufacturer.pc_engines.id
}

resource "netbox_device_type" "pc_engines_apu_4" {
  model             = "APU4"
  slug              = "pc-engines-apu4"
  part_number       = "apu4"
  manufacturer_id   = netbox_manufacturer.pc_engines.id
}

resource "netbox_manufacturer" "palo_alto" {
  name = "Palo Alto"
  slug = "palo-alto"
}

resource "netbox_device_type" "palo_alto_m_100" {
  model             = "M-100"
  slug              = "palo-alto-m-100"
  part_number       = "M-100"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_m_500" {
  model             = "M-500"
  slug              = "palo-alto-m-500"
  part_number       = "M-500"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_200" {
  model             = "PA-200"
  slug              = "palo-alto-pa-200"
  part_number       = "PA-200"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_220" {
  model             = "PA-220"
  slug              = "palo-alto-pa-220"
  part_number       = "PA-220"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_3020" {
  model             = "PA-3020"
  slug              = "palo-alto-pa-3020"
  part_number       = "PA-3020"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_3050" {
  model             = "PA-3050"
  slug              = "palo-alto-pa-3050"
  part_number       = "PA-3050"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_3060" {
  model             = "PA-3060"
  slug              = "palo-alto-pa-3060"
  part_number       = "PA-3060"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_3220" {
  model             = "PA-3220"
  slug              = "palo-alto-pa-3220"
  part_number       = "PA-3220"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_3250" {
  model             = "PA-3250"
  slug              = "palo-alto-pa-3250"
  part_number       = "PA-3250"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_3260" {
  model             = "PA-3260"
  slug              = "palo-alto-pa-3260"
  part_number       = "PA-3260"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_410" {
  model             = "PA-410"
  slug              = "palo-alto-pa-410"
  part_number       = "PA-410"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_440" {
  model             = "PA-440"
  slug              = "palo-alto-pa-440"
  part_number       = "PA-440"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_450" {
  model             = "PA-450"
  slug              = "palo-alto-pa-450"
  part_number       = "PA-450"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_460" {
  model             = "PA-460"
  slug              = "palo-alto-pa-460"
  part_number       = "PA-460"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_500" {
  model             = "PA-500"
  slug              = "palo-alto-pa-500"
  part_number       = "PA-500"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_5050" {
  model             = "PA-5050"
  slug              = "palo-alto-pa-5050"
  part_number       = "PA-5050"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_5060" {
  model             = "PA-5060"
  slug              = "palo-alto-pa-5060"
  part_number       = "PA-5060"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_5220" {
  model             = "PA-5220"
  slug              = "palo-alto-pa-5220"
  part_number       = "PA-5220"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_5250" {
  model             = "PA-5250"
  slug              = "palo-alto-pa-5250"
  part_number       = "PA-5250"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_5260" {
  model             = "PA-5260"
  slug              = "palo-alto-pa-5260"
  part_number       = "PA-5260"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_5280" {
  model             = "PA-5280"
  slug              = "palo-alto-pa-5280"
  part_number       = "PA-5280"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_7080" {
  model             = "PA-7080"
  slug              = "palo-alto-pa-7080"
  part_number       = "PA-7080"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_820" {
  model             = "PA-820"
  slug              = "palo-alto-pa-820"
  part_number       = "PA-820"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_device_type" "palo_alto_pa_850" {
  model             = "PA-850"
  slug              = "palo-alto-pa-850"
  part_number       = "PA-850"
  manufacturer_id   = netbox_manufacturer.palo_alto.id
}

resource "netbox_manufacturer" "panduit" {
  name = "Panduit"
  slug = "panduit"
}

resource "netbox_device_type" "panduit_cdpp_8_rg_s" {
  model             = "Mini-Com Shielded DIN Rail Patch Panel (8 Port)"
  slug              = "panduit-cdpp8rg-s"
  part_number       = "CDPP8RG-S"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cdpp_8_rg" {
  model             = "Mini-Com DIN Rail Patch Panel (8 Port)"
  slug              = "panduit-cdpp8rg"
  part_number       = "CDPP8RG"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cp_24_bly" {
  model             = "Mini-Com Shielded Patch Panel (24 Port, 1RU)"
  slug              = "panduit-cp24bly"
  part_number       = "CP24BLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cp_48_bly" {
  model             = "Mini-Com Shielded Patch Panel (48 Port, 2RU)"
  slug              = "panduit-cp48bly"
  part_number       = "CP48BLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cp_48_hdbl" {
  model             = "Mini-Com Shielded High Density Patch Panel (48 Port, 1RU)"
  slug              = "panduit-cp48hdbl"
  part_number       = "CP48HDBL"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpa_24_bly" {
  model             = "Mini-Com Shielded Angled Patch Panel (24 Port, 1RU)"
  slug              = "panduit-cpa24bly"
  part_number       = "CPA24BLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpa_48_bly" {
  model             = "Mini-Com Shielded Angled Patch Panel (48 Port, 2RU)"
  slug              = "panduit-cpa48bly"
  part_number       = "CPA48BLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpa_48_hdbl" {
  model             = "Mini-Com Shielded High Density Angled Patch Panel (48 Port, 1RU)"
  slug              = "panduit-cpa48hdbl"
  part_number       = "CPA48HDBL"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpp_24_fmwbly" {
  model             = "Mini-Com Flush Mount Patch Panel (24 Port, 1RU)"
  slug              = "panduit-cpp24fmwbly"
  part_number       = "CPP24FMWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpp_24_wbly" {
  model             = "Mini-Com Front Access Patch Panel (24 Port, 1RU)"
  slug              = "panduit-cpp24wbly"
  part_number       = "CPP24WBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpp_48_fmwbly" {
  model             = "Mini-Com Flush Mount Patch Panel (48 Port, 2RU)"
  slug              = "panduit-cpp48fmwbly"
  part_number       = "CPP48FMWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpp_48_hdewbl" {
  model             = "Mini-Com High Density Patch Panel (48 Port, 1RU)"
  slug              = "panduit-cpp48hdewbl"
  part_number       = "CPP48HDEWBL"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpp_48_wbly" {
  model             = "Mini-Com Front Access Patch Panel (48 Port, 2RU)"
  slug              = "panduit-cpp48wbly"
  part_number       = "CPP48WBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cpp_72_fmwbly" {
  model             = "Mini-Com Flush Mount Patch Panel (72 Port, 2RU)"
  slug              = "panduit-cpp72fmwbly"
  part_number       = "CPP72FMWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cppa_24_fmwbly" {
  model             = "Mini-Com Flush Mount Angled Patch Panel (24 Port, 1RU)"
  slug              = "panduit-cppa24fmwbly"
  part_number       = "CPPA24FMWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cppa_48_fmwbly" {
  model             = "Mini-Com Flush Mount Angled Patch Panel (48 Port, 2RU)"
  slug              = "panduit-cppa48fmwbly"
  part_number       = "CPPA48FMWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cppa_48_hdwbly" {
  model             = "Mini-Com High Density Angled Patch Panel (48 Port, 1RU)"
  slug              = "panduit-cppa48hdwbly"
  part_number       = "CPPA48HDWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_cppa_72_fmwbly" {
  model             = "Mini-Com Flush Mount Angled Patch Panel (72 Port, 2RU)"
  slug              = "panduit-cppa72fmwbly"
  part_number       = "CPPA72FMWBLY"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fce_1" {
  model             = "Quicknet Rack Mount Fiber Enclosure, 1 RU"
  slug              = "panduit-fce1"
  part_number       = "FCE1"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fce_1_u" {
  model             = "Opticom Rack Mount Fiber Enclosure, 1 RU, 4 Ports"
  slug              = "panduit-fce1u"
  part_number       = "FCE1U"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fce_2" {
  model             = "Quicknet Rack Mount Fiber Enclosure, 2 RU"
  slug              = "panduit-fce2"
  part_number       = "FCE2"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fce_2_u" {
  model             = "Opticom Rack Mount Fiber Enclosure, 2 RU, 8 Ports"
  slug              = "panduit-fce2u"
  part_number       = "FCE2U"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fmd_1" {
  model             = "Opticom Fiber Drawer (4 Adapters, 1RU)"
  slug              = "panduit-fmd1"
  part_number       = "FMD1"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fmd_2" {
  model             = "Opticom Fiber Drawer (8 Adapters, 2RU)"
  slug              = "panduit-fmd2"
  part_number       = "FMD2"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_frme_1" {
  model             = "Opticom Rack Mount Fiber Enclosure, 1 RU"
  slug              = "panduit-frme1"
  part_number       = "FRME1"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_frme_2" {
  model             = "Opticom Rack Mount Fiber Enclosure, 2 RU"
  slug              = "panduit-frme2"
  part_number       = "FRME2"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_frme_4" {
  model             = "Opticom Rack Mount Fiber Enclosure, 4 RU"
  slug              = "panduit-frme4"
  part_number       = "FRME4"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fwme_2" {
  model             = "Opticom Wallmount Fiber Enclosure (2 Adapters)"
  slug              = "panduit-fwme2"
  part_number       = "FWME2"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fwme_4" {
  model             = "Opticom Wallmount Fiber Enclosure (4 Adapters)"
  slug              = "panduit-fwme4"
  part_number       = "FWME4"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_fwme_8" {
  model             = "Opticom Wallmount Fiber Enclosure (8 Adapters)"
  slug              = "panduit-fwme8"
  part_number       = "FWME8"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_device_type" "panduit_p_36_g_18_m" {
  model             = "P36G18M"
  slug              = "panduit-p36g18m"
  part_number       = "P36G18M"
  manufacturer_id   = netbox_manufacturer.panduit.id
}

resource "netbox_manufacturer" "parks" {
  name = "Parks"
  slug = "parks"
}

resource "netbox_device_type" "parks_fiberlink_30028" {
  model             = "Fiberlink 30028"
  slug              = "parks-fiberlink-30028"
  manufacturer_id   = netbox_manufacturer.parks.id
}

resource "netbox_manufacturer" "peplink" {
  name = "Peplink"
  slug = "peplink"
}

resource "netbox_device_type" "peplink_balance_1350" {
  model             = "Balance 1350"
  slug              = "peplink-balance-1350"
  part_number       = "BPL-135"
  manufacturer_id   = netbox_manufacturer.peplink.id
}

resource "netbox_device_type" "peplink_balance_305" {
  model             = "Balance 305"
  slug              = "peplink-balance-305"
  part_number       = "BPL-305"
  manufacturer_id   = netbox_manufacturer.peplink.id
}

resource "netbox_manufacturer" "pluribus" {
  name = "Pluribus"
  slug = "pluribus"
}

resource "netbox_device_type" "freedom_e_28_q_l" {
  model             = "Freedom E28Q-L"
  slug              = "freedom-e28q-l"
  part_number       = "E28Q-L"
  manufacturer_id   = netbox_manufacturer.pluribus.id
}

resource "netbox_manufacturer" "qct" {
  name = "QCT"
  slug = "qct"
}

resource "netbox_device_type" "qct_quantagrid_d_51_b_2_u" {
  model             = "QuantaGrid D51B-2U"
  slug              = "qct-quantagrid-d51b-2u"
  manufacturer_id   = netbox_manufacturer.qct.id
}

resource "netbox_manufacturer" "qnap" {
  name = "QNAP"
  slug = "qnap"
}

resource "netbox_device_type" "qnap_ts_1263_u_rp" {
  model             = "TS-1263U-RP"
  slug              = "qnap-ts-1263u-rp"
  part_number       = "TS-1263U-RP-4G"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_1683_xu_rp" {
  model             = "TS-1683XU-RP"
  slug              = "qnap-ts-1683xu-rp"
  part_number       = "TS-1683XU-RP"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_1685_d_1521_16_g_550_w" {
  model             = "TS-1685"
  slug              = "qnap-ts-1685-d1521-16g-550w"
  part_number       = "TS-1685-D1521-16G-550W"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_212" {
  model             = "TS-212"
  slug              = "qnap-ts-212"
  part_number       = "TS-212"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_412" {
  model             = "TS-412"
  slug              = "qnap-ts-412"
  part_number       = "TS-412"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_453_b" {
  model             = "TS-453B"
  slug              = "qnap-ts-453b"
  part_number       = "TS-453B"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_453_d" {
  model             = "TS-453D"
  slug              = "qnap-ts-453d"
  part_number       = "TS-453d"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_453_u_rp" {
  model             = "TS-453U-RP"
  slug              = "qnap-ts-453u-rp"
  part_number       = "TS-453U-RP"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_453_mini" {
  model             = "TS-453mini"
  slug              = "qnap-ts-453mini"
  part_number       = "TS-453mini"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_469_l" {
  model             = "TS-469L"
  slug              = "qnap-ts-469l"
  part_number       = "TS-469L"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_469_u_rp" {
  model             = "TS-469U-RP"
  slug              = "qnap-ts-469u-rp"
  part_number       = "TS-469U-RP"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_873" {
  model             = "TS-873"
  slug              = "qnap-ts-873"
  part_number       = "TS-873"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_879_u_rp" {
  model             = "TS-879U-RP"
  slug              = "qnap-ts-879u-rp"
  part_number       = "TS-879U-RP"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_ec_1280_u" {
  model             = "TS-EC1280U"
  slug              = "qnap-ts-ec1280u"
  part_number       = "TS-EC1280U"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_h_1886_xu_rp" {
  model             = "TS-h1886XU-RP"
  slug              = "qnap-ts-h1886xu-rp"
  part_number       = "TS-h1886XU-RP"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_1283_xu_rp" {
  model             = "TS-1283XU-RP"
  slug              = "qnap-ts-1283xu-rp"
  part_number       = "TS-1283XU-RP"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_431_xeu" {
  model             = "TS-431XeU"
  slug              = "qnap-ts-431xeu"
  part_number       = "TS-431XeU"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_device_type" "qnap_ts_459_pro_plus" {
  model             = "TS-459pro+"
  slug              = "qnap-ts-459pro-plus"
  part_number       = "TS-459pro+"
  manufacturer_id   = netbox_manufacturer.qnap.id
}

resource "netbox_manufacturer" "qtech" {
  name = "QTECH"
  slug = "qtech"
}

resource "netbox_device_type" "qtech_qsw_6900_32_h" {
  model             = "QSW-6900-32H"
  slug              = "qtech-qsw-6900-32h"
  part_number       = "QSW-6900-32H"
  manufacturer_id   = netbox_manufacturer.qtech.id
}

resource "netbox_device_type" "qtech_qsw_6900_56_f" {
  model             = "QSW-6900-56F"
  slug              = "qtech-qsw-6900-56f"
  part_number       = "QSW-6900-56F"
  manufacturer_id   = netbox_manufacturer.qtech.id
}

resource "netbox_device_type" "qtech_qsw_6900_56_lf" {
  model             = "QSW-6900-56LF"
  slug              = "qtech-qsw-6900-56lf"
  part_number       = "QSW-6900-56LF"
  manufacturer_id   = netbox_manufacturer.qtech.id
}

resource "netbox_manufacturer" "qotom" {
  name = "Qotom"
  slug = "qotom"
}

resource "netbox_device_type" "qotom_q_330_g_4" {
  model             = "Q330G4"
  slug              = "qotom-q330g4"
  manufacturer_id   = netbox_manufacturer.qotom.id
}

resource "netbox_manufacturer" "rad" {
  name = "RAD"
  slug = "rad"
}

resource "netbox_device_type" "rad_etx_2_i_10_g" {
  model             = "ETX-2i-10G"
  slug              = "rad-etx-2i-10g"
  manufacturer_id   = netbox_manufacturer.rad.id
}

resource "netbox_manufacturer" "raritan" {
  name = "Raritan"
  slug = "raritan"
}

resource "netbox_device_type" "raritan_px_2_2493" {
  model             = "PX2-2493"
  slug              = "raritan-px2-2493"
  part_number       = "PX2-2493"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5201_jr" {
  model             = "PX3-5201JR"
  slug              = "raritan-px3-5201jr"
  part_number       = "PX3-5201JR"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5469_r" {
  model             = "PX3-5469R"
  slug              = "raritan-px3-5469r"
  part_number       = "PX3-5469R"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5496_jv" {
  model             = "PX3-5496JV"
  slug              = "raritan-px3-5496jv"
  part_number       = "PX3-5496JV"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5497_v" {
  model             = "PX3-5497V"
  slug              = "raritan-px3-5497v"
  part_number       = "PX3-5497V"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5664_u" {
  model             = "PX3-5664U"
  slug              = "raritan-px3-5664u"
  part_number       = "PX3-5664U"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5702_jv" {
  model             = "PX3-5702JV"
  slug              = "raritan-px3-5702jv"
  part_number       = "PX3-5702JV"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5724_v" {
  model             = "PX3-5724V"
  slug              = "raritan-px3-5724v"
  part_number       = "PX3-5724V"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_5870_v" {
  model             = "PX3-5870V"
  slug              = "raritan-px3-5870v"
  part_number       = "PX3-5870V"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_device_type" "raritan_px_3_ts_5184_cr" {
  model             = "PX3TS-5184CR"
  slug              = "raritan-px3ts-5184cr"
  part_number       = "PX3TS-5184CR"
  manufacturer_id   = netbox_manufacturer.raritan.id
}

resource "netbox_manufacturer" "raspberry_pi" {
  name = "Raspberry Pi"
  slug = "raspberry-pi"
}

resource "netbox_device_type" "raspberry_pi_rpi_3_modb_1_gb" {
  model             = "Raspberry Pi 3 Model B 1GB"
  slug              = "raspberry-pi-rpi3-modb-1gb"
  part_number       = "RPI3-MODB-1GB"
  manufacturer_id   = netbox_manufacturer.raspberry_pi.id
}

resource "netbox_device_type" "raspberry_pi_rpi_3_modbp_1_gb" {
  model             = "Raspberry Pi 3 Model B+ 1GB"
  slug              = "raspberry-pi-rpi3-modbp-1gb"
  part_number       = "RPI3-MODBP-1GB"
  manufacturer_id   = netbox_manufacturer.raspberry_pi.id
}

resource "netbox_device_type" "raspberry_pi_rpi_4_modb_1_gb" {
  model             = "Raspberry Pi 4 Model B 1GB"
  slug              = "raspberry-pi-rpi4-modb-1gb"
  part_number       = "RPI4-MODB-1GB"
  manufacturer_id   = netbox_manufacturer.raspberry_pi.id
}

resource "netbox_device_type" "raspberry_pi_rpi_4_modb_2_gb" {
  model             = "Raspberry Pi 4 Model B 2GB"
  slug              = "raspberry-pi-rpi4-modb-2gb"
  part_number       = "RPI4-MODB-2GB"
  manufacturer_id   = netbox_manufacturer.raspberry_pi.id
}

resource "netbox_device_type" "raspberry_pi_rpi_4_modb_4_gb" {
  model             = "Raspberry Pi 4 Model B 4GB"
  slug              = "raspberry-pi-rpi4-modb-4gb"
  part_number       = "RPI4-MODB-4GB"
  manufacturer_id   = netbox_manufacturer.raspberry_pi.id
}

resource "netbox_device_type" "raspberry_pi_rpi_4_modb_8_gb" {
  model             = "Raspberry Pi 4 Model B 8GB"
  slug              = "raspberry-pi-rpi4-modb-8gb"
  part_number       = "RPI4-MODB-8GB"
  manufacturer_id   = netbox_manufacturer.raspberry_pi.id
}

resource "netbox_manufacturer" "riverbed" {
  name = "Riverbed"
  slug = "riverbed"
}

resource "netbox_device_type" "riverbed_cx_1555" {
  model             = "CX1555"
  slug              = "riverbed-cx1555"
  part_number       = "CX1555"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_3070" {
  model             = "CX3070"
  slug              = "riverbed-cx3070"
  part_number       = "CX3070"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_5055" {
  model             = "CX5055"
  slug              = "riverbed-cx5055"
  part_number       = "CX5055"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_555" {
  model             = "CX555"
  slug              = "riverbed-cx555"
  part_number       = "CX555"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_570" {
  model             = "CX570"
  slug              = "riverbed-cx570"
  part_number       = "CX570"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_7055" {
  model             = "CX7055"
  slug              = "riverbed-cx7055"
  part_number       = "CX7055"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_7070" {
  model             = "CX7070"
  slug              = "riverbed-cx7070"
  part_number       = "CX7070"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_755" {
  model             = "CX755"
  slug              = "riverbed-cx755"
  part_number       = "CX755"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_device_type" "riverbed_cx_770" {
  model             = "CX770"
  slug              = "riverbed-cx770"
  part_number       = "CX770"
  manufacturer_id   = netbox_manufacturer.riverbed.id
}

resource "netbox_manufacturer" "rockwell_automation" {
  name = "Rockwell Automation"
  slug = "rockwell-automation"
}

resource "netbox_device_type" "rockwell_automation_1756_a_10" {
  model             = "ControlLogix Rack - 10 Slot"
  slug              = "rockwell-automation-1756-a10"
  part_number       = "1756-A10"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_10_k" {
  model             = "ControlLogix Rack K - 10 Slot"
  slug              = "rockwell-automation-1756-a10k"
  part_number       = "1756-A10K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_10_xt" {
  model             = "ControlLogix Rack XT - 10 Slot"
  slug              = "rockwell-automation-1756-a10xt"
  part_number       = "1756-A10XT"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_13" {
  model             = "ControlLogix Rack - 13 Slot"
  slug              = "rockwell-automation-1756-a13"
  part_number       = "1756-A13"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_13_k" {
  model             = "ControlLogix Rack K - 13 Slot"
  slug              = "rockwell-automation-1756-a13k"
  part_number       = "1756-A13K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_17" {
  model             = "ControlLogix Rack - 17 Slot"
  slug              = "rockwell-automation-1756-a17"
  part_number       = "1756-A17"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_17_k" {
  model             = "ControlLogix Rack K - 17 Slot"
  slug              = "rockwell-automation-1756-a17k"
  part_number       = "1756-A17K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_4" {
  model             = "ControlLogix Rack - 4 Slot"
  slug              = "rockwell-automation-1756-a4"
  part_number       = "1756-a4"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_4_k" {
  model             = "ControlLogix Rack K - 4 Slot"
  slug              = "rockwell-automation-1756-a4k"
  part_number       = "1756-A4K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_7" {
  model             = "ControlLogix Rack - 7 Slot"
  slug              = "rockwell-automation-1756-a7"
  part_number       = "1756-A7"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_7_k" {
  model             = "ControlLogix Rack K - 7 Slot"
  slug              = "rockwell-automation-1756-a7k"
  part_number       = "1756-a7k"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_a_7_xt" {
  model             = "ControlLogix Rack XT - 7 Slot"
  slug              = "rockwell-automation-1756-a7xt"
  part_number       = "1756-A7XT"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_cms_1_b_1" {
  model             = "ControlLogix Compute - Windows"
  slug              = "rockwell-automation-1756-cms1b1"
  part_number       = "1756-CMS1B1"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_cms_1_c_1" {
  model             = "ControlLogix Compute - Linux"
  slug              = "rockwell-automation-1756-cms1c1"
  part_number       = "1756-CMS1C1"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_f" {
  model             = "ControlLogix Fiber Ethernet Adapter (EN2F)"
  slug              = "rockwell-automation-1756-en2f"
  part_number       = "1756-EN2F"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_fk" {
  model             = "ControlLogix Fiber Ethernet Adapter K (EN2FK)"
  slug              = "rockwell-automation-1756-en2fk"
  part_number       = "1756-EN2FK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_t" {
  model             = "ControlLogix Ethernet Adapter (EN2T)"
  slug              = "rockwell-automation-1756-en2t"
  part_number       = "1756-EN2T"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_tk" {
  model             = "ControlLogix Ethernet Adapter K (EN2TK)"
  slug              = "rockwell-automation-1756-en2tk"
  part_number       = "1756-EN2TK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_tp" {
  model             = "ControlLogix Ethernet PRP Adapter (EN2TP)"
  slug              = "rockwell-automation-1756-en2tp"
  part_number       = "1756-EN2TP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_tpk" {
  model             = "ControlLogix Ethernet PRP Adapter K (EN2TP)"
  slug              = "rockwell-automation-1756-en2tpk"
  part_number       = "1756-EN2TPK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_tr" {
  model             = "ControlLogix Ethernet Adapter (EN2TR)"
  slug              = "rockwell-automation-1756-en2tr"
  part_number       = "1756-EN2TR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_2_trk" {
  model             = "ControlLogix Ethernet Adapter K (EN2TR)"
  slug              = "rockwell-automation-1756-en2trk"
  part_number       = "1756-EN2TRK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_3_tr" {
  model             = "ControlLogix Ethernet Adapter (EN3TR)"
  slug              = "rockwell-automation-1756-en3tr"
  part_number       = "1756-EN3TR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_3_trk" {
  model             = "ControlLogix Ethernet Adapter K (EN3TR)"
  slug              = "rockwell-automation-1756-en3trk"
  part_number       = "1756-EN3TRK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_4_tr" {
  model             = "ControlLogix Ethernet Adapter (EN4TR)"
  slug              = "rockwell-automation-1756-en4tr"
  part_number       = "1756-EN4TR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_en_4_trk" {
  model             = "ControlLogix Ethernet Adapter K (EN4TR)"
  slug              = "rockwell-automation-1756-en4trk"
  part_number       = "1756-EN4TRK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_enbt" {
  model             = "ControlLogix Ethernet Adapter (ENBT)"
  slug              = "rockwell-automation-1756-enbt"
  part_number       = "1756-ENBT"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_enbtk" {
  model             = "ControlLogix Ethernet Adapter K (ENBT)"
  slug              = "rockwell-automation-1756-enbtk"
  part_number       = "1756-ENBTK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_controllogix_web_module" {
  model             = "ControlLogix Web Module"
  slug              = "rockwell-automation-controllogix-web-module"
  part_number       = "1756-EWEB"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_81_e_nse" {
  model             = "ControlLogix 5580 L81E-NSE"
  slug              = "rockwell-automation-1756-l81e-nse"
  part_number       = "1756-L81E-NSE"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_81_e" {
  model             = "ControlLogix 5580 L81E"
  slug              = "rockwell-automation-1756-l81e"
  part_number       = "1756-L81E"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_81_ek" {
  model             = "ControlLogix 5580 L81EK"
  slug              = "rockwell-automation-1756-l81ek"
  part_number       = "1756-L81EK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_81_ep" {
  model             = "ControlLogix 5580 L81EP"
  slug              = "rockwell-automation-1756-l81ep"
  part_number       = "1756-L81EP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_81_es" {
  model             = "GuardLogix 5580 L81ES"
  slug              = "rockwell-automation-1756-l81es"
  part_number       = "1756-L81ES"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_81_esk" {
  model             = "GuardLogix 5580 L81ESK"
  slug              = "rockwell-automation-1756-l81esk"
  part_number       = "1756-L81ESK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_82_e_nse" {
  model             = "ControlLogix 5580 L82E-NSE"
  slug              = "rockwell-automation-1756-l82e-nse"
  part_number       = "1756-L82E-NSE"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_82_e" {
  model             = "ControlLogix 5580 L82E"
  slug              = "rockwell-automation-1756-l82e"
  part_number       = "1756-L82E"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_82_ek" {
  model             = "ControlLogix 5580 L82EK"
  slug              = "rockwell-automation-1756-l82ek"
  part_number       = "1756-L82EK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_82_es" {
  model             = "GuardLogix 5580 L82ES"
  slug              = "rockwell-automation-1756-l82es"
  part_number       = "1756-L82ES"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_82_esk" {
  model             = "GuardLogix 5580 L82ESK"
  slug              = "rockwell-automation-1756-l82esk"
  part_number       = "1756-L82ESK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_83_e_nse" {
  model             = "ControlLogix 5580 L83E-NSE"
  slug              = "rockwell-automation-1756-l83e-nse"
  part_number       = "1756-L83E-NSE"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_83_e" {
  model             = "ControlLogix 5580 L83E"
  slug              = "rockwell-automation-1756-l83e"
  part_number       = "1756-L83E"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_83_ek" {
  model             = "ControlLogix 5580 L83EK"
  slug              = "rockwell-automation-1756-l83ek"
  part_number       = "1756-L83EK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_83_ep" {
  model             = "ControlLogix 5580 L83EP"
  slug              = "rockwell-automation-1756-l83ep"
  part_number       = "1756-L83EP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_83_es" {
  model             = "GuardLogix 5580 L83ES"
  slug              = "rockwell-automation-1756-l83es"
  part_number       = "1756-L83ES"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_83_esk" {
  model             = "GuardLogix 5580 L83ESK"
  slug              = "rockwell-automation-1756-l83esk"
  part_number       = "1756-L83ESK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_84_e_nse" {
  model             = "ControlLogix 5580 L84E-NSE"
  slug              = "rockwell-automation-1756-l84e-nse"
  part_number       = "1756-L84E-NSE"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_84_e" {
  model             = "ControlLogix 5580 L84E"
  slug              = "rockwell-automation-1756-l84e"
  part_number       = "1756-L84E"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_84_ek" {
  model             = "ControlLogix 5580 L84EK"
  slug              = "rockwell-automation-1756-l84ek"
  part_number       = "1756-L84EK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_84_es" {
  model             = "GuardLogix 5580 L84ES"
  slug              = "rockwell-automation-1756-l84es"
  part_number       = "1756-L84ES"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_84_esk" {
  model             = "GuardLogix 5580 L84ESK"
  slug              = "rockwell-automation-1756-l84esk"
  part_number       = "1756-L84ESK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_85_e_nse" {
  model             = "ControlLogix 5580 L85E-NSE"
  slug              = "rockwell-automation-1756-l85e-nse"
  part_number       = "1756-L85E-NSE"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_85_e" {
  model             = "ControlLogix 5580 L85E"
  slug              = "rockwell-automation-1756-l85e"
  part_number       = "1756-L85E"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_85_ek" {
  model             = "ControlLogix 5580 L85EK"
  slug              = "rockwell-automation-1756-l85ek"
  part_number       = "1756-L85EK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1756_l_85_ep" {
  model             = "ControlLogix 5580 L85EP"
  slug              = "rockwell-automation-1756-l85ep"
  part_number       = "1756-L85EP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_sa" {
  model             = "1783-BMS06SA"
  slug              = "rockwell-automation-1783-bms06sa"
  part_number       = "1783-BMS06SA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_sga" {
  model             = "1783-BMS06SGA"
  slug              = "rockwell-automation-1783-bms06sga"
  part_number       = "1783-BMS06SGA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_sgl" {
  model             = "1783-BMS06SGL"
  slug              = "rockwell-automation-1783-bms06sgl"
  part_number       = "1783-BMS06SGL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_sl" {
  model             = "1783-BMS06SL"
  slug              = "rockwell-automation-1783-bms06sl"
  part_number       = "1783-BMS06SL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_ta" {
  model             = "1783-BMS06TA"
  slug              = "rockwell-automation-1783-bms06ta"
  part_number       = "1783-BMS06TA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_tga" {
  model             = "1783-BMS06TGA"
  slug              = "rockwell-automation-1783-bms06tga"
  part_number       = "1783-BMS06TGA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_tgl" {
  model             = "1783-BMS06TGL"
  slug              = "rockwell-automation-1783-bms06tgl"
  part_number       = "1783-BMS06TGL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_06_tl" {
  model             = "1783-BMS06TL"
  slug              = "rockwell-automation-1783-bms06tl"
  part_number       = "1783-BMS06TL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_10_ca" {
  model             = "1783-BMS10CA"
  slug              = "rockwell-automation-1783-bms10ca"
  part_number       = "1783-BMS10CA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_10_cga" {
  model             = "1783-BMS10CGA"
  slug              = "rockwell-automation-1783-bms10cga"
  part_number       = "1783-BMS10CGA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_10_cgl" {
  model             = "1783-BMS10CGL"
  slug              = "rockwell-automation-1783-bms10cgl"
  part_number       = "1783-BMS10CGL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_10_cgn" {
  model             = "1783-BMS10CGN"
  slug              = "rockwell-automation-1783-bms10cgn"
  part_number       = "1783-BMS10CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_10_cgp" {
  model             = "1783-BMS10CGP"
  slug              = "rockwell-automation-1783-bms10cgp"
  part_number       = "1783-BMS10CGP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_10_cl" {
  model             = "1783-BMS10CL"
  slug              = "rockwell-automation-1783-bms10cl"
  part_number       = "1783-BMS10CL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_20_ca" {
  model             = "1783-BMS20CA"
  slug              = "rockwell-automation-1783-bms20ca"
  part_number       = "1783-BMS20CA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_20_cgl" {
  model             = "1783-BMS20CGL"
  slug              = "rockwell-automation-1783-bms20cgl"
  part_number       = "1783-BMS20CGL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_20_cgn" {
  model             = "1783-BMS20CGN"
  slug              = "rockwell-automation-1783-bms20cgn"
  part_number       = "1783-BMS20CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_20_cgp" {
  model             = "1783-BMS20CGP"
  slug              = "rockwell-automation-1783-bms20cgp"
  part_number       = "1783-BMS20CGP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_20_cgpk" {
  model             = "1783-BMS20CGPK"
  slug              = "rockwell-automation-1783-bms20cgpk"
  part_number       = "1783-BMS20CGPK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_20_cl" {
  model             = "1783-BMS20CL"
  slug              = "rockwell-automation-1783-bms20cl"
  part_number       = "1783-BMS20CL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_4_s_2_sga" {
  model             = "1783-BMS4S2SGA"
  slug              = "rockwell-automation-1783-bms4s2sga"
  part_number       = "1783-BMS4S2SGA"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_bms_4_s_2_sgl" {
  model             = "1783-BMS4S2SGL"
  slug              = "rockwell-automation-1783-bms4s2sgl"
  part_number       = "1783-BMS4S2SGL"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_16_t_4_cgn" {
  model             = "1783-HMS16T4CGN"
  slug              = "rockwell-automation-1783-hms16t4cgn"
  part_number       = "1783-HMS16T4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_16_tg_4_cgn" {
  model             = "1783-HMS16TG4CGN"
  slug              = "rockwell-automation-1783-hms16tg4cgn"
  part_number       = "1783-HMS16TG4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_16_tg_4_cgr" {
  model             = "1783-HMS16TG4CGR"
  slug              = "rockwell-automation-1783-hms16tg4cgr"
  part_number       = "1783-HMS16TG4CGR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_c_4_cgn" {
  model             = "1783-HMS4C4CGN"
  slug              = "rockwell-automation-1783-hms4c4cgn"
  part_number       = "1783-HMS4C4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_eg_8_cgn" {
  model             = "1783-HMS4EG8CGN"
  slug              = "rockwell-automation-1783-hms4eg8cgn"
  part_number       = "1783-HMS4EG8CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_eg_8_cgr" {
  model             = "1783-HMS4EG8CGR"
  slug              = "rockwell-automation-1783-hms4eg8cgr"
  part_number       = "1783-HMS4EG8CGR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_s_8_e_4_cgn" {
  model             = "1783-HMS4S8E4CGN"
  slug              = "rockwell-automation-1783-hms4s8e4cgn"
  part_number       = "1783-HMS4S8E4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_sg_8_eg_4_cgn" {
  model             = "1783-HMS4SG8EG4CGN"
  slug              = "rockwell-automation-1783-hms4sg8eg4cgn"
  part_number       = "1783-HMS4SG8EG4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_sg_8_eg_4_cgr" {
  model             = "1783-HMS4SG8EG4CGR"
  slug              = "rockwell-automation-1783-hms4sg8eg4cgr"
  part_number       = "1783-HMS4SG8EG4CGR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_4_t_4_e_4_cgn" {
  model             = "1783-HMS4T4E4CGN"
  slug              = "rockwell-automation-1783-hms4t4e4cgn"
  part_number       = "1783-HMS4T4E4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_s_4_cgn" {
  model             = "1783-HMS8S4CGN"
  slug              = "rockwell-automation-1783-hms8s4cgn"
  part_number       = "1783-HMS8S4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_sg_4_cgn" {
  model             = "1783-HMS8SG4CGN"
  slug              = "rockwell-automation-1783-hms8sg4cgn"
  part_number       = "1783-HMS8SG4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_sg_4_cgr" {
  model             = "1783-HMS8SG4CGR"
  slug              = "rockwell-automation-1783-hms8sg4cgr"
  part_number       = "1783-HMS8SG4CGR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_t_4_cgn" {
  model             = "1783-HMS8T4CGN"
  slug              = "rockwell-automation-1783-hms8t4cgn"
  part_number       = "1783-HMS8T4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_tg_4_cgn" {
  model             = "1783-HMS8TG4CGN"
  slug              = "rockwell-automation-1783-hms8tg4cgn"
  part_number       = "1783-HMS8TG4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_tg_4_cgr" {
  model             = "1783-HMS8TG4CGR"
  slug              = "rockwell-automation-1783-hms8tg4cgr"
  part_number       = "1783-HMS8TG4CGR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_tg_8_eg_4_cgn" {
  model             = "1783-HMS8TG8EG4CGN"
  slug              = "rockwell-automation-1783-hms8tg8eg4cgn"
  part_number       = "1783-HMS8TG8EG4CGN"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_1783_hms_8_tg_8_eg_4_cgr" {
  model             = "1783-HMS8TG8EG4CGR"
  slug              = "rockwell-automation-1783-hms8tg8eg4cgr"
  part_number       = "1783-HMS8TG8EG4CGR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_aen_2_tr" {
  model             = "Compact 5000 I/O Ethernet Adapter (AEN2TR)"
  slug              = "rockwell-automation-5069-aen2tr"
  part_number       = "5069-AEN2TR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_aentr" {
  model             = "Compact 5000 I/O Ethernet Adapter (AENTR)"
  slug              = "rockwell-automation-5069-aentr"
  part_number       = "5069-AENTR"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_aentrk" {
  model             = "Compact 5000 I/O Ethernet Adapter (AENTRK)"
  slug              = "rockwell-automation-5069-aentrk"
  part_number       = "5069-AENTRK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_306_er" {
  model             = "CompactLogix 5380 L306ER"
  slug              = "rockwell-automation-5069-l306er"
  part_number       = "5069-L306ER"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_306_erm" {
  model             = "CompactLogix 5380 L306ERM"
  slug              = "rockwell-automation-5069-l306erm"
  part_number       = "5069-L306ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_306_erms_2" {
  model             = "CompactGuardLogix 5380 L306ERMS2"
  slug              = "rockwell-automation-5069-l306erms2"
  part_number       = "5069-L306ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_306_erms_3" {
  model             = "CompactGuardLogix 5380 L306ERMS3"
  slug              = "rockwell-automation-5069-l306erms3"
  part_number       = "5069-L306ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_306_ers_2" {
  model             = "CompactGuardLogix 5380 L306ERS2"
  slug              = "rockwell-automation-5069-l306ers2"
  part_number       = "5069-L306ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_3100_erm" {
  model             = "CompactLogix 5380 L3100ERM"
  slug              = "rockwell-automation-5069-l3100erm"
  part_number       = "5069-L3100ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_3100_erms_2" {
  model             = "CompactGuardLogix 5380 L3100ERMS2"
  slug              = "rockwell-automation-5069-l3100erms2"
  part_number       = "5069-L3100ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_3100_erms_3" {
  model             = "CompactGuardLogix 5380 L3100ERMS3"
  slug              = "rockwell-automation-5069-l3100erms3"
  part_number       = "5069-L3100ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_3100_ers_2" {
  model             = "CompactGuardLogix 5380 L3100ERS2"
  slug              = "rockwell-automation-5069-l3100ers2"
  part_number       = "5069-L3100ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_310_er_nse" {
  model             = "CompactLogix 5380 L310ER-NSE"
  slug              = "rockwell-automation-5069-l310er-nse"
  part_number       = "5069-L310ER-NSE"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_310_er" {
  model             = "CompactLogix 5380 L310ER"
  slug              = "rockwell-automation-5069-l310er"
  part_number       = "5069-L310ER"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_310_erm" {
  model             = "CompactLogix 5380 L310ERM"
  slug              = "rockwell-automation-5069-l310erm"
  part_number       = "5069-L310ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_310_erms_2" {
  model             = "CompactGuardLogix 5380 L310ERMS2"
  slug              = "rockwell-automation-5069-l310erms2"
  part_number       = "5069-L310ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_310_erms_3" {
  model             = "CompactGuardLogix 5380 L310ERMS3"
  slug              = "rockwell-automation-5069-l310erms3"
  part_number       = "5069-L310ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_310_ers_2" {
  model             = "CompactGuardLogix 5380 L310ERS2"
  slug              = "rockwell-automation-5069-l310ers2"
  part_number       = "5069-L310ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_er" {
  model             = "CompactLogix 5380 L320ER"
  slug              = "rockwell-automation-5069-l320er"
  part_number       = "5069-L320ER"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_erm" {
  model             = "CompactLogix 5380 L320ERM"
  slug              = "rockwell-automation-5069-l320erm"
  part_number       = "5069-L320ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_ermk" {
  model             = "CompactLogix 5380 L320ERMK"
  slug              = "rockwell-automation-5069-l320ermk"
  part_number       = "5069-L320ERMK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_erms_2" {
  model             = "CompactGuardLogix 5380 L320ERMS2"
  slug              = "rockwell-automation-5069-l320erms2"
  part_number       = "5069-L320ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_erms_2_k" {
  model             = "CompactGuardLogix 5380 L320ERMS2K"
  slug              = "rockwell-automation-5069-l320erms2k"
  part_number       = "5069-L320ERMS2K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_erms_3" {
  model             = "CompactGuardLogix 5380 L320ERMS3"
  slug              = "rockwell-automation-5069-l320erms3"
  part_number       = "5069-L320ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_erms_3_k" {
  model             = "CompactGuardLogix 5380 L320ERMS3K"
  slug              = "rockwell-automation-5069-l320erms3k"
  part_number       = "5069-L320ERMS3K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_erp" {
  model             = "CompactLogix 5380 L320ERP"
  slug              = "rockwell-automation-5069-l320erp"
  part_number       = "5069-L320ERP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_ers_2" {
  model             = "CompactGuardLogix 5380 L320ERS2"
  slug              = "rockwell-automation-5069-l320ers2"
  part_number       = "5069-L320ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_320_ers_2_k" {
  model             = "CompactGuardLogix 5380 L320ERS2K"
  slug              = "rockwell-automation-5069-l320ers2k"
  part_number       = "5069-L320ERS2K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_er" {
  model             = "CompactLogix 5380 L330ER"
  slug              = "rockwell-automation-5069-l330er"
  part_number       = "5069-L330ER"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_erm" {
  model             = "CompactLogix 5380 L330ERM"
  slug              = "rockwell-automation-5069-l330erm"
  part_number       = "5069-L330ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_ermk" {
  model             = "CompactLogix 5380 L330ERMK"
  slug              = "rockwell-automation-5069-l330ermk"
  part_number       = "5069-L330ERMK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_erms_2" {
  model             = "CompactGuardLogix 5380 L330ERMS2"
  slug              = "rockwell-automation-5069-l330erms2"
  part_number       = "5069-L330ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_erms_2_k" {
  model             = "CompactGuardLogix 5380 L330ERMS2K"
  slug              = "rockwell-automation-5069-l330erms2k"
  part_number       = "5069-L330ERMS2K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_erms_3" {
  model             = "CompactGuardLogix 5380 L330ERMS3"
  slug              = "rockwell-automation-5069-l330erms3"
  part_number       = "5069-L330ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_erms_3_k" {
  model             = "CompactGuardLogix 5380 L330ERMS3K"
  slug              = "rockwell-automation-5069-l330erms3k"
  part_number       = "5069-L330ERMS3K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_ers_2" {
  model             = "CompactGuardLogix 5380 L330ERS2"
  slug              = "rockwell-automation-5069-l330ers2"
  part_number       = "5069-L330ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_330_ers_2_k" {
  model             = "CompactGuardLogix 5380 L330ERS2K"
  slug              = "rockwell-automation-5069-l330ers2k"
  part_number       = "5069-L330ERS2K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_340_er" {
  model             = "CompactLogix 5380 L340ER"
  slug              = "rockwell-automation-5069-l340er"
  part_number       = "5069-L340ER"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_340_erm" {
  model             = "CompactLogix 5380 L340ERM"
  slug              = "rockwell-automation-5069-l340erm"
  part_number       = "5069-L340ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_340_erms_2" {
  model             = "CompactGuardLogix 5380 L340ERMS2"
  slug              = "rockwell-automation-5069-l340erms2"
  part_number       = "5069-L340ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_340_erms_3" {
  model             = "CompactGuardLogix 5380 L340ERMS3"
  slug              = "rockwell-automation-5069-l340erms3"
  part_number       = "5069-L340ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_340_erp" {
  model             = "CompactLogix 5380 L340ERP"
  slug              = "rockwell-automation-5069-l340erp"
  part_number       = "5069-L340ERP"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_340_ers_2" {
  model             = "CompactGuardLogix 5380 L340ERS2"
  slug              = "rockwell-automation-5069-l340ers2"
  part_number       = "5069-L340ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_erm" {
  model             = "CompactLogix 5380 L350ERM"
  slug              = "rockwell-automation-5069-l350erm"
  part_number       = "5069-L350ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_ermk" {
  model             = "CompactLogix 5380 L350ERMK"
  slug              = "rockwell-automation-5069-l350ermk"
  part_number       = "5069-L350ERMK"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_erms_2" {
  model             = "CompactGuardLogix 5380 L350ERMS2"
  slug              = "rockwell-automation-5069-l350erms2"
  part_number       = "5069-L350ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_erms_2_k" {
  model             = "CompactGuardLogix 5380 L350ERMS2K"
  slug              = "rockwell-automation-5069-l350erms2k"
  part_number       = "5069-L350ERMS2K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_erms_3" {
  model             = "CompactGuardLogix 5380 L350ERMS3"
  slug              = "rockwell-automation-5069-l350erms3"
  part_number       = "5069-L350ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_erms_3_k" {
  model             = "CompactGuardLogix 5380 L350ERMS3K"
  slug              = "rockwell-automation-5069-l350erms3k"
  part_number       = "5069-L350ERMS3K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_ers_2" {
  model             = "CompactGuardLogix 5380 L350ERS2"
  slug              = "rockwell-automation-5069-l350ers2"
  part_number       = "5069-L350ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_350_ers_2_k" {
  model             = "CompactGuardLogix 5380 L350ERS2K"
  slug              = "rockwell-automation-5069-l350ers2k"
  part_number       = "5069-L350ERS2K"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_380_erm" {
  model             = "CompactLogix 5380 L380ERM"
  slug              = "rockwell-automation-5069-l380erm"
  part_number       = "5069-L380ERM"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_380_erms_2" {
  model             = "CompactGuardLogix 5380 L380ERMS2"
  slug              = "rockwell-automation-5069-l380erms2"
  part_number       = "5069-L380ERMS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_380_erms_3" {
  model             = "CompactGuardLogix 5380 L380ERMS3"
  slug              = "rockwell-automation-5069-l380erms3"
  part_number       = "5069-L380ERMS3"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_380_ers_2" {
  model             = "CompactGuardLogix 5380 L380ERS2"
  slug              = "rockwell-automation-5069-l380ers2"
  part_number       = "5069-L380ERS2"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_4100_ermw" {
  model             = "CompactLogix 5480 L4100ERMW"
  slug              = "rockwell-automation-5069-l4100ermw"
  part_number       = "5069-L4100ERMW"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_430_ermw" {
  model             = "CompactLogix 5480 L430ERMW"
  slug              = "rockwell-automation-5069-l430ermw"
  part_number       = "5069-L430ERMW"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_450_ermw" {
  model             = "CompactLogix 5480 L450ERMW"
  slug              = "rockwell-automation-5069-l450ermw"
  part_number       = "5069-L450ERMW"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_device_type" "rockwell_automation_5069_l_4200_ermw" {
  model             = "CompactLogix 5480 L4200ERMW"
  slug              = "rockwell-automation-5069-l4200ermw"
  part_number       = "5069-L4200ERMW"
  manufacturer_id   = netbox_manufacturer.rockwell_automation.id
}

resource "netbox_manufacturer" "rohde_schwarz" {
  name = "Rohde & Schwarz"
  slug = "rohde-schwarz"
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_l_10_g" {
  model             = "SITLine ETH-L 10G"
  slug              = "rohde-and-schwarz-sitline-eth-l-10g"
  part_number       = "5414.6282.23"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_l_4_x_10_g" {
  model             = "SITLine ETH-L 4x10G"
  slug              = "rohde-and-schwarz-sitline-eth-l-4x10g"
  part_number       = "5414.6282.24"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_l_4_x_1_g" {
  model             = "SITLine ETH-L 4x1G"
  slug              = "rohde-and-schwarz-sitline-eth-l-4x1g"
  part_number       = "5414.6282.25"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_s_10_g" {
  model             = "SITLine ETH-S 10G"
  slug              = "rohde-and-schwarz-sitline-eth-s-10g"
  part_number       = "5414.6260.23"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_s_1_g" {
  model             = "SITLine ETH-S 1G"
  slug              = "rohde-and-schwarz-sitline-eth-s-1g"
  part_number       = "5414.6260.22"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_40_g" {
  model             = "SITLine ETH40G"
  slug              = "rohde-and-schwarz-sitline-eth40g"
  part_number       = "5414.6130.02"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_sitline_eth_4_g" {
  model             = "SITLine ETH4G"
  slug              = "rohde-and-schwarz-sitline-eth4g"
  part_number       = "5414.7766.02"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_trustedvpn_l_vs_nfd" {
  model             = "TrustedVPN-L VS-NfD"
  slug              = "rohde-and-schwarz-trustedvpn-l-vs-nfd"
  part_number       = "3630.1751.13"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_trustedvpn_l" {
  model             = "TrustedVPN-L"
  slug              = "rohde-and-schwarz-trustedvpn-l"
  part_number       = "3630.1751.02"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_device_type" "rohde_and_schwarz_trustedvpn_xl" {
  model             = "TrustedVPN-XL"
  slug              = "rohde-and-schwarz-trustedvpn-xl"
  part_number       = "3630.1768.02"
  manufacturer_id   = netbox_manufacturer.rohde_schwarz.id
}

resource "netbox_manufacturer" "ruckus" {
  name = "Ruckus"
  slug = "ruckus"
}

resource "netbox_device_type" "ruckus_icx_7150_48_p_4_x_10_g" {
  model             = "ICX 7150-48P-4x10G"
  slug              = "ruckus-icx-7150-48p-4x10g"
  part_number       = "ICX-7150-48P-4x10G"
  manufacturer_id   = netbox_manufacturer.ruckus.id
}

resource "netbox_device_type" "ruckus_icx_7150_24_2_x_10_g" {
  model             = "ICX 7150-24-2x10G"
  slug              = "ruckus-icx7150-24-2x10g"
  part_number       = "ICX7150-24-2x10G"
  manufacturer_id   = netbox_manufacturer.ruckus.id
}

resource "netbox_device_type" "ruckus_icx_7150_48_pf_2_x_10_g" {
  model             = "ICX 7150-48PF-2x10G"
  slug              = "ruckus-icx7150-48pf-2x10g"
  part_number       = "ICX7150-48PF-2x10G"
  manufacturer_id   = netbox_manufacturer.ruckus.id
}

resource "netbox_device_type" "ruckus_icx_7150_48_zp_8_x_10_g" {
  model             = "ICX 7150-48ZP-8x10G"
  slug              = "ruckus-icx7150-48zp-8x10g"
  part_number       = "ICX7150-48ZP-8x10G"
  manufacturer_id   = netbox_manufacturer.ruckus.id
}

resource "netbox_device_type" "ruckus_icx_7150_c_12_p_2_x_10_gr" {
  model             = "ICX 7150-C12P-2x10GR"
  slug              = "ruckus-icx7150-c12p-2x10gr"
  part_number       = "ICX7150-C12P-2x10GR"
  manufacturer_id   = netbox_manufacturer.ruckus.id
}

resource "netbox_device_type" "ruckus_r_350" {
  model             = "R350"
  slug              = "ruckus-r350"
  part_number       = "901-R350-XX02"
  manufacturer_id   = netbox_manufacturer.ruckus.id
}

resource "netbox_manufacturer" "snr" {
  name = "SNR"
  slug = "snr"
}

resource "netbox_device_type" "snr_pdu_08_a_w_2" {
  model             = "SNR-PDU-08A-W2"
  slug              = "snr-pdu-08a-w2"
  part_number       = "SNR-PDU-08A-W2"
  manufacturer_id   = netbox_manufacturer.snr.id
}

resource "netbox_device_type" "snr_pdu_08_s_w_2" {
  model             = "SNR-PDU-08S-W2"
  slug              = "snr-pdu-08s-w2"
  part_number       = "SNR-PDU-08S-W2"
  manufacturer_id   = netbox_manufacturer.snr.id
}

resource "netbox_manufacturer" "solid_optics" {
  name = "Solid Optics"
  slug = "solid-optics"
}

resource "netbox_device_type" "solid_optics_so_chassis_mod_4" {
  model             = "SO-CHASSIS-MOD4"
  slug              = "solid-optics-so-chassis-mod4"
  manufacturer_id   = netbox_manufacturer.solid_optics.id
}

resource "netbox_device_type" "solid_optics_so_dwdm_mux_8_ch_plus_upg" {
  model             = "SO-DWDM-MUX-8CH+UPG"
  slug              = "solid-optics-so-dwdm-mux-8ch-plus-upg"
  manufacturer_id   = netbox_manufacturer.solid_optics.id
}

resource "netbox_device_type" "solid_optics_so_dwdm_mux_ch_20_35_plus_upg_plus_mon" {
  model             = "SO-DWDM-MUX-CH20-35+UPG+MON"
  slug              = "solid-optics-so-dwdm-mux-ch20-35-plus-upg-plus-mon"
  manufacturer_id   = netbox_manufacturer.solid_optics.id
}

resource "netbox_device_type" "solid_optics_so_mod_4_3_xmpo_mmf_24_xlc" {
  model             = "SO-MOD4-3xMPO/MMF-24xLC"
  slug              = "solid-optics-so-mod4-3xmpo-mmf-24xlc"
  manufacturer_id   = netbox_manufacturer.solid_optics.id
}

resource "netbox_manufacturer" "sonic_wall" {
  name = "SonicWall"
  slug = "sonic-wall"
}

resource "netbox_device_type" "sonicwall_nsa_2650" {
  model             = "NSa 2650"
  slug              = "sonicwall-nsa-2650"
  part_number       = "NSA2650"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_2700" {
  model             = "NSa 2700"
  slug              = "sonicwall-nsa-2700"
  part_number       = "NSA2700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_3650" {
  model             = "NSa 3650"
  slug              = "sonicwall-nsa-3650"
  part_number       = "NSA3650"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_3700" {
  model             = "NSa 3700"
  slug              = "sonicwall-nsa-3700"
  part_number       = "NSA3700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_4650" {
  model             = "NSa 4650"
  slug              = "sonicwall-nsa-4650"
  part_number       = "NSA4650"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_4700" {
  model             = "NSa 4700"
  slug              = "sonicwall-nsa-4700"
  part_number       = "NSA4700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_5650" {
  model             = "NSa 5650"
  slug              = "sonicwall-nsa-5650"
  part_number       = "NSA5650"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_5700" {
  model             = "NSa 5700"
  slug              = "sonicwall-nsa-5700"
  part_number       = "NSA5700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nsa_6700" {
  model             = "NSa 6700"
  slug              = "sonicwall-nsa-6700"
  part_number       = "NSA6700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nssp_13700" {
  model             = "NSsp 13700"
  slug              = "sonicwall-nssp-13700"
  part_number       = "NSSP13700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_nssp_15700" {
  model             = "NSsp 15700"
  slug              = "sonicwall-nssp-15700"
  part_number       = "NSSP15700"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_soho" {
  model             = "SOHO"
  slug              = "sonicwall-soho"
  part_number       = "SOHO"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_sohow" {
  model             = "SOHOW"
  slug              = "sonicwall-sohow"
  part_number       = "SOHOW"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_250" {
  model             = "TZ250"
  slug              = "sonicwall-tz250"
  part_number       = "TZ250"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_250_w" {
  model             = "TZ250W"
  slug              = "sonicwall-tz250w"
  part_number       = "TZ250W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_270" {
  model             = "TZ270"
  slug              = "sonicwall-tz270"
  part_number       = "TZ270"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_270_w" {
  model             = "TZ270W"
  slug              = "sonicwall-tz270w"
  part_number       = "TZ270W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_300" {
  model             = "TZ300"
  slug              = "sonicwall-tz300"
  part_number       = "TZ300"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_300_p" {
  model             = "TZ300P"
  slug              = "sonicwall-tz300p"
  part_number       = "TZ300P"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_300_w" {
  model             = "TZ300W"
  slug              = "sonicwall-tz300w"
  part_number       = "TZ300W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_350" {
  model             = "TZ350"
  slug              = "sonicwall-tz350"
  part_number       = "TZ350"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_350_w" {
  model             = "TZ350W"
  slug              = "sonicwall-tz350w"
  part_number       = "TZ350W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_370" {
  model             = "TZ370"
  slug              = "sonicwall-tz370"
  part_number       = "TZ370"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_370_w" {
  model             = "TZ370W"
  slug              = "sonicwall-tz370w"
  part_number       = "TZ370W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_400" {
  model             = "TZ400"
  slug              = "sonicwall-tz400"
  part_number       = "TZ400"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_400_w" {
  model             = "TZ400W"
  slug              = "sonicwall-tz400w"
  part_number       = "TZ400W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_470" {
  model             = "TZ470"
  slug              = "sonicwall-tz470"
  part_number       = "TZ470"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_470_w" {
  model             = "TZ470W"
  slug              = "sonicwall-tz470w"
  part_number       = "TZ470W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_500" {
  model             = "TZ500"
  slug              = "sonicwall-tz500"
  part_number       = "TZ500"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_500_w" {
  model             = "TZ500W"
  slug              = "sonicwall-tz500w"
  part_number       = "TZ500W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_570" {
  model             = "TZ570"
  slug              = "sonicwall-tz570"
  part_number       = "TZ570"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_570_p" {
  model             = "TZ570P"
  slug              = "sonicwall-tz570p"
  part_number       = "TZ570P"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_570_w" {
  model             = "TZ570W"
  slug              = "sonicwall-tz570w"
  part_number       = "TZ570W"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_600" {
  model             = "TZ600"
  slug              = "sonicwall-tz600"
  part_number       = "TZ600"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_600_p" {
  model             = "TZ600P"
  slug              = "sonicwall-tz600p"
  part_number       = "TZ600P"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_device_type" "sonicwall_tz_670" {
  model             = "TZ670"
  slug              = "sonicwall-tz670"
  part_number       = "TZ670"
  manufacturer_id   = netbox_manufacturer.sonic_wall.id
}

resource "netbox_manufacturer" "sophos" {
  name = "Sophos"
  slug = "sophos"
}

resource "netbox_device_type" "sophos_xg_650" {
  model             = "XG 650"
  slug              = "sophos-xg-650"
  manufacturer_id   = netbox_manufacturer.sophos.id
}

resource "netbox_manufacturer" "supermicro" {
  name = "Supermicro"
  slug = "supermicro"
}

resource "netbox_device_type" "supermicro_as_1114_s_wn_10_rt" {
  model             = "AS-1114S-WN10RT"
  slug              = "supermicro-as-1114s-wn10rt"
  manufacturer_id   = netbox_manufacturer.supermicro.id
}

resource "netbox_device_type" "supermicro_as_1123_us_tr_4" {
  model             = "AS-1123US-TR4"
  slug              = "supermicro-as-1123us-tr4"
  manufacturer_id   = netbox_manufacturer.supermicro.id
}

resource "netbox_device_type" "supermicro_sys_1019_p_wtr" {
  model             = "SYS-1019P-WTR"
  slug              = "supermicro-sys-1019p-wtr"
  manufacturer_id   = netbox_manufacturer.supermicro.id
}

resource "netbox_device_type" "supermicro_sys_2028_u_e_1_cnr_4_t_plus" {
  model             = "SYS-2028U-E1CNR4T+"
  slug              = "supermicro-sys-2028u-e1cnr4t-plus"
  manufacturer_id   = netbox_manufacturer.supermicro.id
}

resource "netbox_device_type" "supermicro_iot_superserver_sys_510_d_8_c_fn_6_p" {
  model             = "IoT SuperServer SYS-510D-8C-FN6P"
  slug              = "supermicro-iot-superserver-sys-510d-8c-fn6p"
  part_number       = "SYS-510D-8C-FN6P"
  manufacturer_id   = netbox_manufacturer.supermicro.id
}

resource "netbox_device_type" "supermicro_superserver_5018_d_mtf" {
  model             = "SuperServer 5018D-MTF"
  slug              = "supermicro-superserver-5018d-mtf"
  part_number       = "SYS-5018D-MTF"
  manufacturer_id   = netbox_manufacturer.supermicro.id
}

resource "netbox_manufacturer" "synology" {
  name = "Synology"
  slug = "synology"
}

resource "netbox_device_type" "synology_ds_118" {
  model             = "DS118"
  slug              = "synology-ds118"
  part_number       = "DS118"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_1522_plus" {
  model             = "DS1522+"
  slug              = "synology-ds1522-plus"
  part_number       = "DS1522+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_1618_plus" {
  model             = "DS1618+"
  slug              = "synology-ds1618-plus"
  part_number       = "DS1618+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_1817_plus" {
  model             = "DS1817+"
  slug              = "synology-ds1817-plus"
  part_number       = "DS1817+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_220_plus" {
  model             = "DS220+"
  slug              = "synology-ds220-plus"
  part_number       = "DS220+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_418" {
  model             = "DS418"
  slug              = "synology-ds418"
  part_number       = "DS418"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_920_plus" {
  model             = "DS920+"
  slug              = "synology-ds920-plus"
  part_number       = "DS920+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_1219_plus" {
  model             = "RS1219+"
  slug              = "synology-rs1219-plus"
  part_number       = "RS1219+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_1221_plus" {
  model             = "RS1221+"
  slug              = "synology-rs1221-plus"
  part_number       = "RS1221+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_1619_xs_plus" {
  model             = "RS1619xs+"
  slug              = "synology-rs1619xs-plus"
  part_number       = "RS1619xs+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_2418_plus" {
  model             = "RS2418+"
  slug              = "synology-rs2418-plus"
  part_number       = "RS2418+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_2418_rp_plus" {
  model             = "RS2418RP+"
  slug              = "synology-rs2418rp-plus"
  part_number       = "RS2418RP+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_2421_plus" {
  model             = "RS2421+"
  slug              = "synology-rs2421-plus"
  part_number       = "RS2421+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_2421_rp_plus" {
  model             = "RS2421RP+"
  slug              = "synology-rs2421rp-plus"
  part_number       = "RS2421RP+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_3617_rpxs" {
  model             = "RS3617RPxs"
  slug              = "synology-rs3617rpxs"
  part_number       = "RS3617RPxs"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_rs_820_plus" {
  model             = "RS820+"
  slug              = "synology-rs820-plus"
  part_number       = "RS820+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_device_type" "synology_ds_1821_plus" {
  model             = "DS1821+"
  slug              = "synology-ds1821-plus"
  part_number       = "DS1821+"
  manufacturer_id   = netbox_manufacturer.synology.id
}

resource "netbox_manufacturer" "tp_link" {
  name = "TP-Link"
  slug = "tp-link"
}

resource "netbox_device_type" "tp_link_t_2500_g_10_ts" {
  model             = "T2500G-10TS"
  slug              = "tp-link-t2500g-10ts"
  part_number       = "T2500G-10TS"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_t_2600_g_28_mps" {
  model             = "T2600G-28MPS"
  slug              = "tp-link-t2600g-28mps"
  part_number       = "T2600G-28MPS"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_t_2600_g_28_ts" {
  model             = "T2600G-28TS"
  slug              = "tp-link-t2600g-28ts"
  part_number       = "T2600G-28TS"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_1005_d" {
  model             = "TL-SG1005D"
  slug              = "tp-link-tl-sg1005d"
  part_number       = "TL-SG105D"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_1016_pe" {
  model             = "TL-SG1016PE"
  slug              = "tp-link-tl-sg1016pe"
  part_number       = "TL-SG1016PE"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_1024_d" {
  model             = "TL-SG1024D"
  slug              = "tp-link-tl-sg1024d"
  part_number       = "TL-SG1024D"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_105_e" {
  model             = "TL-SG105E"
  slug              = "tp-link-tl-sg105e"
  part_number       = "TL-SG105E"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_108_e" {
  model             = "TL-SG108E"
  slug              = "tp-link-tl-sg108e"
  part_number       = "TL-SG108E"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_108_pe" {
  model             = "TL-SG108PE"
  slug              = "tp-link-tl-sg108pe"
  part_number       = "TL-SG108PE"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_3424_p" {
  model             = "TL-SG3424P"
  slug              = "tp-link-tl-sg3424p"
  part_number       = "TL-SG3424P"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_device_type" "tp_link_tl_sg_3428_mp" {
  model             = "TL-SG3428MP"
  slug              = "tp-link-tl-sg3428mp"
  part_number       = "TL-SG3428MP"
  manufacturer_id   = netbox_manufacturer.tp_link.id
}

resource "netbox_manufacturer" "teltonika" {
  name = "Teltonika"
  slug = "teltonika"
}

resource "netbox_device_type" "teltonika_rut_240" {
  model             = "RUT240"
  slug              = "teltonika-rut240"
  part_number       = "RUT240"
  manufacturer_id   = netbox_manufacturer.teltonika.id
}

resource "netbox_manufacturer" "thales" {
  name = "Thales"
  slug = "thales"
}

resource "netbox_device_type" "thales_luna_k_6" {
  model             = "Luna K6"
  slug              = "thales-luna-k6"
  part_number       = "808-000054-001"
  manufacturer_id   = netbox_manufacturer.thales.id
}

resource "netbox_device_type" "thales_luna_t_7" {
  model             = "Luna-T7"
  slug              = "thales-luna-t7"
  part_number       = "972-500080-001"
  manufacturer_id   = netbox_manufacturer.thales.id
}

resource "netbox_manufacturer" "trend_net" {
  name = "TrendNet"
  slug = "trend-net"
}

resource "netbox_device_type" "trendnet_tc_p_16_c_5_e" {
  model             = "TC-P16C5E"
  slug              = "trendnet-tc-p16c5e"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_tc_p_24_c_5_e" {
  model             = "TC-P24C5E"
  slug              = "trendnet-tc-p24c5e"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_tc_p_48_c_5_e" {
  model             = "TC-P48C5E"
  slug              = "trendnet-tc-p48c5e"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_te_100_s_16" {
  model             = "TE100-S16"
  slug              = "trendnet-te100-s16"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_teg_240_ws" {
  model             = "TEG-240WS"
  slug              = "trendnet-teg-240ws"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_teg_30284" {
  model             = "TEG-30284"
  slug              = "trendnet-teg-30284"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_teg_s_16_dg" {
  model             = "TEG-S16Dg"
  slug              = "trendnet-teg-s16dg"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_teg_s_224" {
  model             = "TEG-S224"
  slug              = "trendnet-teg-s224"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_teg_s_50_g" {
  model             = "TEG-S50g"
  slug              = "trendnet-teg-s50g"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_tew_821_dap" {
  model             = "TEW-821DAP"
  slug              = "trendnet-tew-821dap"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_tew_wlc_100" {
  model             = "TEW-WLC100"
  slug              = "trendnet-tew-wlc100"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_tk_802_r" {
  model             = "TK-802R"
  slug              = "trendnet-tk-802r"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_device_type" "trendnet_tpe_113_gi_a" {
  model             = "TPE-113GI/A"
  slug              = "trendnet-tpe-113gi-a"
  manufacturer_id   = netbox_manufacturer.trend_net.id
}

resource "netbox_manufacturer" "ubiquiti" {
  name = "Ubiquiti"
  slug = "ubiquiti"
}

resource "netbox_device_type" "ubiquiti_bullet_m_2" {
  model             = "Bullet M2"
  slug              = "ubiquiti-bullet-m2"
  part_number       = "bullet m2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_edgepoint_router_6_port" {
  model             = "EdgePoint Router 6-Port"
  slug              = "ubiquiti-edgepoint-router-6-port"
  part_number       = "EP-R6"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_edgepoint_router_8_port" {
  model             = "EdgePoint Router 8-Port"
  slug              = "ubiquiti-edgepoint-router-8-port"
  part_number       = "EP-R8"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_edgepoint_ep_s_16" {
  model             = "EdgePoint EP-S16"
  slug              = "ubiquiti-edgepoint-ep-s16"
  part_number       = "EP-S16"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_10_x" {
  model             = "EdgeRouter 10X"
  slug              = "ubiquiti-er-10x"
  part_number       = "ER-10X"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_12" {
  model             = "EdgeRouter 12"
  slug              = "ubiquiti-er-12"
  part_number       = "ER-12"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_12_p" {
  model             = "EdgeRouter 12P"
  slug              = "ubiquiti-er-12p"
  part_number       = "ER-12P"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_4" {
  model             = "EdgeRouter 4"
  slug              = "ubiquiti-er-4"
  part_number       = "ER-4"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_6_p" {
  model             = "EdgeRouter 6P"
  slug              = "ubiquiti-er-6p"
  part_number       = "ER-6P"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_8" {
  model             = "EdgeRouter 8"
  slug              = "ubiquiti-er-8"
  part_number       = "ER-8"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_x_sfp" {
  model             = "ER-X-SFP"
  slug              = "ubiquiti-er-x-sfp"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_er_x" {
  model             = "ER-X"
  slug              = "ubiquiti-er-x"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_erlite_3" {
  model             = "EdgeRouter Lite"
  slug              = "ubiquiti-erlite-3"
  part_number       = "ERLite-3"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_erpoe_5" {
  model             = "EdgeRouter PoE 5-Port"
  slug              = "ubiquiti-erpoe-5"
  part_number       = "ERPoe-5"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_edgerouter_pro" {
  model             = "EdgeRouter Pro"
  slug              = "ubiquiti-edgerouter-pro"
  part_number       = "ERPro-8"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_10_x" {
  model             = "ES-10X"
  slug              = "ubiquiti-es-10x"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_10_xp" {
  model             = "ES-10XP"
  slug              = "ubiquiti-es-10xp"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_12_f" {
  model             = "ES-12F"
  slug              = "ubiquiti-es-12f"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_16_150_w" {
  model             = "EdgeSwitch 16 150W"
  slug              = "ubiquiti-es-16-150w"
  part_number       = "ES-16-150W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_16_xg" {
  model             = "EdgeSwitch 16 XG"
  slug              = "ubiquiti-es-16-xg"
  part_number       = "ES-16-XG"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_24_250_w" {
  model             = "EdgeSwitch 24 250W"
  slug              = "ubiquiti-es-24-250w"
  part_number       = "ES-24-250W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_24_500_w" {
  model             = "EdgeSwitch 24 500W"
  slug              = "ubiquiti-es-24-500w"
  part_number       = "ES-24-500W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_24_lite" {
  model             = "EdgeSwitch 24 Lite"
  slug              = "ubiquiti-es-24-lite"
  part_number       = "ES-24-LITE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_48_500_w" {
  model             = "EdgeSwitch 48 500W"
  slug              = "ubiquiti-es-48-500w"
  part_number       = "ES-48-500W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_48_750_w" {
  model             = "EdgeSwitch 48 750W"
  slug              = "ubiquiti-es-48-750w"
  part_number       = "ES-48-750W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_es_48_lite" {
  model             = "EdgeSwitch 48 Lite"
  slug              = "ubiquiti-es-48-lite"
  part_number       = "ES-48-LITE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_ins_3_af_o_g" {
  model             = "Instant PoE 802.3af Gigabit Adapter"
  slug              = "ubiquiti-ins-3af-o-g"
  part_number       = "INS-3AF-O-G"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_liteap_120" {
  model             = "LiteAP 120"
  slug              = "ubiquiti-liteap-120"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_lbe_5_ac_23" {
  model             = "LiteBeam 5AC 23"
  slug              = "ubiquiti-lbe-5ac-23"
  part_number       = "LBE-5AC-23"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_lbe_5_ac_gen_2" {
  model             = "LiteBeam 5AC Gen2"
  slug              = "ubiquiti-lbe-5ac-gen2"
  part_number       = "LBE-5AC-Gen2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanobeam_2_ac_13" {
  model             = "NanoBeam 2AC-13"
  slug              = "ubiquiti-nanobeam-2ac-13"
  part_number       = "NBE-2AC-13"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nbe_5_ac_19" {
  model             = "NanoBeam 5AC 19"
  slug              = "ubiquiti-nbe-5ac-19"
  part_number       = "NBE-5AC-19"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanobeam_5_ac_gen_2" {
  model             = "NanoBeam 5AC Gen2"
  slug              = "ubiquiti-nanobeam-5ac-gen2"
  part_number       = "NBE-5AC-Ge2n"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nbe_m_5_19" {
  model             = "NanoBeam M5 19"
  slug              = "ubiquiti-nbe-m5-19"
  part_number       = "NBE-M5-19"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanostation_5_ac" {
  model             = "Nanostation 5AC"
  slug              = "ubiquiti-nanostation-5ac"
  part_number       = "NS-5AC"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanostation_loco_m_2" {
  model             = "NanoStation LOCO M2"
  slug              = "ubiquiti-nanostation-loco-m2"
  part_number       = "nanostation loco m2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanostation_loco_m_5" {
  model             = "NanoStation LOCO M5"
  slug              = "ubiquiti-nanostation-loco-m5"
  part_number       = "nanostation loco m5"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanostation_loco_m_900" {
  model             = "NanoStation LOCO M900"
  slug              = "ubiquiti-nanostation-loco-m900"
  part_number       = "nanostation loco m900"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nano_station_loco_5_ac" {
  model             = "Nano Station LOCO 5AC"
  slug              = "ubiquiti-nano-station-loco-5ac"
  part_number       = "LOCO5AC"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanostation_m_2" {
  model             = "NanoStation M2"
  slug              = "ubiquiti-nanostation-m2"
  part_number       = "nanostation m2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_nanostation_m_5" {
  model             = "NanoStation m5"
  slug              = "ubiquiti-nanostation-m5"
  part_number       = "nanostation m5"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_picostation_m_2" {
  model             = "PicoStation M2"
  slug              = "ubiquiti-picostation-m2"
  part_number       = "picostation m2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_powerbeam_2_ac_400" {
  model             = "PowerBeam 2AC 400"
  slug              = "ubiquiti-powerbeam-2ac-400"
  part_number       = "PBE-2AC-400"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_pbe_5_ac_300" {
  model             = "PowerBeam 5AC 300"
  slug              = "ubiquiti-pbe-5ac-300"
  part_number       = "PBE-5AC-300"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_pbe_5_ac_500" {
  model             = "PowerBeam 5AC 500"
  slug              = "ubiquiti-pbe-5ac-500"
  part_number       = "PBE-5AC-500"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_pbe_5_ac_gen_2" {
  model             = "PowerBeam 5AC Gen2"
  slug              = "ubiquiti-pbe-5ac-gen2"
  part_number       = "PBE-5AC-Gen2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_powerbeam_m_2_400" {
  model             = "PowerBeam M2 400"
  slug              = "ubiquiti-powerbeam-m2-400"
  part_number       = "PBE-M2-400"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_rocket_2_ac_prism" {
  model             = "Rocket 2AC Prism"
  slug              = "ubiquiti-rocket-2ac-prism"
  part_number       = "R2AC-PRISM"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_rp_5_ac_gen_2" {
  model             = "Rocket Prism 5AC Gen2"
  slug              = "ubiquiti-rp-5ac-gen2"
  part_number       = "RP-5AC-Gen2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_rocket_m_2_titanium" {
  model             = "Rocket M2 Titanium"
  slug              = "ubiquiti-rocket-m2-titanium"
  part_number       = "Rocket M2 Titanium"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_rocket_m_2" {
  model             = "Rocket M2"
  slug              = "ubiquiti-rocket-m2"
  part_number       = "Rocket M2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_rocket_m_5" {
  model             = "Rocket M5"
  slug              = "ubiquiti-rocket-m5"
  part_number       = "Rocket M5"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_rocket_m_900" {
  model             = "Rocket M900"
  slug              = "ubiquiti-rocket-m900"
  part_number       = "rocket m900"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_surge_protector" {
  model             = "Surge Protector"
  slug              = "ubiquiti-surge-protector"
  part_number       = "ETH-SP-G2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_u_6_enterprise" {
  model             = "UniFi U6 Access Point Enterprise"
  slug              = "ubiquiti-u6-enterprise"
  part_number       = "U6-Enterprise"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_u_6_iw" {
  model             = "UniFi U6 In-Wall Access Point"
  slug              = "ubiquiti-u6-iw"
  part_number       = "u6-iw"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_u_6_lr" {
  model             = "U6-LR"
  slug              = "ubiquiti-u6-lr"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_u_6_lite" {
  model             = "U6-Lite"
  slug              = "ubiquiti-u6-lite"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_u_6_mesh" {
  model             = "Unifi U6 Mesh Access Point"
  slug              = "ubiquiti-u6-mesh"
  part_number       = "U6-Mesh"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_u_6_pro" {
  model             = "Unifi U6 Access Point Professional"
  slug              = "ubiquiti-u6-pro"
  part_number       = "U6-PRO"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_ac_lr" {
  model             = "UAP-AC-LR"
  slug              = "ubiquiti-uap-ac-lr"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_ac_lite" {
  model             = "UAP-AC-LITE"
  slug              = "ubiquiti-uap-ac-lite"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_ac_m_pro" {
  model             = "Unifi AC Mesh Pro"
  slug              = "ubiquiti-uap-ac-m-pro"
  part_number       = "UAP-AC-M-Pro"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_ac_m" {
  model             = "Unifi AC Mesh"
  slug              = "ubiquiti-uap-ac-m"
  part_number       = "UAP-AC-M"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_ac_pro" {
  model             = "UAP AC Pro"
  slug              = "ubiquiti-uap-ac-pro"
  part_number       = "UAP-AC-Pro"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_flexhd" {
  model             = "UAP-FlexHD"
  slug              = "ubiquiti-uap-flexhd"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_iw_hd" {
  model             = "UniFi UAP InWall HD"
  slug              = "ubiquiti-uap-iw-hd"
  part_number       = "UAP-IW-HD"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uap_pro" {
  model             = "UAP pro"
  slug              = "ubiquiti-uap-pro"
  part_number       = "UAP-Pro"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_application_server" {
  model             = "UniFi Application Server"
  slug              = "ubiquiti-unifi-application-server"
  part_number       = "UAS-XG"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uc_ck" {
  model             = "UniFi Cloud Key"
  slug              = "ubiquiti-uc-ck"
  part_number       = "uc-ck"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_cloud_key_gen_2_plus" {
  model             = "Cloud Key Gen2 Plus"
  slug              = "ubiquiti-cloud-key-gen2-plus"
  part_number       = "uck-g2-plus"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_cloud_key_gen_2" {
  model             = "Cloud Key Gen2"
  slug              = "ubiquiti-cloud-key-gen2"
  part_number       = "uck-g2"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uf_olt" {
  model             = "8‑Port GPON Optical Line Terminal"
  slug              = "ubiquiti-uf-olt"
  part_number       = "UF-OLT"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_uisp_router" {
  model             = "UISP Router"
  slug              = "ubiquiti-uisp-router"
  part_number       = "UISP-R"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_protect_network_video_recorder" {
  model             = "UniFi Protect Network Video Recorder"
  slug              = "ubiquiti-unifi-protect-network-video-recorder"
  part_number       = "UNVR"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_16_poe_150_w_gen_1" {
  model             = "UniFi Switch 16 PoE 150W Gen1"
  slug              = "ubiquiti-unifi-switch-16-poe-150w-gen1"
  part_number       = "US-16-150W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_16_xg" {
  model             = "UniFi Switch 16 XG"
  slug              = "ubiquiti-unifi-switch-16-xg"
  part_number       = "US-16-XG"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_24_poe_250_w_gen_1" {
  model             = "UniFi Switch 24 PoE 250W Gen1"
  slug              = "ubiquiti-unifi-switch-24-poe-250w-gen1"
  part_number       = "US-24-250W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_24_poe_500_w_gen_1" {
  model             = "UniFi Switch 24 PoE 500W Gen1"
  slug              = "ubiquiti-unifi-switch-24-poe-500w-gen1"
  part_number       = "US-24-500W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_24_gen_1" {
  model             = "UniFi Switch 24 Gen1"
  slug              = "ubiquiti-unifi-switch-24-gen1"
  part_number       = "US-24"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_poe_500_w_gen_1" {
  model             = "UniFi Switch 48 PoE 500W Gen1"
  slug              = "ubiquiti-unifi-switch-48-poe-500w-gen1"
  part_number       = "US-48-500W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_poe_750_w_gen_1" {
  model             = "UniFi Switch 48 PoE 750W Gen1"
  slug              = "ubiquiti-unifi-switch-48-poe-750w-gen1"
  part_number       = "US-48-750W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_gen_1" {
  model             = "UniFi Switch 48 Gen1"
  slug              = "ubiquiti-unifi-switch-48-gen1"
  part_number       = "US-48"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_us_8_150_w" {
  model             = "US-8-150W"
  slug              = "ubiquiti-us-8-150w"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_8_poe_60_w_gen_1" {
  model             = "UniFi Switch 8 PoE 60W Gen1"
  slug              = "ubiquiti-unifi-switch-8-poe-60w-gen1"
  part_number       = "US-8-60W"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_8_gen_1" {
  model             = "UniFi Switch 8 Gen1"
  slug              = "ubiquiti-unifi-switch-8-gen1"
  part_number       = "US-8"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_xg_6_poe" {
  model             = "UniFi Switch XG 6PoE"
  slug              = "ubiquiti-unifi-switch-xg-6poe"
  part_number       = "US-XG-6POE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_security_gateway_pro" {
  model             = "UniFi Security Gateway Pro"
  slug              = "ubiquiti-unifi-security-gateway-pro"
  part_number       = "USG-PRO-4"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_usg" {
  model             = "USG"
  slug              = "ubiquiti-usg"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_smartpower_rps" {
  model             = "UniFi SmartPower RPS"
  slug              = "ubiquiti-unifi-smartpower-rps"
  part_number       = "USP-RPS"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_16_poe_gen_2" {
  model             = "UniFi Switch 16 PoE Gen2"
  slug              = "ubiquiti-unifi-switch-16-poe-gen2"
  part_number       = "USW-16-POE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_24_poe_gen_2" {
  model             = "UniFi Switch 24 PoE Gen2"
  slug              = "ubiquiti-unifi-switch-24-poe-gen2"
  part_number       = "USW-24-POE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_24_gen_2" {
  model             = "UniFi Switch 24 Gen2"
  slug              = "ubiquiti-unifi-switch-24-gen2"
  part_number       = "USW-24"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_poe_gen_2" {
  model             = "UniFi Switch 48 PoE Gen2"
  slug              = "ubiquiti-unifi-switch-48-poe-gen2"
  part_number       = "USW-48-POE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_gen_2" {
  model             = "UniFi Switch 48 Gen2"
  slug              = "ubiquiti-unifi-switch-48-gen2"
  part_number       = "USW-48"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_aggregation" {
  model             = "UniFi Switch Aggregation"
  slug              = "ubiquiti-unifi-switch-aggregation"
  part_number       = "USW-Aggregation"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_enterprise_24_poe" {
  model             = "UniFi Switch Enterprise 24 PoE"
  slug              = "ubiquiti-unifi-switch-enterprise-24-poe"
  part_number       = "USW-Enterprise-24-PoE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_enterprise_48_poe" {
  model             = "UniFi Switch Enterprise 48 PoE"
  slug              = "ubiquiti-unifi-switch-enterprise-48-poe"
  part_number       = "USW-Enterprise-48-PoE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_flex_mini" {
  model             = "UniFi Switch Flex Mini"
  slug              = "ubiquiti-unifi-switch-flex-mini"
  part_number       = "USW-Flex-Mini"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_flex_xg" {
  model             = "UniFi Switch Flex XG"
  slug              = "ubiquiti-unifi-switch-flex-xg"
  part_number       = "USW-Flex-XG"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_flex" {
  model             = "UniFi Switch Flex"
  slug              = "ubiquiti-unifi-switch-flex"
  part_number       = "USW-Flex"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_lite_16_poe" {
  model             = "UniFi Switch Lite 16 PoE"
  slug              = "ubiquiti-unifi-switch-lite-16-poe"
  part_number       = "USW-Lite-16-PoE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_lite_8_poe" {
  model             = "UniFi Switch Lite 8 PoE"
  slug              = "ubiquiti-unifi-switch-lite-8-poe"
  part_number       = "USW-Lite-8-PoE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_24_pro_poe_gen_2" {
  model             = "UniFi Switch 24 Pro PoE Gen2"
  slug              = "ubiquiti-unifi-switch-24-pro-poe-gen2"
  part_number       = "USW-PRO-24-POE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_usw_pro_24" {
  model             = "USW-PRO-24"
  slug              = "ubiquiti-usw-pro-24"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_pro_poe_gen_2" {
  model             = "UniFi Switch 48 Pro PoE Gen2"
  slug              = "ubiquiti-unifi-switch-48-pro-poe-gen2"
  part_number       = "USW-PRO-48-POE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_48_pro" {
  model             = "UniFi Switch 48 Pro"
  slug              = "ubiquiti-unifi-switch-48-pro"
  part_number       = "USW-Pro-48"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_switch_pro_aggregation" {
  model             = "UniFi Switch Pro Aggregation"
  slug              = "ubiquiti-unifi-switch-pro-aggregation"
  part_number       = "USW-Pro-Aggregation"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_dream_machine_pro_special_edition" {
  model             = "UniFi Dream Machine Pro Special Edition"
  slug              = "ubiquiti-unifi-dream-machine-pro-special-edition"
  part_number       = "UDM-SE"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_unifi_dream_machine_pro" {
  model             = "UniFi Dream Machine Pro"
  slug              = "ubiquiti-unifi-dream-machine-pro"
  part_number       = "UDM-Pro"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_udm" {
  model             = "UniFi Dream Machine"
  slug              = "ubiquiti-udm"
  part_number       = "UDM"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_wave_lr" {
  model             = "UISP Wave LR"
  slug              = "ubiquiti-wave-lr"
  part_number       = "Wave-LR"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_aircube_ac" {
  model             = "airCube-AC"
  slug              = "ubiquiti-aircube-ac"
  part_number       = "aircube-ac"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_aircube_isp" {
  model             = "airCube-ISP"
  slug              = "ubiquiti-aircube-isp"
  part_number       = "aircube-isp"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_airfiber_af_5_xhd" {
  model             = "airFiber 5XHD"
  slug              = "ubiquiti-airfiber-af-5xhd"
  part_number       = "AF-5XHD"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_airfiber_60_hd" {
  model             = "airFiber 60 HD"
  slug              = "ubiquiti-airfiber-60-hd"
  part_number       = "AF60-HD"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_airfiber_60_lr" {
  model             = "airFiber 60 LR"
  slug              = "ubiquiti-airfiber-60-lr"
  part_number       = "AF60-LR"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_device_type" "ubiquiti_airfiber_60" {
  model             = "airFiber 60"
  slug              = "ubiquiti-airfiber-60"
  part_number       = "AF-60"
  manufacturer_id   = netbox_manufacturer.ubiquiti.id
}

resource "netbox_manufacturer" "v_solution" {
  name = "V-Solution"
  slug = "v-solution"
}

resource "netbox_device_type" "v_solution_v_1600_d_2" {
  model             = "V1600D2"
  slug              = "v-solution-v1600d2"
  manufacturer_id   = netbox_manufacturer.v_solution.id
}

resource "netbox_manufacturer" "vertiv" {
  name = "Vertiv"
  slug = "vertiv"
}

resource "netbox_device_type" "vertiv_acs_8008_sac" {
  model             = "ACS8008SAC"
  slug              = "vertiv-acs8008sac"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_device_type" "vertiv_acs_8016_dac" {
  model             = "ACS8016DAC"
  slug              = "vertiv-acs8016dac"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_device_type" "vertiv_acs_8016_sac" {
  model             = "ACS8016SAC"
  slug              = "vertiv-acs8016sac"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_device_type" "vertiv_acs_8032_sac" {
  model             = "ACS8032SAC"
  slug              = "vertiv-acs8032sac"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_device_type" "vertiv_acs_8048_dac" {
  model             = "ACS8048DAC"
  slug              = "vertiv-acs8048dac"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_device_type" "vertiv_acs_8048_sac" {
  model             = "ACS8048SAC"
  slug              = "vertiv-acs8048sac"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_device_type" "vertiv_mpuiq_vmchs" {
  model             = "MPUIQ-VMCHS"
  slug              = "vertiv-mpuiq-vmchs"
  part_number       = "520-854-504"
  manufacturer_id   = netbox_manufacturer.vertiv.id
}

resource "netbox_manufacturer" "wti" {
  name = "WTI"
  slug = "wti"
}

resource "netbox_device_type" "wti_cpm_1600_1_ec" {
  model             = "CPM-1600-1-EC"
  slug              = "wti-cpm-1600-1-ec"
  part_number       = "CPM-1600-1-EC"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_1600_1_ecam" {
  model             = "CPM-1600-1-ECAM"
  slug              = "wti-cpm-1600-1-ecam"
  part_number       = "CPM-1600-1-ECAM"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_1_a_vzw" {
  model             = "CPM-800-1-A-VZW"
  slug              = "wti-cpm-800-1-a-vzw"
  part_number       = "CPM-800-1-A-VZW"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_1_a" {
  model             = "CPM-800-1-A"
  slug              = "wti-cpm-800-1-a"
  part_number       = "CPM-800-1-A"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_1_am" {
  model             = "CPM-800-1-AM"
  slug              = "wti-cpm-800-1-am"
  part_number       = "CPM-800-1-AM"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_1_e" {
  model             = "CPM-800-1-E"
  slug              = "wti-cpm-800-1-e"
  part_number       = "CPM-800-1-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_1_ea" {
  model             = "CPM-800-1-EA"
  slug              = "wti-cpm-800-1-ea"
  part_number       = "CPM-800-1-EA"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_1_eca" {
  model             = "CPM-800-1-ECA"
  slug              = "wti-cpm-800-1-eca"
  part_number       = "CPM-800-1-ECA"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_2_a_vzw" {
  model             = "CPM-800-2-A-VZW"
  slug              = "wti-cpm-800-2-a-vzw"
  part_number       = "CPM-800-2-A-VZW"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_2_a" {
  model             = "CPM-800-2-A"
  slug              = "wti-cpm-800-2-a"
  part_number       = "CPM-800-2-A"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_2_am" {
  model             = "CPM-800-2-AM"
  slug              = "wti-cpm-800-2-am"
  part_number       = "CPM-800-2-AM"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_2_e" {
  model             = "CPM-800-2-E"
  slug              = "wti-cpm-800-2-e"
  part_number       = "CPM-800-2-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_cpm_800_2_ea" {
  model             = "CPM-800-2-EA"
  slug              = "wti-cpm-800-2-ea"
  part_number       = "CPM-800-2-EA"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_24_nm_dp" {
  model             = "DSM-24NM-DP"
  slug              = "wti-dsm-24nm-dp"
  part_number       = "DSM-24NM-DP"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_24_nm_e" {
  model             = "DSM-24NM-E"
  slug              = "wti-dsm-24nm-e"
  part_number       = "DSM-24NM-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_24_nm" {
  model             = "DSM-24NM"
  slug              = "wti-dsm-24nm"
  part_number       = "DSM-24NM"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_40_nm_dp" {
  model             = "DSM-40NM-DP"
  slug              = "wti-dsm-40nm-dp"
  part_number       = "DSM-40NM-DP"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_40_nm_e" {
  model             = "DSM-40NM-E"
  slug              = "wti-dsm-40nm-e"
  part_number       = "DSM-40NM-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_40_nm" {
  model             = "DSM-40NM"
  slug              = "wti-dsm-40nm"
  part_number       = "DSM-40NM"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_8_nm_dp" {
  model             = "DSM-8NM-DP"
  slug              = "wti-dsm-8nm-dp"
  part_number       = "DSM-8NM-DP"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_8_nm_e" {
  model             = "DSM-8NM-E"
  slug              = "wti-dsm-8nm-e"
  part_number       = "DSM-8NM-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_dsm_8_nm" {
  model             = "DSM-8NM"
  slug              = "wti-dsm-8nm"
  part_number       = "DSM-8NM"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_nbb_20_vd_20_1" {
  model             = "NBB-20VD20-1"
  slug              = "wti-nbb-20vd20-1"
  part_number       = "NBB-20VD20-1"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_nps_8_h_20_ats_1" {
  model             = "NPS-8H20-ATS-1"
  slug              = "wti-nps-8h20-ats-1"
  part_number       = "NPS-8H20-ATS-1"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_1_e" {
  model             = "REM-0R4-1-E"
  slug              = "wti-rem-0r4-1-e"
  part_number       = "REM-0R4-1-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_1_n" {
  model             = "REM-0R4-1-N"
  slug              = "wti-rem-0r4-1-n"
  part_number       = "REM-0R4-1-N"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_1_ne" {
  model             = "REM-0R4-1-NE"
  slug              = "wti-rem-0r4-1-ne"
  part_number       = "REM-0R4-1-NE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_1_w" {
  model             = "REM-0R4-1-W"
  slug              = "wti-rem-0r4-1-w"
  part_number       = "REM-0R4-1-W"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_1_we" {
  model             = "REM-0R4-1-WE"
  slug              = "wti-rem-0r4-1-we"
  part_number       = "REM-0R4-1-WE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_1" {
  model             = "REM-0R4-1"
  slug              = "wti-rem-0r4-1"
  part_number       = "REM-0R4-1"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_2_e" {
  model             = "REM-0R4-2-E"
  slug              = "wti-rem-0r4-2-e"
  part_number       = "REM-0R4-2-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_2_n" {
  model             = "REM-0R4-2-N"
  slug              = "wti-rem-0r4-2-n"
  part_number       = "REM-0R4-2-N"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_2_ne" {
  model             = "REM-0R4-2-NE"
  slug              = "wti-rem-0r4-2-ne"
  part_number       = "REM-0R4-2-NE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_2_w" {
  model             = "REM-0R4-2-W"
  slug              = "wti-rem-0r4-2-w"
  part_number       = "REM-0R4-2-W"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_2_we" {
  model             = "REM-0R4-2-WE"
  slug              = "wti-rem-0r4-2-we"
  part_number       = "REM-0R4-2-WE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_0_r_4_2" {
  model             = "REM-0R4-2"
  slug              = "wti-rem-0r4-2"
  part_number       = "REM-0R4-2"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_0_e" {
  model             = "REM-4R0-E"
  slug              = "wti-rem-4r0-e"
  part_number       = "REM-4R0-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_0_ne" {
  model             = "REM-4R0-NE"
  slug              = "wti-rem-4r0-ne"
  part_number       = "REM-4R0-NE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_0_w" {
  model             = "REM-4R0-W"
  slug              = "wti-rem-4r0-w"
  part_number       = "REM-4R0-W"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_0_we" {
  model             = "REM-4R0-WE"
  slug              = "wti-rem-4r0-we"
  part_number       = "REM-4R0-WE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_0" {
  model             = "REM-4R0"
  slug              = "wti-rem-4r0"
  part_number       = "REM-4R0"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_1_e" {
  model             = "REM-4R4-1-E"
  slug              = "wti-rem-4r4-1-e"
  part_number       = "REM-4R4-1-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_1_n" {
  model             = "REM-4R4-1-N"
  slug              = "wti-rem-4r4-1-n"
  part_number       = "REM-4R4-1-N"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_1_ne" {
  model             = "REM-4R4-1-NE"
  slug              = "wti-rem-4r4-1-ne"
  part_number       = "REM-4R4-1-NE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_1_w" {
  model             = "REM-4R4-1-W"
  slug              = "wti-rem-4r4-1-w"
  part_number       = "REM-4R4-1-W"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_1_we" {
  model             = "REM-4R4-1-WE"
  slug              = "wti-rem-4r4-1-we"
  part_number       = "REM-4R4-1-WE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_1" {
  model             = "REM-4R4-1"
  slug              = "wti-rem-4r4-1"
  part_number       = "REM-4R4-1"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_2_e" {
  model             = "REM-4R4-2-E"
  slug              = "wti-rem-4r4-2-e"
  part_number       = "REM-4R4-2-E"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_2_n" {
  model             = "REM-4R4-2-N"
  slug              = "wti-rem-4r4-2-n"
  part_number       = "REM-4R4-2-N"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_2_ne" {
  model             = "REM-4R4-2-NE"
  slug              = "wti-rem-4r4-2-ne"
  part_number       = "REM-4R4-2-NE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_2_w" {
  model             = "REM-4R4-2-W"
  slug              = "wti-rem-4r4-2-w"
  part_number       = "REM-4R4-2-W"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_2_we" {
  model             = "REM-4R4-2-WE"
  slug              = "wti-rem-4r4-2-we"
  part_number       = "REM-4R4-2-WE"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_rem_4_r_4_2" {
  model             = "REM-4R4-2"
  slug              = "wti-rem-4r4-2"
  part_number       = "REM-4R4-2"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_vmr_16_hd_20_2" {
  model             = "VMR-16HD20-2"
  slug              = "wti-vmr-16hd20-2"
  part_number       = "VMR-16HD20-2"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_vmr_8_h_20_ats_1" {
  model             = "VMR-8H20-ATS-1"
  slug              = "wti-vmr-8h20-ats-1"
  part_number       = "VMR-8H20-ATS-1"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_vmr_8_h_20_ats_2" {
  model             = "VMR-8H20-ATS-2"
  slug              = "wti-vmr-8h20-ats-2"
  part_number       = "VMR-8H20-ATS-2"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_vmr_8_hs_20_1" {
  model             = "VMR-8HS20-1"
  slug              = "wti-vmr-8hs20-1"
  part_number       = "VMR-8HS20-1"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_vmr_8_hs_20_2" {
  model             = "VMR-8HS20-2"
  slug              = "wti-vmr-8hs20-2"
  part_number       = "VMR-8HS20-2"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_device_type" "wti_vmr_hd_4_d_16_h" {
  model             = "VMR-HD4D16H"
  slug              = "wti-vmr-hd4d16h"
  part_number       = "VMR-HD4D16H"
  manufacturer_id   = netbox_manufacturer.wti.id
}

resource "netbox_manufacturer" "yamaha" {
  name = "YAMAHA"
  slug = "yamaha"
}

resource "netbox_device_type" "yamaha_swx_2110_16_g" {
  model             = "SWX2110-16G"
  slug              = "yamaha-swx2110-16g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2110_5_g" {
  model             = "SWX2110-5G"
  slug              = "yamaha-swx2110-5g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2110_8_g" {
  model             = "SWX2110-8G"
  slug              = "yamaha-swx2110-8g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2110_p_8_g" {
  model             = "SWX2110P-8G"
  slug              = "yamaha-swx2110p-8g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2210_16_g" {
  model             = "SWX2210-16G"
  slug              = "yamaha-swx2210-16g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2210_24_g" {
  model             = "SWX2210-24G"
  slug              = "yamaha-swx2210-24g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2210_8_g" {
  model             = "SWX2210-8G"
  slug              = "yamaha-swx2210-8g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2210_p_10_g" {
  model             = "SWX2210P-10G"
  slug              = "yamaha-swx2210p-10g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2210_p_18_g" {
  model             = "SWX2210P-18G"
  slug              = "yamaha-swx2210p-18g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2210_p_28_g" {
  model             = "SWX2210P-28G"
  slug              = "yamaha-swx2210p-28g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2220_10_nt" {
  model             = "SWX2220-10NT"
  slug              = "yamaha-swx2220-10nt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2221_p_10_nt" {
  model             = "SWX2221P-10NT"
  slug              = "yamaha-swx2221p-10nt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_10_g" {
  model             = "SWX2310-10G"
  slug              = "yamaha-swx2310-10g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_18_gt" {
  model             = "SWX2310-18GT"
  slug              = "yamaha-swx2310-18gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_28_gt" {
  model             = "SWX2310-28GT"
  slug              = "yamaha-swx2310-28gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_52_gt" {
  model             = "SWX2310-52GT"
  slug              = "yamaha-swx2310-52gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_p_10_g" {
  model             = "SWX2310P-10G"
  slug              = "yamaha-swx2310p-10g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_p_18_g" {
  model             = "SWX2310P-18G"
  slug              = "yamaha-swx2310p-18g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2310_p_28_gt" {
  model             = "SWX2310P-28GT"
  slug              = "yamaha-swx2310p-28gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2320_16_mt" {
  model             = "SWX2320-16MT"
  slug              = "yamaha-swx2320-16mt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_2322_p_16_mt" {
  model             = "SWX2322P-16MT"
  slug              = "yamaha-swx2322p-16mt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_3100_10_g" {
  model             = "SWX3100-10G"
  slug              = "yamaha-swx3100-10g"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_3100_18_gt" {
  model             = "SWX3100-18GT"
  slug              = "yamaha-swx3100-18gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_3200_28_gt" {
  model             = "SWX3200-28GT"
  slug              = "yamaha-swx3200-28gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_3200_52_gt" {
  model             = "SWX3200-52GT"
  slug              = "yamaha-swx3200-52gt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_3220_16_mt" {
  model             = "SWX3220-16MT"
  slug              = "yamaha-swx3220-16mt"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_device_type" "yamaha_swx_3220_16_tms" {
  model             = "SWX3220-16TMs"
  slug              = "yamaha-swx3220-16tms"
  manufacturer_id   = netbox_manufacturer.yamaha.id
}

resource "netbox_manufacturer" "zpe" {
  name = "ZPE"
  slug = "zpe"
}

resource "netbox_device_type" "zpe_gsr_t_8_base" {
  model             = "GSR-T8-BASE"
  slug              = "zpe-gsr-t8-base"
  part_number       = "GSR-T8-BASE"
  manufacturer_id   = netbox_manufacturer.zpe.id
}

resource "netbox_device_type" "zpe_nsc_t_48_r_stnd_dac" {
  model             = "NSC-T48R-STND-DAC"
  slug              = "zpe-nsc-t48r-stnd-dac"
  part_number       = "NSC-T48R-STND-DAC"
  manufacturer_id   = netbox_manufacturer.zpe.id
}

resource "netbox_manufacturer" "zte" {
  name = "ZTE"
  slug = "zte"
}

resource "netbox_device_type" "zte_zxa_10_c_300" {
  model             = "ZXA10 C300"
  slug              = "zte-zxa10-c300"
  manufacturer_id   = netbox_manufacturer.zte.id
}

resource "netbox_device_type" "zte_zxa_10_f_822_16" {
  model             = "ZXA10 F822 16"
  slug              = "zte-zxa10-f822-16"
  manufacturer_id   = netbox_manufacturer.zte.id
}

resource "netbox_device_type" "zte_zxa_10_f_822_24" {
  model             = "ZXA10 F822 24"
  slug              = "zte-zxa10-f822-24"
  manufacturer_id   = netbox_manufacturer.zte.id
}

resource "netbox_device_type" "zte_zxa_10_f_832_16" {
  model             = "ZXA10 F832 16"
  slug              = "zte-zxa10-f832-16"
  manufacturer_id   = netbox_manufacturer.zte.id
}

resource "netbox_device_type" "zte_zxa_10_f_832_24" {
  model             = "ZXA10 F832 24"
  slug              = "zte-zxa10-f832-24"
  manufacturer_id   = netbox_manufacturer.zte.id
}

resource "netbox_manufacturer" "zyxel" {
  name = "Zyxel"
  slug = "zyxel"
}

resource "netbox_device_type" "zyxel_fmg_3005_r_20_a" {
  model             = "FMG3005-R20A"
  slug              = "zyxel-fmg3005-r20a"
  part_number       = "FMG3005-R20A"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_gs_1900_48" {
  model             = "GS1900-48"
  slug              = "zyxel-gs1900-48"
  part_number       = "GS1900-48"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_gs_1900_8_hp" {
  model             = "GS1900-8HP"
  slug              = "zyxel-gs1900-8hp"
  part_number       = "GS1900-8HP"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_pmg_1005_t_20_b" {
  model             = "PMG1005-T20B"
  slug              = "zyxel-pmg1005-t20b"
  part_number       = "PMG1005-T20B"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_usg_310" {
  model             = "USG 310"
  slug              = "zyxel-usg-310"
  part_number       = "USG310-EU0102F"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_vmg_1312_b_10_a" {
  model             = "VMG1312-B10A"
  slug              = "zyxel-vmg1312-b10a"
  part_number       = "402444"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_wac_6503_d_s" {
  model             = "WAC6503D-S"
  slug              = "zyxel-wac6503d-s"
  part_number       = "WAC6503D-S"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_wax_610_d" {
  model             = "WAX610D"
  slug              = "zyxel-wax610d"
  part_number       = "WAX610D"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_xgs_1250_12" {
  model             = "XGS1250-12"
  slug              = "zyxel-xgs1250-12"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_xgs_1930_28" {
  model             = "XGS1930-28"
  slug              = "zyxel-xgs1930-28"
  part_number       = "XGS1930-28"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_xgs_1930_28_hp" {
  model             = "XGS1930-28HP"
  slug              = "zyxel-xgs1930-28hp"
  part_number       = "XGS1930-28HP"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_xgs_1930_52" {
  model             = "XGS1930-52"
  slug              = "zyxel-xgs1930-52"
  part_number       = "XGS1930-52"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_device_type" "zyxel_xgs_1930_52_hp" {
  model             = "XGS1930-52HP"
  slug              = "zyxel-xgs1930-52hp"
  part_number       = "XGS1930-52HP"
  manufacturer_id   = netbox_manufacturer.zyxel.id
}

resource "netbox_manufacturer" "ghipsystems" {
  name = "ghipsystems"
  slug = "ghipsystems"
}

resource "netbox_device_type" "ghipsystems_gs_5104_1471_ec" {
  model             = "GS5104-1471-EC"
  slug              = "ghipsystems-gs5104-1471-ec"
  part_number       = "GS5104-1471-EC"
  manufacturer_id   = netbox_manufacturer.ghipsystems.id
}