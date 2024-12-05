onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib adc_tech_opt

do {wave.do}

view wave
view structure
view signals

do {adc_tech.udo}

run -all

quit -force
