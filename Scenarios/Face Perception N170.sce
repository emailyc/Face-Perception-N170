# -------------------------- Header Parameters --------------------------

scenario = "Face Perception N170";

active_buttons = 2;
no_logfile = false;
response_logging = log_active;
response_matching = simple_matching;
button_codes= 1, 2;
target_button_codes = 9, 0;
write_codes = true;
pulse_width = 6;
response_port_output = true;

# ------------------------------- SDL Part ------------------------------
begin;

#CONSTANTS
$OFFSET_X = 350;
$OFFSET_Y = 250;
$CENTRE = 0;

#Set default picture so can make it white later in PCL
picture {} default;

# ----------------------------- Stimuli -----------------------------
array {
   text {caption = "(Press Space to begin)"; font_size = 36; font_color = 0, 0, 0; background_color = 255, 255, 255; } space;
	text {caption = "(Press Enter to continue)"; font_size = 36; font_color = 0, 0, 0; background_color = 255, 255, 255;} enter;
	text {caption = "(Press Enter to begin practice)"; font_size = 36; font_color = 0, 0, 0; background_color = 255, 255, 255;} enter_practice;
   text {caption = "TARGET: Tiffany's Happy Face (Only)"; font_size = 36; font_color = 38,44,79; background_color = 255, 255, 255;} happy_tiffany;
	text {caption = "TARGET: Tiffany's Sad Face (Only)"; font_size = 36; font_color = 38,44,79; background_color = 255, 255, 255;} sad_tiffany;
	text {caption = "TARGET: Tiffany's Neutral Face (Only)"; font_size = 36; font_color = 38,44,79; background_color = 255, 255, 255;} neutral_tiffany;
   text { caption = "TARGET: All of Tiffany's Faces"; font_size = 36; font_color = 38,44,79; background_color = 255, 255, 255;} tiffany_targets;
	text {caption = "TARGET: Dick's Happy Face (Only)"; font_size = 36; font_color = 38,44,79; background_color = 255, 255, 255;} happy_dick;
   text { caption = "TARGET: All of Dick's Faces"; font_size = 36; font_color = 38,44,79; background_color = 255, 255, 255;} dick_targets;
 text { caption = "In this experiment, you will have to identify some face targets from a set of face stimuli.\n\nDifferent targets are to be identified in different conditions.\n\nPress <spacebar> when you see the targets; do not response when non-targets are shown.\n\nPlease respond as accurately and as fast as possible.\n\nBefore the experiment begins, you will be doing a practice trial."; font_size = 38; font_color = 38,44,79; background_color = 255, 255, 255;} instruction_1;
 text { caption = "You will have to identify the following target(s) from a set of face stimuli,"; font_size = 38; font_color = 38,44,79; background_color = 255, 255, 255;} instruction_2;
text { caption = "Press <spacebar> when you see the target(s); do not respond when non-targets are shown.\nPlease respond as accurately and as fast as possible"; font_size = 38; font_color = 38,44,79; background_color = 255, 255, 255;} instruction_3;
} phrases;

	
array {
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_10_neutral_F2_resize.bmp"; preload = true; } bmx;
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_11_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_12_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_13_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_14_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_15_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_16_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_17_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_18_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_19_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_1_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_20_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_21_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_22_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_23_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_24_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_25_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_26_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_27_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_28_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_29_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_2_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_30_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_31_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_32_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_33_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_34_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_35_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_36_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_3_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_4_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_5_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_6_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_7_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_8_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget_target\\nontarget_target_9_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_100_sad_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_101_sad_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_102_sad_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_103_sad_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_104_sad_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_105_sad_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_106_sad_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_107_sad_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_108_neutral_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_10_happy_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_11_happy_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_12_happy_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_13_neutral_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_14_neutral_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_15_neutral_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_16_neutral_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_17_neutral_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_18_neutral_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_19_neutral_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_1_happy_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_20_neutral_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_21_neutral_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_22_neutral_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_23_neutral_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_24_neutral_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_25_sad_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_26_sad_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_27_sad_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_28_sad_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_29_sad_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_2_happy_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_30_sad_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_31_sad_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_32_sad_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_33_sad_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_34_sad_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_35_sad_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_36_sad_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_37_happy_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_38_happy_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_39_happy_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_3_happy_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_40_happy_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_41_happy_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_42_happy_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_43_happy_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_44_happy_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_45_happy_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_46_happy_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_47_happy_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_48_happy_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_49_neutral_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_4_happy_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_50_neutral_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_51_neutral_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_52_neutral_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_53_neutral_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_54_neutral_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_55_neutral_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_56_neutral_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_57_neutral_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_58_neutral_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_59_neutral_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_5_happy_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_60_neutral_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_61_sad_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_62_sad_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_63_sad_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_64_sad_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_65_sad_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_66_sad_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_67_sad_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_68_sad_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_69_sad_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_6_happy_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_70_sad_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_71_sad_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_72_sad_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_73_happy_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_74_happy_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_75_happy_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_76_happy_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_77_happy_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_78_happy_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_79_happy_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_7_happy_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_80_happy_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_81_happy_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_82_happy_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_83_happy_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_84_happy_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_85_neutral_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_86_neutral_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_87_neutral_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_88_neutral_F21.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_89_neutral_F22.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_8_happy_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_90_neutral_F24.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_91_neutral_F25.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_92_neutral_F27.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_93_neutral_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_94_neutral_F28.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_95_neutral_F29.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_96_sad_F9.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_97_sad_F11.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_98_sad_F19.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_99_sad_F20.bmp"; preload = true; };
bitmap { filename = "happy_condition\\nontarget\\nontarget_9_happy_F26.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_10_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_11_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_12_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_13_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_14_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_15_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_16_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_17_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_18_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_1_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_2_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_3_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_4_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_5_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_6_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_7_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_8_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "happy_condition\\target\\target_9_happy_F2_resize.bmp"; preload = true; } happy_target;
} HAPPY;
	
array {
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_10_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_11_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_12_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_13_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_14_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_15_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_16_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_17_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_18_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_19_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_1_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_20_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_21_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_22_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_23_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_24_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_25_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_26_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_27_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_28_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_29_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_2_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_30_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_31_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_32_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_33_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_34_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_35_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_36_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_3_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_4_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_5_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_6_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_7_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_8_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget_target\\nontarget_target_9_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_100_sad_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_101_sad_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_102_sad_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_103_sad_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_104_sad_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_105_sad_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_106_sad_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_107_sad_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_108_neutral_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_10_happy_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_11_happy_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_12_happy_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_13_neutral_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_14_neutral_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_15_neutral_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_16_neutral_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_17_neutral_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_18_neutral_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_19_neutral_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_1_happy_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_20_neutral_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_21_neutral_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_22_neutral_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_23_neutral_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_24_neutral_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_25_sad_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_26_sad_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_27_sad_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_28_sad_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_29_sad_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_2_happy_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_30_sad_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_31_sad_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_32_sad_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_33_sad_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_34_sad_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_35_sad_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_36_sad_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_37_happy_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_38_happy_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_39_happy_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_3_happy_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_40_happy_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_41_happy_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_42_happy_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_43_happy_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_44_happy_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_45_happy_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_46_happy_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_47_happy_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_48_happy_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_49_neutral_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_4_happy_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_50_neutral_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_51_neutral_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_52_neutral_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_53_neutral_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_54_neutral_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_55_neutral_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_56_neutral_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_57_neutral_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_58_neutral_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_59_neutral_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_5_happy_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_60_neutral_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_61_sad_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_62_sad_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_63_sad_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_64_sad_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_65_sad_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_66_sad_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_67_sad_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_68_sad_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_69_sad_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_6_happy_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_70_sad_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_71_sad_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_72_sad_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_73_happy_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_74_happy_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_75_happy_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_76_happy_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_77_happy_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_78_happy_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_79_happy_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_7_happy_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_80_happy_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_81_happy_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_82_happy_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_83_happy_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_84_happy_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_85_neutral_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_86_neutral_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_87_neutral_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_88_neutral_F21.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_89_neutral_F22.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_8_happy_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_90_neutral_F24.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_91_neutral_F25.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_92_neutral_F27.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_93_neutral_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_94_neutral_F28.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_95_neutral_F29.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_96_sad_F9.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_97_sad_F11.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_98_sad_F19.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_99_sad_F20.bmp"; preload = true; };
bitmap { filename = "sad_condition\\nontarget\\nontarget_9_happy_F26.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_10-_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_11_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_12_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_13_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_14_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_15_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_16_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_17_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_18_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_1_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_2_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_3_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_4_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_5_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_6_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_7_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_8_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "sad_condition\\target\\target_9_sad_F2_resize.bmp"; preload = true; }sad_target;
} SAD;

array {
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_10_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_11_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_12_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_13_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_14_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_15_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_16_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_17_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_18_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_19_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_1_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_20_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_21_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_22_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_23_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_24_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_25_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_26_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_27_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_28_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_29_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_2_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_30_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_31_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_32_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_33_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_34_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_35_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_36_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_3_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_4_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_5_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_6_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_7_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_8_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget_target\\nontarget_target_9_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_100_sad_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_101_sad_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_102_sad_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_103_sad_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_104_sad_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_105_sad_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_106_sad_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_107_sad_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_108_neutral_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_10_happy_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_11_happy_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_12_happy_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_13_neutral_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_14_neutral_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_15_neutral_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_16_neutral_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_17_neutral_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_18_neutral_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_19_neutral_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_1_happy_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_20_neutral_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_21_neutral_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_22_neutral_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_23_neutral_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_24_neutral_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_25_sad_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_26_sad_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_27_sad_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_28_sad_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_29_sad_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_2_happy_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_30_sad_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_31_sad_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_32_sad_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_33_sad_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_34_sad_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_35_sad_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_36_sad_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_37_happy_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_38_happy_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_39_happy_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_3_happy_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_40_happy_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_41_happy_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_42_happy_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_43_happy_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_44_happy_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_45_happy_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_46_happy_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_47_happy_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_48_happy_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_49_neutral_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_4_happy_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_50_neutral_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_51_neutral_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_52_neutral_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_53_neutral_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_54_neutral_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_55_neutral_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_56_neutral_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_57_neutral_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_58_neutral_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_59_neutral_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_5_happy_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_60_neutral_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_61_sad_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_62_sad_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_63_sad_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_64_sad_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_65_sad_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_66_sad_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_67_sad_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_68_sad_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_69_sad_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_6_happy_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_70_sad_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_71_sad_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_72_sad_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_73_happy_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_74_happy_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_75_happy_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_76_happy_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_77_happy_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_78_happy_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_79_happy_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_7_happy_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_80_happy_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_81_happy_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_82_happy_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_83_happy_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_84_happy_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_85_neutral_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_86_neutral_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_87_neutral_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_88_neutral_F21.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_89_neutral_F22.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_8_happy_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_90_neutral_F24.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_91_neutral_F25.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_92_neutral_F27.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_93_neutral_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_94_neutral_F28.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_95_neutral_F29.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_96_sad_F9.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_97_sad_F11.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_98_sad_F19.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_99_sad_F20.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\nontarget\\nontarget_9_happy_F26.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_10_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_11_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_12_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_13_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_14_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_15_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_16_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_17_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_18_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_1_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_2_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_3_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_4_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_5_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_6_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_7_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_8_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "neutral_condition\\target\\target_9_neutral_F2_resize.bmp"; preload = true; }neutral_target;
} NEUTRAL;

array {
bitmap { filename = "identity_condition\\nontarget_filler\\filler_10_neutral_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_11_sad_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_12_sad_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_13_happy_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_14_happy_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_15_neutral_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_16_neutral_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_17_sad_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_18_sad_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_19_happy_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_1_happy_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_20_happy_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_21_neutral_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_22_sad_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_23_neutral_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_24_sad_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_25_sad_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_26_happy_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_27_happy_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_28_neutral_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_29_neutral_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_2_happy_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_30_sad_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_31_sad_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_32_happy_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_33_happy_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_34_neutral_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_35_neutral_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_36_sad_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_3_neutral_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_4_neutral_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_5_sad_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_6_sad_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_7_happy_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_8_happy_F8.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget_filler\\filler_9_neutral_F7.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_100_sad_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_101_sad_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_102_sad_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_103_sad_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_104_sad_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_105_sad_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_106_sad_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_107_sad_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_108_neutral_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_10_happy_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_11_happy_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_12_happy_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_13_neutral_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_14_neutral_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_15_neutral_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_16_neutral_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_17_neutral_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_18_neutral_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_19_neutral_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_1_happy_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_20_neutral_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_21_neutral_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_22_neutral_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_23_neutral_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_24_neutral_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_25_sad_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_26_sad_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_27_sad_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_28_sad_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_29_sad_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_2_happy_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_30_sad_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_31_sad_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_32_sad_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_33_sad_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_34_sad_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_35_sad_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_36_sad_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_37_happy_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_38_happy_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_39_happy_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_3_happy_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_40_happy_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_41_happy_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_42_happy_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_43_happy_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_44_happy_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_45_happy_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_46_happy_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_47_happy_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_48_happy_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_49_neutral_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_4_happy_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_50_neutral_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_51_neutral_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_52_neutral_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_53_neutral_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_54_neutral_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_55_neutral_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_56_neutral_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_57_neutral_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_58_neutral_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_59_neutral_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_5_happy_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_60_neutral_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_61_sad_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_62_sad_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_63_sad_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_64_sad_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_65_sad_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_66_sad_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_67_sad_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_68_sad_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_69_sad_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_6_happy_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_70_sad_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_71_sad_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_72_sad_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_73_happy_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_74_happy_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_75_happy_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_76_happy_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_77_happy_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_78_happy_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_79_happy_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_7_happy_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_80_happy_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_81_happy_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_82_happy_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_83_happy_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_84_happy_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_85_neutral_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_86_neutral_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_87_neutral_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_88_neutral_F21.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_89_neutral_F22.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_8_happy_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_90_neutral_F24.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_91_neutral_F25.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_92_neutral_F27.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_93_neutral_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_94_neutral_F28.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_95_neutral_F29.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_96_sad_F9.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_97_sad_F11.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_98_sad_F19.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_99_sad_F20.bmp"; preload = true; };
bitmap { filename = "identity_condition\\nontarget\\nontarget_9_happy_F26.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_10_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_11_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_12_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_13_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_14_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_15_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_16_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_17_sad_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_18_sad_F2_resize.bmp"; preload = true; }id_target_3;
bitmap { filename = "identity_condition\\target\\target_1_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_2_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_3_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_4_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_5_happy_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_6_happy_F2_resize.bmp"; preload = true; }id_target_2;
bitmap { filename = "identity_condition\\target\\target_7_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_8_neutral_F2_resize.bmp"; preload = true; };
bitmap { filename = "identity_condition\\target\\target_9_neutral_F2_resize.bmp"; preload = true; }id_target_1;
} IDENTITY;	

array{
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_45_sad_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_19_happy_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_48_sad_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_15_sad_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_18_sad_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_36_sad_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_5_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_13_happy_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_14_happy_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_40_happy_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_2_sad_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_37_happy_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_4_happy_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_8_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_7_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_47_sad_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_31_happy_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_6_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_17_sad_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_12_sad_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_25_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_34__happy_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_23_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_11_happy_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_10_happy_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_20_happy_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_24_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_22_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_32_happy_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_1_happy_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_33_happy_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_9_sad_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_41_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_35_sad_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_26_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_16_sad_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_39_happy_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_38_happy_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_29_sad_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_30_sad_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_27_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_42_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_46_sad_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_21_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_44_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_43_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_3_sad_M2.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\nontargets\\nontarget_28_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\target\\target_5_sad_M5.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\target\\target_3_neutral_M5.bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\target\\target_4_neutral_M5.bmp"; preload = true; } id_pratice_target_3;
bitmap { filename = "Identity_condition_practice\\target\\target_2_happy_M5 .bmp"; preload = true; };
bitmap { filename = "Identity_condition_practice\\target\\target_1_happy_M5.bmp"; preload = true; } id_pratice_target_2;
bitmap { filename = "Identity_condition_practice\\target\\target_6_sad_M5.bmp"; preload = true; } id_pratice_target_1;
} IDENTITY_PRACTICE;



array{
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_10_sad_M5.bmp"; preload = true; }emotion_pratice_not_targe_3;
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_8_sad_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_7_sad_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_12_sad_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_11_sad_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_2_neutral_M5.bmp"; preload = true; }emotion_pratice_not_targe_2;
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_9_sad_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_5_neutral_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_4_neutral_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_3_neutral_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_1_neutral_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontarget_target\\nontarget_target_6_neutral_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_19_happy_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_15_sad_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_18_sad_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_36_sad_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_5_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_13_happy_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_14_happy_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_2_sad_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_4_happy_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_8_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_7_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_31_happy_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_6_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_17_sad_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_12_sad_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_25_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_34__happy_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_23_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_11_happy_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_10_happy_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_20_happy_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_24_neutral_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_22_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_32_happy_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_1_happy_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_33_happy_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_9_sad_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_35_sad_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_26_neutral_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_16_sad_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_29_sad_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_30_sad_M4.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_27_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_21_neutral_M1.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_3_sad_M2.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\nontargets\\nontarget_28_neutral_M7.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\target\\target_4_happy_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\target\\target_3_happy_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\target\\target_5_happy_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\target\\target_2_happy_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\target\\target_1_happy_M5.bmp"; preload = true; };
bitmap { filename = "Emotion_condition_practice\\target\\target_6_happy_M5.bmp"; preload = true; } emotion_pratice_targe_1;

}EMOTION_PRACTICE;


# ------------------------------- Trials ------------------------------
trial{
	trial_type = specific_response;
	terminator_button = 2;
	trial_duration = forever;
	picture {
	background_color = 255, 255, 255;
   text {
		background_color = 255, 255, 255;
      caption = "Welcome\nto\nPresentation";
      font_size = 86;
      font_color = 38,44,79;
   };
   x = 0; y =0;
   text enter;
   x = 0; y = -500;
} welcome_pic;
} welcome_page;

trial {
	trial_type = specific_response;
	terminator_button = 2;
	trial_duration = forever;
	picture {
		background_color = 255, 255, 255;
		text instruction_1;
		x=0;y=200;
	
		text enter;
		x = 0; y = -500;
	}instruction_pic;
} instruction_trial; 


trial{
	trial_type = specific_response;
	terminator_button = 2;
	trial_duration = forever;
	picture {
	background_color = 255, 255, 255;
   text {
      caption = "Break";
      font_size = 86;
      font_color = 38,44,79;
		background_color = 255, 255, 255;
   };
   x = 0; y =0;
   text enter;
   x = 0; y = -500;
} break_pic;
} break_trial;

trial{
	trial_type = specific_response;
	terminator_button = 2;
	trial_duration = forever;
	picture {
	background_color = 255, 255, 255;
   text {
      caption = "Practice Complete";
      font_size = 86;
      font_color = 38,44,79;
		background_color = 255, 255, 255;
   };
   x = 0; y =0;
   text enter;
   x = 0; y = -500;
} practice_pic;
} practice_trial;

trial{
	trial_type = specific_response;
	terminator_button = 1,2;
	trial_duration = forever;
	picture {
	background_color = 255, 255, 255;
   text {
      caption = "The is the end of the experiment.";
      font_size = 86;
      font_color = 38,44,79;
		background_color = 255, 255, 255;
   };
   x = 0; y =0;
   text {
      caption = "(Press Space or Enter to quit)";
		font_size = 36;
		font_color = 38,44,79;
		background_color = 255, 255, 255;
   };
   x = 0; y = -500;
} end_pic;
} end_trial;


trial{
	trial_type = specific_response;
	terminator_button = 2;
	trial_duration = forever;
	picture {
	background_color = 255, 255, 255;
   text {
		background_color = 255, 255, 255;
      caption = "Ready?";
      font_size = 86;
      font_color = 38,44,79;
   };
   x = 0; y =0;
   text enter;
   x = 0; y = -500;
} ready_pic;
} ready_trial;


trial{
	trial_type = fixed;
	trial_duration = 1000;
	picture {
	background_color = 255, 255, 255;
   text {
      caption = "+";
      font_size = 78;
		font_color = 0,0,0;
		background_color = 255, 255, 255;
   };
   x = 0; y =0;
} fixate_pic;
} fixation_trial;


trial {
	trial_type = specific_response;
	terminator_button = 1;
	trial_duration = forever;
	stimulus_event {
		picture{
		background_color = 255, 255, 255;
		}Block_Begin_pic;
	}Block_Begin_event;
}Block_Begin;

	
trial {
	trial_type = fixed;
	all_responses = false;
    picture default;
	response_active = false;
	code = "Blank";
} blank_trial;

trial {
    trial_duration = 800;
    stimulus_event {
        picture {
			background_color = 255, 255, 255;
			bitmap bmx;
            x = 0; y = 0;
			}test_pic;
			delta_time = 0;
		} test_event;		
} test_trial;



# ----------------------------- PCL Program -----------------------------
begin_pcl;

#CONSTANTS
int OFFSET_X = 350;
int OFFSET_Y = 250;
int CENTRE = 0;

default.set_background_color( 255, 255, 255 );

# ----------------------------- Functions -----------------------------
sub string get_path_component ( bitmap bitmap_file, int nth_last_index )
begin
	array<string> path_component[0];
	string full_path = bitmap_file.filename();
	full_path.split("\\", path_component);
	int component_index = path_component.count() - nth_last_index + 1;
	return path_component[component_index];
end;

sub int get_stimuli_port_code ( bitmap bitmap_file )
begin 
	string condition_directory_name = get_path_component( bitmap_file, 3 );
	string target_directory_name = get_path_component( bitmap_file, 2 );
	string filename = get_path_component( bitmap_file, 1 );
	
	if (condition_directory_name == "happy_condition") then
			if target_directory_name == "target" then
				return 11;
			elseif target_directory_name == "nontarget_target" then
				if filename.find( "sad" ) > 0 then
					return 13;
				elseif filename.find( "neutral" ) > 0 then
					return 14;
				end;
			elseif target_directory_name == "nontarget" then
				if filename.find( "happy" ) > 0 then
					return 15;
				elseif filename.find( "sad" ) > 0 then
					return 16;
				elseif filename.find( "neutral" ) > 0 then
					return 17;
				end;
			end;
	elseif (condition_directory_name == "sad_condition") then
		if target_directory_name == "target" then
				return 21;
		elseif target_directory_name == "nontarget_target" then
			if filename.find( "happy" ) > 0 then
				return 22;
			elseif filename.find( "neutral" ) > 0 then
				return 24;
			end;
		elseif target_directory_name == "nontarget" then
			if filename.find( "happy" ) > 0 then
				return 25;
			elseif filename.find( "sad" ) > 0 then
				return 26;
			elseif filename.find( "neutral" ) > 0 then
				return 27;
			end;
		end;				
	elseif (condition_directory_name == "neutral_condition") then
		if target_directory_name == "target" then
				return 31;
		elseif target_directory_name == "nontarget_target" then
			if filename.find( "happy" ) > 0 then
				return 32;
			elseif filename.find( "sad" ) > 0 then
				return 33;
			end;
		elseif target_directory_name == "nontarget" then
			if filename.find( "happy" ) > 0 then
				return 35;
			elseif filename.find( "sad" ) > 0 then
				return 36;
			elseif filename.find( "neutral" ) > 0 then
				return 37;
			end;
		end;	
	elseif (condition_directory_name == "identity_condition") then
		if target_directory_name == "target" then
				return 41;
		elseif target_directory_name == "nontarget" then
			if filename.find( "happy" ) > 0 then
				return 45;
			elseif filename.find( "sad" ) > 0 then
				return 46;
			elseif filename.find( "neutral" ) > 0 then
				return 47;
			end;
		elseif target_directory_name == "nontarget_filler" then
			return 48;			
		end;

	end;
	return 0;
end; #End of function

# ----------------------------- Start Experiment -----------------------------

include_once "..\\PCLs\\Prepare_Experiment.pcl";
include_once "..\\PCLs\\Start_Experiment.pcl";

# ----------------------------- PRACTICE Block -----------------------------
include_once "..\\PCLs\\Practice_Block.pcl";
practice_trial.present();

# ----------------------------- TEST Block -----------------------------
include_once "..\\PCLs\\TEST_Block.pcl";

# ----------------------------- END -----------------------------
end_trial.present();