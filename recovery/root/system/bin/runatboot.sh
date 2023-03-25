#!/system/bin/sh

module_path=/vendor/lib/modules

touch_class_path=/sys/class/touchscreen
touch_path=
firmware_path=/vendor/firmware
firmware_file=

# load Modules 
insmod $module_path/utags.ko
insmod $module_path/mmi_annotate.ko
insmod $module_path/mmi_info.ko
insmod $module_path/adapter_class.ko
insmod $module_path/mmi_qc3p_wt6670f.ko
insmod $module_path/mmi_charger.ko
insmod $module_path/mmi_discrete_charger_class.ko
insmod $module_path/mmi_discrete_charger.ko
insmod $module_path/sgm4154x_charger.ko
insmod $module_path/rt9471_charger.ko
insmod $module_path/qpnp_adaptive_charge.ko
insmod $module_path/tcpc_class.ko
insmod $module_path/cw2217b_fg_mmi.ko
insmod $module_path/sm5602_fg_mmi.ko
insmod $module_path/bq2597x_mmi_iio.ko
insmod $module_path/mmi_discrete_turbo_charger.ko
insmod $module_path/tcpc_sgm7220.ko
insmod $module_path/rt_pd_manager.ko
insmod $module_path/sensors_class.ko
insmod $module_path/exfat.ko
insmod $module_path/ilitek_v3_mmi.ko
insmod $module_path/mmi_info.ko
insmod $module_path/moto_f_usbnet.ko
insmod $module_path/qpnp_adaptive_charge.ko
insmod $module_path/focaltech_touch.ko
insmod $module_path/oreo_ili9882n.ko   
insmod $module_path/nova_0flash_mmi.ko
insmod $module_path/qpnp-power-on-mmi.ko
insmod $module_path/focaltech_0flash_v2_mmi.ko

cd $firmware_path
touch_product_string=$(ls $touch_class_path)
echo "focaltech"
firmware_file="focaltech-txd-ft8726-02-0000-devon.bin"
touch_path=/sys$(cat $touch_class_path/$touch_product_string/path | awk '{print $1}')
echo "forcing firmware upgrade"
echo 1 > $touch_path/forcereflash
echo "sending reflash command"
echo $firmware_file > $touch_path/doreflash
sleep 1.5
setprop touch.fw.loaded 1

exit 0