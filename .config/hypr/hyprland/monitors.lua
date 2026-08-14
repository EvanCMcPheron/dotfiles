laptop_w = 2880
laptop_h = 1920
laptop_r = 60.0
laptop_s = 1.33
laptop_abs_w = laptop_w / laptop_s
laptop_abs_h = laptop_h / laptop_s

monitor_w = 1920
monitor_h = 1080
monitor_r = 60.0
monitor_s = 1

hl.monitor({
    output = main_mon,
    mode = laptop_w .. "x" .. laptop_h .. "@" .. laptop_r,
    position = "0x"..monitor_h / monitor_s,
    scale = laptop_s,
})
for i=1,4,1 do
	hl.monitor({
		output = "DP-"..i,
		mode = monitor_w .. "x" .. monitor_h .. "@" .. monitor_r,
		position = "0x0",
		scale = monitor_s,
	})
end

for i=1,9,1 do
	hl.workspace_rule({workspace=tostring(i), monitor="eDP-1"})
end

-- monitor=HDMI-A-1, preferred, auto, 1, mirror, eDP-1
