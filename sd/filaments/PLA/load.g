M291 P"Please wait while the nozzle is being heated up" R"Loading PLA" T5 ; Display message
G10 S215 ; Set current tool temperature to 200C
M116 ; Wait for the temperatures to be reached
M291 P"Feeding filament..." R"Loading PLA" T5 ; Display new message
M83 ; Extruder to relative mode
G1 E10 F300 ; Feed 10mm of filament at 600mm/min
G1 E100 F800 ; Feed 100mm of filament at 1000mm/min
G1 E20 F300 ; Feed 20mm of filament at 300mm/min
G4 P1000 ; Wait one second
G1 E-10 F1800 ; Retract 10mm of filament at 1800mm/min
M400 ; Wait for moves to complete
M292 ; Hide the message
G10 S0 ; Turn off the heater again