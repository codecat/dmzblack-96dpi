#!/bin/sh
mkdir ../xcursors
xcursorgen left_ptr_watch.in ../xcursors/left_ptr_watch
#xcursorgen hand1.in ../xcursors/hand1
xcursorgen hand2.in ../xcursors/hand2
xcursorgen left_ptr.in ../xcursors/left_ptr
#xcursorgen center_ptr.in ../xcursors/center_ptr
xcursorgen xterm.in ../xcursors/xterm
xcursorgen crossed_circle.in ../xcursors/crossed_circle
xcursorgen right_ptr.in ../xcursors/right_ptr
xcursorgen copy.in ../xcursors/copy
xcursorgen move.in ../xcursors/move
xcursorgen link.in ../xcursors/link
xcursorgen circle.in ../xcursors/circle
xcursorgen sb_h_double_arrow.in ../xcursors/sb_h_double_arrow
xcursorgen sb_v_double_arrow.in ../xcursors/sb_v_double_arrow
xcursorgen top_left_corner.in ../xcursors/top_left_corner
xcursorgen top_right_corner.in ../xcursors/top_right_corner
xcursorgen bottom_left_corner.in ../xcursors/bottom_left_corner
xcursorgen bottom_right_corner.in ../xcursors/bottom_right_corner
xcursorgen fd_double_arrow.in ../xcursors/fd_double_arrow
xcursorgen bd_double_arrow.in ../xcursors/bd_double_arrow
xcursorgen watch.in ../xcursors/watch
xcursorgen sb_left_arrow.in ../xcursors/sb_left_arrow
xcursorgen sb_right_arrow.in ../xcursors/sb_right_arrow
xcursorgen sb_up_arrow.in ../xcursors/sb_up_arrow
xcursorgen sb_down_arrow.in ../xcursors/sb_down_arrow
#xcursorgen based_arrow_down.in ../xcursors/based_arrow_down
#xcursorgen based_arrow_up.in ../xcursors/based_arrow_up
xcursorgen bottom_side.in ../xcursors/bottom_side
xcursorgen top_side.in ../xcursors/top_side
xcursorgen left_side.in ../xcursors/left_side
xcursorgen right_side.in ../xcursors/right_side
xcursorgen grabbing.in ../xcursors/grabbing
xcursorgen question_arrow.in ../xcursors/question_arrow
xcursorgen top_tee.in ../xcursors/top_tee
xcursorgen bottom_tee.in ../xcursors/bottom_tee
xcursorgen left_tee.in ../xcursors/left_tee
xcursorgen right_tee.in ../xcursors/right_tee
xcursorgen ul_angle.in ../xcursors/ul_angle
xcursorgen ll_angle.in ../xcursors/ll_angle
xcursorgen ur_angle.in ../xcursors/ur_angle
xcursorgen lr_angle.in ../xcursors/lr_angle
xcursorgen X_cursor.in ../xcursors/X_cursor
xcursorgen crosshair.in ../xcursors/crosshair
xcursorgen cross.in ../xcursors/cross
xcursorgen tcross.in ../xcursors/tcross
xcursorgen dotbox.in ../xcursors/dotbox
xcursorgen plus.in ../xcursors/plus
xcursorgen pencil.in ../xcursors/pencil
xcursorgen dnd-none.in ../xcursors/dnd-none
xcursorgen dnd-copy.in ../xcursors/dnd-copy
xcursorgen dnd-link.in ../xcursors/dnd-link
xcursorgen dnd-move.in ../xcursors/dnd-move
xcursorgen dnd-ask.in ../xcursors/dnd-ask
xcursorgen color-picker.in ../xcursors/color-picker

cd ../xcursors
ln -sf    dotbox			draped_box
ln -sf    dotbox			icon
ln -sf    dotbox			target
ln -sf    dotbox			dot_box_mask
ln -sf    X_cursor			pirate
ln -sf    left_ptr_watch	08e8e1c95fe2fc01f976f1e063a24ccd
ln -sf    left_ptr_watch	3ecb610c1bf2410f44200f48c40d3599
ln -sf    left_ptr			arrow
ln -sf    left_ptr			top_left_arrow
ln -sf    right_ptr			draft_large
ln -sf    right_ptr			draft_small
ln -sf    move				4498f0e0c1937ffe01fd06f973665830
ln -sf    move				9081237383d90e509aa00f00170e968f
ln -sf    copy				1081e37283d90000800003c07f3ef6bf
ln -sf    copy				6407b0e94181790501fd1e167b474872
ln -sf    cross				cross_reverse
ln -sf    cross				diamond_cross
ln -sf    hand2				9d800788f1b08800ae810202380a0822
ln -sf    hand2				e29285e634086352946a0e7090d73106
ln -sf    hand2				hand
ln -sf    hand2				hand1
ln -sf    grabbing			fleur
ln -sf    question_arrow	d9ce0ab605698f320427677b458ad60b
ln -sf    question_arrow	5c6cd98b3f3ebcb1f9c7f1c204630408
ln -sf    question_arrow	help
ln -sf    question_arrow	left_ptr_help
ln -sf    link				3085a0e285430894940527032f8b26df
ln -sf    link				640fb0e74195791501fd1ed57b41487f
ln -sf    crossed_circle	03b6e0fcb3499374a867c041f52298f0
ln -sf    fd_double_arrow	fcf1c3c7cd4491d801f1e1c78f100000
ln -sf    bd_double_arrow	c7088f0f3e6c8088236ef8e1e3e70000
#ln -sf    based_arrow_up	base_arrow_up
#ln -sf    based_arrow_down	base_arrow_down
ln -sf    sb_h_double_arrow h_double_arrow
ln -sf    sb_h_double_arrow	14fef782d02440884392942c11205230
ln -sf    h_double_arrow	028006030e0e7ebffc7f7070c0600140
ln -sf    sb_v_double_arrow double_arrow
ln -sf    sb_v_double_arrow v_double_arrow
ln -sf    sb_v_double_arrow	2870a09082c103050810ffdffffe0204
ln -sf    v_double_arrow	00008160000006810000408080010102
#ln -sf    center_ptr		centre_ptr

#cp -RPv * /usr/share/icons/dmz-aa/cursors/
