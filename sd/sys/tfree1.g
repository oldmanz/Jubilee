; tfree1.g
; Runs at the start of a toolchange if the current tool is tool-1.
; Note: tool offsets are applied at this point unless we preempt commands with G53!

G91                          ; Relative Mode.
G1 Z2                        ; Pop Z up slightly so we don't crash while traveling over the usable bed region.
G90                          ; Absolute Mode.

G53 G0 X{global.parkX1} Y{global.safeYTool} F12000       ; Rapid to the back of the post. Stay away from the tool rack so we don't collide with tools.
                             ; This position must be chosen such that the most protruding y face of the current tool
                             ; (while on the carriage) does not collide with the most protruding y face of any parked tool.

G53 G1 Y{global.parkY1} F6000            ; Controlled move to the park position with tool-1. (park_x, park_y)
M98 P"/macros/tool_unlock.g" ; Unlock the tool
M950 F0 C"nil"
G53 G1 Y{global.safeY} F6000            ; Retract the pin.

