# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "I2C_CLOCK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INPUT_CLOCK_FREQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.I2C_CLOCK_FREQ { PARAM_VALUE.I2C_CLOCK_FREQ } {
	# Procedure called to update I2C_CLOCK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.I2C_CLOCK_FREQ { PARAM_VALUE.I2C_CLOCK_FREQ } {
	# Procedure called to validate I2C_CLOCK_FREQ
	return true
}

proc update_PARAM_VALUE.INPUT_CLOCK_FREQ { PARAM_VALUE.INPUT_CLOCK_FREQ } {
	# Procedure called to update INPUT_CLOCK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_CLOCK_FREQ { PARAM_VALUE.INPUT_CLOCK_FREQ } {
	# Procedure called to validate INPUT_CLOCK_FREQ
	return true
}


proc update_MODELPARAM_VALUE.INPUT_CLOCK_FREQ { MODELPARAM_VALUE.INPUT_CLOCK_FREQ PARAM_VALUE.INPUT_CLOCK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_CLOCK_FREQ}] ${MODELPARAM_VALUE.INPUT_CLOCK_FREQ}
}

proc update_MODELPARAM_VALUE.I2C_CLOCK_FREQ { MODELPARAM_VALUE.I2C_CLOCK_FREQ PARAM_VALUE.I2C_CLOCK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.I2C_CLOCK_FREQ}] ${MODELPARAM_VALUE.I2C_CLOCK_FREQ}
}

