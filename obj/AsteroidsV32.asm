; program start section
  call __global_scope_initialization
  call __function_main
  hlt

; location of global variables
  %define global_malloc_start_address 0
  %define global_malloc_end_address 1
  %define global_malloc_first_block 2
  %define global_projectiles 3
  %define global_asteroidShapes 103
  %define global_bigAsteroids 223
  %define global_mediumAsteroids 230
  %define global_smallAsteroids 370
  %define global_projectileOffset 650

__global_scope_initialization:
  push BP
  mov BP, SP
  mov R0, 1048576
  mov [global_malloc_start_address], R0
  mov R0, 3145727
  mov [global_malloc_end_address], R0
  mov R0, -1
  mov [global_malloc_first_block], R0
  mov R0, -3
  mov [global_asteroidShapes], R0
  mov R0, 10
  mov [104], R0
  mov R0, 3
  mov [105], R0
  mov R0, 10
  mov [106], R0
  mov R0, 3
  mov [107], R0
  mov R0, 3
  mov [108], R0
  mov R0, 10
  mov [109], R0
  mov R0, 3
  mov [110], R0
  mov R0, 10
  mov [111], R0
  mov R0, -3
  mov [112], R0
  mov R0, 3
  mov [113], R0
  mov R0, -3
  mov [114], R0
  mov R0, -3
  mov [115], R0
  mov R0, -3
  mov [116], R0
  mov R0, -10
  mov [117], R0
  mov R0, -3
  mov [118], R0
  mov R0, -10
  mov [127], R0
  mov R0, 10
  mov [128], R0
  mov R0, -10
  mov [129], R0
  mov R0, 40
  mov [130], R0
  mov R0, 10
  mov [131], R0
  mov R0, 40
  mov [132], R0
  mov R0, 10
  mov [133], R0
  mov R0, 10
  mov [134], R0
  mov R0, 40
  mov [135], R0
  mov R0, 10
  mov [136], R0
  mov R0, 40
  mov [137], R0
  mov R0, -10
  mov [138], R0
  mov R0, 10
  mov [139], R0
  mov R0, -10
  mov [140], R0
  mov R0, 10
  mov [141], R0
  mov R0, -40
  mov [142], R0
  mov R0, -10
  mov [143], R0
  mov R0, -40
  mov [144], R0
  mov R0, -10
  mov [145], R0
  mov R0, -10
  mov [146], R0
  mov R0, -40
  mov [147], R0
  mov R0, -10
  mov [148], R0
  mov R0, -40
  mov [149], R0
  mov R0, 10
  mov [150], R0
  mov R0, -1
  mov [151], R0
  mov R0, 1
  mov [152], R0
  mov R0, -1
  mov [153], R0
  mov R0, 4
  mov [154], R0
  mov R0, 1
  mov [155], R0
  mov R0, 4
  mov [156], R0
  mov R0, 1
  mov [157], R0
  mov R0, 1
  mov [158], R0
  mov R0, 4
  mov [159], R0
  mov R0, 1
  mov [160], R0
  mov R0, 4
  mov [161], R0
  mov R0, -1
  mov [162], R0
  mov R0, 1
  mov [163], R0
  mov R0, -1
  mov [164], R0
  mov R0, 1
  mov [165], R0
  mov R0, -4
  mov [166], R0
  mov R0, -1
  mov [167], R0
  mov R0, -4
  mov [168], R0
  mov R0, -1
  mov [169], R0
  mov R0, -1
  mov [170], R0
  mov R0, -4
  mov [171], R0
  mov R0, -1
  mov [172], R0
  mov R0, -4
  mov [173], R0
  mov R0, 1
  mov [174], R0
  mov R0, -1
  mov [175], R0
  mov R0, 1
  mov [176], R0
  mov R0, -1
  mov [177], R0
  mov R0, 4
  mov [178], R0
  mov R0, 1
  mov [179], R0
  mov R0, 4
  mov [180], R0
  mov R0, 1
  mov [181], R0
  mov R0, 1
  mov [182], R0
  mov R0, 4
  mov [183], R0
  mov R0, 1
  mov [184], R0
  mov R0, 4
  mov [185], R0
  mov R0, -1
  mov [186], R0
  mov R0, 1
  mov [187], R0
  mov R0, -1
  mov [188], R0
  mov R0, 1
  mov [189], R0
  mov R0, -4
  mov [190], R0
  mov R0, -1
  mov [191], R0
  mov R0, -4
  mov [192], R0
  mov R0, -1
  mov [193], R0
  mov R0, -1
  mov [194], R0
  mov R0, -4
  mov [195], R0
  mov R0, -1
  mov [196], R0
  mov R0, -4
  mov [197], R0
  mov R0, 1
  mov [198], R0
  mov R0, -1
  mov [199], R0
  mov R0, 1
  mov [200], R0
  mov R0, -1
  mov [201], R0
  mov R0, 4
  mov [202], R0
  mov R0, 1
  mov [203], R0
  mov R0, 4
  mov [204], R0
  mov R0, 1
  mov [205], R0
  mov R0, 1
  mov [206], R0
  mov R0, 4
  mov [207], R0
  mov R0, 1
  mov [208], R0
  mov R0, 4
  mov [209], R0
  mov R0, -1
  mov [210], R0
  mov R0, 1
  mov [211], R0
  mov R0, -1
  mov [212], R0
  mov R0, 1
  mov [213], R0
  mov R0, -4
  mov [214], R0
  mov R0, -1
  mov [215], R0
  mov R0, -4
  mov [216], R0
  mov R0, -1
  mov [217], R0
  mov R0, -1
  mov [218], R0
  mov R0, -4
  mov [219], R0
  mov R0, -1
  mov [220], R0
  mov R0, -4
  mov [221], R0
  mov R0, 1
  mov [222], R0
  mov R0, 20.000000
  mov [global_projectileOffset], R0
  mov SP, BP
  pop BP
  ret

__function_make_gray:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  shl R0, 16
  or R0, -16777216
  mov R1, [BP+2]
  shl R1, 8
  or R0, R1
  mov R1, [BP+2]
  or R0, R1
__function_make_gray_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_make_color_rgb:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+4]
  shl R0, 16
  or R0, -16777216
  mov R1, [BP+3]
  shl R1, 8
  or R0, R1
  mov R1, [BP+2]
  or R0, R1
__function_make_color_rgb_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_make_color_rgba:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+5]
  shl R0, 24
  mov R1, [BP+4]
  shl R1, 16
  or R0, R1
  mov R1, [BP+3]
  shl R1, 8
  or R0, R1
  mov R1, [BP+2]
  or R0, R1
__function_make_color_rgba_return:
  pop R1
  mov SP, BP
  pop BP
  ret

__function_get_color_red:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  and R0, 255
__function_get_color_red_return:
  mov SP, BP
  pop BP
  ret

__function_get_color_green:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  shl R0, -8
  and R0, 255
__function_get_color_green_return:
  mov SP, BP
  pop BP
  ret

__function_get_color_blue:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  shl R0, -16
  and R0, 255
__function_get_color_blue_return:
  mov SP, BP
  pop BP
  ret

__function_get_color_alpha:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  shl R0, -24
  and R0, 255
__function_get_color_alpha_return:
  mov SP, BP
  pop BP
  ret

__function_select_texture:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_SelectedTexture, R0
__function_select_texture_return:
  mov SP, BP
  pop BP
  ret

__function_get_selected_texture:
  push BP
  mov BP, SP
  in R0, GPU_SelectedTexture
__function_get_selected_texture_return:
  mov SP, BP
  pop BP
  ret

__function_select_region:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_SelectedRegion, R0
__function_select_region_return:
  mov SP, BP
  pop BP
  ret

__function_get_selected_region:
  push BP
  mov BP, SP
  in R0, GPU_SelectedRegion
__function_get_selected_region_return:
  mov SP, BP
  pop BP
  ret

__function_define_region:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_RegionMinX, R0
  mov R0, [BP+3]
  out GPU_RegionMinY, R0
  mov R0, [BP+4]
  out GPU_RegionMaxX, R0
  mov R0, [BP+5]
  out GPU_RegionMaxY, R0
  mov R0, [BP+6]
  out GPU_RegionHotSpotX, R0
  mov R0, [BP+7]
  out GPU_RegionHotSpotY, R0
__function_define_region_return:
  mov SP, BP
  pop BP
  ret

__function_define_region_topleft:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_RegionMinX, R0
  out GPU_RegionHotSpotX, R0
  mov R0, [BP+3]
  out GPU_RegionMinY, R0
  out GPU_RegionHotSpotY, R0
  mov R0, [BP+4]
  out GPU_RegionMaxX, R0
  mov R0, [BP+5]
  out GPU_RegionMaxY, R0
__function_define_region_topleft_return:
  mov SP, BP
  pop BP
  ret

__function_define_region_center:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, [BP+2]
  mov R1, [BP+4]
  iadd R0, R1
  idiv R0, 2
  mov [BP-1], R0
  mov R0, [BP+3]
  mov R1, [BP+5]
  iadd R0, R1
  idiv R0, 2
  mov [BP-2], R0
  mov R0, [BP+2]
  out GPU_RegionMinX, R0
  mov R0, [BP+3]
  out GPU_RegionMinY, R0
  mov R0, [BP+4]
  out GPU_RegionMaxX, R0
  mov R0, [BP+5]
  out GPU_RegionMaxY, R0
  mov R0, [BP-1]
  out GPU_RegionHotSpotX, R0
  mov R0, [BP-2]
  out GPU_RegionHotSpotY, R0
__function_define_region_center_return:
  mov SP, BP
  pop BP
  ret

__function_define_region_matrix:
  push BP
  mov BP, SP
  isub SP, 17
  mov R0, [BP+2]
  mov [BP-1], R0
  mov R0, [BP+3]
  mov [BP-2], R0
  mov R0, [BP+4]
  mov [BP-3], R0
  mov R0, [BP+5]
  mov [BP-4], R0
  mov R0, [BP+6]
  mov [BP-5], R0
  mov R0, [BP+7]
  mov [BP-6], R0
  mov R0, [BP+8]
  mov [BP-7], R0
  mov R0, [BP-4]
  mov R1, [BP-2]
  isub R0, R1
  iadd R0, 1
  mov R1, [BP+11]
  iadd R0, R1
  mov [BP-8], R0
  mov R0, [BP-5]
  mov R1, [BP-3]
  isub R0, R1
  iadd R0, 1
  mov R1, [BP+11]
  iadd R0, R1
  mov [BP-9], R0
  mov R0, 0
  mov [BP-10], R0
__for_206_start:
  mov R0, [BP-10]
  mov R1, [BP+10]
  ilt R0, R1
  jf R0, __for_206_end
  mov R0, 0
  mov [BP-11], R0
__for_216_start:
  mov R0, [BP-11]
  mov R1, [BP+9]
  ilt R0, R1
  jf R0, __for_216_end
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_region
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, [BP-3]
  mov [SP+1], R1
  mov R1, [BP-4]
  mov [SP+2], R1
  mov R1, [BP-5]
  mov [SP+3], R1
  mov R1, [BP-6]
  mov [SP+4], R1
  mov R1, [BP-7]
  mov [SP+5], R1
  call __function_define_region
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  mov R0, [BP-2]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-2], R0
  mov R0, [BP-4]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-4], R0
  mov R0, [BP-6]
  mov R1, [BP-8]
  iadd R0, R1
  mov [BP-6], R0
__for_216_continue:
  mov R0, [BP-11]
  iadd R0, 1
  mov [BP-11], R0
  jmp __for_216_start
__for_216_end:
  mov R0, [BP-3]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-3], R0
  mov R0, [BP-5]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-5], R0
  mov R0, [BP-7]
  mov R1, [BP-9]
  iadd R0, R1
  mov [BP-7], R0
  mov R0, [BP+3]
  mov [BP-2], R0
  mov R0, [BP+5]
  mov [BP-4], R0
  mov R0, [BP+7]
  mov [BP-6], R0
__for_206_continue:
  mov R0, [BP-10]
  iadd R0, 1
  mov [BP-10], R0
  jmp __for_206_start
__for_206_end:
__function_define_region_matrix_return:
  mov SP, BP
  pop BP
  ret

__function_set_region_hotspot:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_RegionHotSpotX, R0
  mov R0, [BP+3]
  out GPU_RegionHotSpotY, R0
__function_set_region_hotspot_return:
  mov SP, BP
  pop BP
  ret

__function_set_multiply_color:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_MultiplyColor, R0
__function_set_multiply_color_return:
  mov SP, BP
  pop BP
  ret

__function_set_drawing_point:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
__function_set_drawing_point_return:
  mov SP, BP
  pop BP
  ret

__function_set_drawing_scale:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingScaleX, R0
  mov R0, [BP+3]
  out GPU_DrawingScaleY, R0
__function_set_drawing_scale_return:
  mov SP, BP
  pop BP
  ret

__function_set_drawing_angle:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingAngle, R0
__function_set_drawing_angle_return:
  mov SP, BP
  pop BP
  ret

__function_set_blending_mode:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_ActiveBlending, R0
__function_set_blending_mode_return:
  mov SP, BP
  pop BP
  ret

__function_get_multiply_color:
  push BP
  mov BP, SP
  in R0, GPU_MultiplyColor
__function_get_multiply_color_return:
  mov SP, BP
  pop BP
  ret

__function_get_drawing_point:
  push BP
  mov BP, SP
  push R1
  in R0, GPU_DrawingPointX
  mov R1, [BP+2]
  mov [R1], R0
  in R0, GPU_DrawingPointY
  mov R1, [BP+3]
  mov [R1], R0
__function_get_drawing_point_return:
  mov SP, BP
  pop BP
  ret

__function_get_drawing_scale:
  push BP
  mov BP, SP
  push R1
  in R0, GPU_DrawingScaleX
  mov R1, [BP+2]
  mov [R1], R0
  in R0, GPU_DrawingScaleY
  mov R1, [BP+3]
  mov [R1], R0
__function_get_drawing_scale_return:
  mov SP, BP
  pop BP
  ret

__function_get_drawing_angle:
  push BP
  mov BP, SP
  in R0, GPU_DrawingAngle
__function_get_drawing_angle_return:
  mov SP, BP
  pop BP
  ret

__function_get_blending_mode:
  push BP
  mov BP, SP
  in R0, GPU_ActiveBlending
__function_get_blending_mode_return:
  mov SP, BP
  pop BP
  ret

__function_clear_screen:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_ClearColor, R0
  out GPU_Command, GPUCommand_ClearScreen
__function_clear_screen_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region:
  push BP
  mov BP, SP
  out GPU_Command, GPUCommand_DrawRegion
__function_draw_region_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegion
__function_draw_region_at_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_zoomed:
  push BP
  mov BP, SP
  out GPU_Command, GPUCommand_DrawRegionZoomed
__function_draw_region_zoomed_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_zoomed_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegionZoomed
__function_draw_region_zoomed_at_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_rotated:
  push BP
  mov BP, SP
  out GPU_Command, GPUCommand_DrawRegionRotated
__function_draw_region_rotated_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_rotated_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegionRotated
__function_draw_region_rotated_at_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_rotozoomed:
  push BP
  mov BP, SP
  out GPU_Command, GPUCommand_DrawRegionRotozoomed
__function_draw_region_rotozoomed_return:
  mov SP, BP
  pop BP
  ret

__function_draw_region_rotozoomed_at:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegionRotozoomed
__function_draw_region_rotozoomed_at_return:
  mov SP, BP
  pop BP
  ret

__function_print_at:
  push BP
  mov BP, SP
  isub SP, 4
  call __function_get_selected_texture
  mov [BP-1], R0
  mov R1, -1
  mov [SP], R1
  call __function_select_texture
  mov R0, [BP+2]
  mov [BP-2], R0
__while_361_start:
__while_361_continue:
  mov R0, [BP+4]
  mov R0, [R0]
  cib R0
  jf R0, __while_361_end
  mov R1, [BP+4]
  mov R1, [R1]
  mov [SP], R1
  call __function_select_region
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_at
  mov R0, [BP+2]
  iadd R0, 10
  mov [BP+2], R0
__if_374_start:
  mov R0, [BP+4]
  mov R0, [R0]
  ieq R0, 10
  jf R0, __if_374_end
  mov R0, [BP-2]
  mov [BP+2], R0
  mov R0, [BP+3]
  iadd R0, 20
  mov [BP+3], R0
__if_374_end:
  mov R0, [BP+4]
  iadd R0, 1
  mov [BP+4], R0
  jmp __while_361_start
__while_361_end:
  mov R1, [BP-1]
  mov [SP], R1
  call __function_select_texture
__function_print_at_return:
  mov SP, BP
  pop BP
  ret

__function_print:
  push BP
  mov BP, SP
  isub SP, 5
  lea R1, [BP-1]
  mov [SP], R1
  lea R1, [BP-2]
  mov [SP+1], R1
  call __function_get_drawing_point
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP-2]
  mov [SP+1], R1
  mov R1, [BP+2]
  mov [SP+2], R1
  call __function_print_at
__function_print_return:
  mov SP, BP
  pop BP
  ret

__function_fmod:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  fmod R0, R1
  pop R1
__function_fmod_return:
  mov SP, BP
  pop BP
  ret

__function_min:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  imin R0, R1
  pop R1
__function_min_return:
  mov SP, BP
  pop BP
  ret

__function_max:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  imax R0, R1
  pop R1
__function_max_return:
  mov SP, BP
  pop BP
  ret

__function_abs:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  iabs R0
__function_abs_return:
  mov SP, BP
  pop BP
  ret

__function_fmin:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  fmin R0, R1
  pop R1
__function_fmin_return:
  mov SP, BP
  pop BP
  ret

__function_fmax:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  fmax R0, R1
  pop R1
__function_fmax_return:
  mov SP, BP
  pop BP
  ret

__function_fabs:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  fabs R0
__function_fabs_return:
  mov SP, BP
  pop BP
  ret

__function_floor:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  flr R0
__function_floor_return:
  mov SP, BP
  pop BP
  ret

__function_ceil:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  ceil R0
__function_ceil_return:
  mov SP, BP
  pop BP
  ret

__function_round:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  round R0
__function_round_return:
  mov SP, BP
  pop BP
  ret

__function_sin:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  sin R0
__function_sin_return:
  mov SP, BP
  pop BP
  ret

__function_cos:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  fadd R0, 1.570796
  sin R0
__function_cos_return:
  mov SP, BP
  pop BP
  ret

__function_tan:
  push BP
  mov BP, SP
  push R1
  mov R1, [BP+2]
  mov R0, R1
  sin R0
  fadd R1, 1.570796
  sin R1
  fdiv R0, R1
  pop R1
__function_tan_return:
  mov SP, BP
  pop BP
  ret

__function_asin:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  acos R0
  fsgn R0
  fadd R0, 1.570796
__function_asin_return:
  mov SP, BP
  pop BP
  ret

__function_acos:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  acos R0
__function_acos_return:
  mov SP, BP
  pop BP
  ret

__function_atan2:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  atan2 R0, R1
  pop R1
__function_atan2_return:
  mov SP, BP
  pop BP
  ret

__function_sqrt:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, 0.5
  pow R0, R1
  pop R1
__function_sqrt_return:
  mov SP, BP
  pop BP
  ret

__function_pow:
  push BP
  mov BP, SP
  push R1
  mov R0, [BP+2]
  mov R1, [BP+3]
  pow R0, R1
  pop R1
__function_pow_return:
  mov SP, BP
  pop BP
  ret

__function_exp:
  push BP
  mov BP, SP
  push R1
  mov R0, 2.718282
  mov R1, [BP+2]
  pow R0, R1
  pop R1
__function_exp_return:
  mov SP, BP
  pop BP
  ret

__function_log:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  log R0
__function_log_return:
  mov SP, BP
  pop BP
  ret

__function_get_cycle_counter:
  push BP
  mov BP, SP
  in R0, TIM_CycleCounter
__function_get_cycle_counter_return:
  mov SP, BP
  pop BP
  ret

__function_get_frame_counter:
  push BP
  mov BP, SP
  in R0, TIM_FrameCounter
__function_get_frame_counter_return:
  mov SP, BP
  pop BP
  ret

__function_get_date:
  push BP
  mov BP, SP
  in R0, TIM_CurrentDate
__function_get_date_return:
  mov SP, BP
  pop BP
  ret

__function_get_time:
  push BP
  mov BP, SP
  in R0, TIM_CurrentTime
__function_get_time_return:
  mov SP, BP
  pop BP
  ret

__function_translate_date:
  push BP
  mov BP, SP
  isub SP, 15
  mov R0, [BP+2]
  shl R0, -16
  mov R1, [BP+3]
  mov [R1], R0
  mov R0, [BP+2]
  and R0, 65535
  mov [BP-1], R0
  mov R0, 31
  mov [BP-13], R0
  mov R0, 28
  mov [BP-12], R0
  mov R0, 31
  mov [BP-11], R0
  mov R0, 30
  mov [BP-10], R0
  mov R0, 31
  mov [BP-9], R0
  mov R0, 30
  mov [BP-8], R0
  mov R0, 31
  mov [BP-7], R0
  mov R0, 31
  mov [BP-6], R0
  mov R0, 30
  mov [BP-5], R0
  mov R0, 31
  mov [BP-4], R0
  mov R0, 30
  mov [BP-3], R0
  mov R0, 31
  mov [BP-2], R0
  mov R1, [BP+3]
  mov R0, [R1]
  imod R0, 4
  ieq R0, 0
  jf R0, __LogicalAnd_ShortCircuit_553
  mov R2, [BP+3]
  mov R1, [R2]
  imod R1, 100
  ine R1, 0
  and R0, R1
__LogicalAnd_ShortCircuit_553:
  mov [BP-14], R0
__if_562_start:
  mov R0, [BP-14]
  jf R0, __if_562_end
  mov R0, 29
  mov [BP-12], R0
__if_562_end:
  mov R0, 1
  mov R1, [BP+3]
  iadd R1, 1
  mov [R1], R0
  mov R0, 0
  mov [BP-15], R0
__for_573_start:
  mov R0, [BP-15]
  ilt R0, 11
  jf R0, __for_573_end
__if_583_start:
  mov R0, [BP-1]
  lea R1, [BP-13]
  mov R2, [BP-15]
  iadd R1, R2
  mov R1, [R1]
  ilt R0, R1
  jf R0, __if_583_end
  mov R0, [BP-1]
  iadd R0, 1
  mov R1, [BP+3]
  iadd R1, 2
  mov [R1], R0
  jmp __function_translate_date_return
__if_583_end:
  mov R0, [BP-1]
  lea R1, [BP-13]
  mov R2, [BP-15]
  iadd R1, R2
  mov R1, [R1]
  isub R0, R1
  mov [BP-1], R0
  mov R2, [BP+3]
  iadd R2, 1
  mov R0, [R2]
  mov R1, R0
  iadd R1, 1
  mov [R2], R1
__for_573_continue:
  mov R0, [BP-15]
  iadd R0, 1
  mov [BP-15], R0
  jmp __for_573_start
__for_573_end:
  mov R0, 12
  mov R1, [BP+3]
  iadd R1, 1
  mov [R1], R0
  mov R0, [BP-1]
  iadd R0, 1
  mov R1, [BP+3]
  iadd R1, 2
  mov [R1], R0
__function_translate_date_return:
  mov SP, BP
  pop BP
  ret

__function_translate_time:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  idiv R0, 3600
  mov R1, [BP+3]
  mov [R1], R0
  mov R0, [BP+2]
  imod R0, 3600
  idiv R0, 60
  mov R1, [BP+3]
  iadd R1, 1
  mov [R1], R0
  mov R0, [BP+2]
  imod R0, 60
  mov R1, [BP+3]
  iadd R1, 2
  mov [R1], R0
__function_translate_time_return:
  mov SP, BP
  pop BP
  ret

__function_end_frame:
  push BP
  mov BP, SP
  wait
__function_end_frame_return:
  mov SP, BP
  pop BP
  ret

__function_sleep:
  push BP
  mov BP, SP
  isub SP, 2
  call __function_get_frame_counter
  mov [BP-1], R0
  mov R0, [BP-1]
  mov R1, [BP+2]
  iadd R0, R1
  mov [BP-2], R0
__while_658_start:
__while_658_continue:
  call __function_get_frame_counter
  mov R1, R0
  mov R2, [BP-2]
  ilt R1, R2
  mov R0, R1
  jf R0, __while_658_end
  call __function_end_frame
  jmp __while_658_start
__while_658_end:
__function_sleep_return:
  mov SP, BP
  pop BP
  ret

__function_select_gamepad:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out INP_SelectedGamepad, R0
__function_select_gamepad_return:
  mov SP, BP
  pop BP
  ret

__function_get_selected_gamepad:
  push BP
  mov BP, SP
  in R0, INP_SelectedGamepad
__function_get_selected_gamepad_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_is_connected:
  push BP
  mov BP, SP
  in R0, INP_GamepadConnected
__function_gamepad_is_connected_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_left:
  push BP
  mov BP, SP
  in R0, INP_GamepadLeft
__function_gamepad_left_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_right:
  push BP
  mov BP, SP
  in R0, INP_GamepadRight
__function_gamepad_right_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_up:
  push BP
  mov BP, SP
  in R0, INP_GamepadUp
__function_gamepad_up_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_down:
  push BP
  mov BP, SP
  in R0, INP_GamepadDown
__function_gamepad_down_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_direction:
  push BP
  mov BP, SP
__if_682_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_682_else
  mov R0, -1
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_682_end
__if_682_else:
__if_691_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_691_else
  mov R0, 1
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_691_end
__if_691_else:
  mov R0, 0
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
__if_691_end:
__if_682_end:
__if_703_start:
  call __function_gamepad_up
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_703_else
  mov R0, -1
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_703_end
__if_703_else:
__if_712_start:
  call __function_gamepad_down
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_712_else
  mov R0, 1
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_712_end
__if_712_else:
  mov R0, 0
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
__if_712_end:
__if_703_end:
__function_gamepad_direction_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_direction_normalized:
  push BP
  mov BP, SP
__if_727_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_727_else
  mov R0, -1.000000
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_727_end
__if_727_else:
__if_736_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_736_else
  mov R0, 1.000000
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_736_end
__if_736_else:
  mov R0, 0.000000
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
__if_736_end:
__if_727_end:
__if_748_start:
  call __function_gamepad_up
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_748_else
  mov R0, -1.000000
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_748_end
__if_748_else:
__if_757_start:
  call __function_gamepad_down
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_757_else
  mov R0, 1.000000
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
  jmp __if_757_end
__if_757_else:
  mov R0, 0.000000
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
__if_757_end:
__if_748_end:
__if_769_start:
  mov R0, [BP+2]
  mov R0, [R0]
  cfb R0
  jf R0, __LogicalAnd_ShortCircuit_772
  mov R1, [BP+3]
  mov R1, [R1]
  cfb R1
  and R0, R1
__LogicalAnd_ShortCircuit_772:
  jf R0, __if_769_end
  mov R0, [BP+2]
  mov R0, [R0]
  fmul R0, 0.707107
  lea R1, [BP+2]
  mov R1, [R1]
  mov [R1], R0
  mov R0, [BP+3]
  mov R0, [R0]
  fmul R0, 0.707107
  lea R1, [BP+3]
  mov R1, [R1]
  mov [R1], R0
__if_769_end:
__function_gamepad_direction_normalized_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_a:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonA
__function_gamepad_button_a_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_b:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonB
__function_gamepad_button_b_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_x:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonX
__function_gamepad_button_x_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_y:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonY
__function_gamepad_button_y_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_l:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonL
__function_gamepad_button_l_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_r:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonR
__function_gamepad_button_r_return:
  mov SP, BP
  pop BP
  ret

__function_gamepad_button_start:
  push BP
  mov BP, SP
  in R0, INP_GamepadButtonStart
__function_gamepad_button_start_return:
  mov SP, BP
  pop BP
  ret

__function_memset:
  push BP
  mov BP, SP
  mov CR, [BP+4]
  mov DR, [BP+2]
  mov SR, [BP+3]
  sets
__function_memset_return:
  mov SP, BP
  pop BP
  ret

__function_memcpy:
  push BP
  mov BP, SP
  mov CR, [BP+4]
  mov DR, [BP+2]
  mov SR, [BP+3]
  movs
__function_memcpy_return:
  mov SP, BP
  pop BP
  ret

__function_memcmp:
  push BP
  mov BP, SP
  mov CR, [BP+4]
  mov DR, [BP+2]
  mov SR, [BP+3]
  cmps R0
__function_memcmp_return:
  mov SP, BP
  pop BP
  ret

__function_merge_free_malloc_blocks:
  push BP
  mov BP, SP
  isub SP, 2
  mov R1, [BP+2]
  mov R0, [R1]
  mov [BP-1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-2], R0
__if_864_start:
  mov R0, [BP-2]
  ine R0, -1
  jf R0, __LogicalAnd_ShortCircuit_866
  mov R2, [BP-2]
  iadd R2, 3
  mov R1, [R2]
  and R0, R1
__LogicalAnd_ShortCircuit_866:
  jf R0, __if_864_end
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_875_start:
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_875_end
  mov R0, [BP+2]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_875_end:
  mov R1, [BP+2]
  iadd R1, 2
  mov R0, [R1]
  mov R2, [BP-2]
  iadd R2, 2
  mov R1, [R2]
  iadd R1, 4
  iadd R0, R1
  mov R1, [BP+2]
  iadd R1, 2
  mov [R1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-2], R0
__if_864_end:
__if_894_start:
  mov R0, [BP-1]
  ine R0, -1
  jf R0, __LogicalAnd_ShortCircuit_896
  mov R2, [BP-1]
  iadd R2, 3
  mov R1, [R2]
  and R0, R1
__LogicalAnd_ShortCircuit_896:
  jf R0, __if_894_end
  mov R0, [BP-2]
  mov R1, [BP-1]
  iadd R1, 1
  mov [R1], R0
__if_904_start:
  mov R0, [BP-2]
  ine R0, -1
  jf R0, __if_904_end
  mov R0, [BP-1]
  mov R1, [BP-2]
  mov [R1], R0
__if_904_end:
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov R2, [BP+2]
  iadd R2, 2
  mov R1, [R2]
  iadd R1, 4
  iadd R0, R1
  mov R1, [BP-1]
  iadd R1, 2
  mov [R1], R0
__if_894_end:
__function_merge_free_malloc_blocks_return:
  mov SP, BP
  pop BP
  ret

__function_reduce_malloc_block:
  push BP
  mov BP, SP
  isub SP, 3
  mov R1, [BP+2]
  iadd R1, 2
  mov R0, [R1]
  mov R1, [BP+3]
  isub R0, R1
  mov [BP-1], R0
__if_926_start:
  mov R0, [BP-1]
  ile R0, 4
  jf R0, __if_926_end
  jmp __function_reduce_malloc_block_return
__if_926_end:
  mov R0, [BP+2]
  iadd R0, 4
  mov R1, [BP+3]
  iadd R0, R1
  mov [BP-2], R0
  mov R0, [BP+2]
  mov R1, [BP-2]
  mov [R1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP-2]
  iadd R1, 1
  mov [R1], R0
  mov R0, 1
  mov R1, [BP-2]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP-1]
  isub R0, 4
  mov R1, [BP-2]
  iadd R1, 2
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 2
  mov [R1], R0
  mov R0, [BP-2]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_969_start:
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_969_end
  mov R0, [BP-2]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_969_end:
  mov R1, [BP-2]
  mov [SP], R1
  call __function_merge_free_malloc_blocks
__function_reduce_malloc_block_return:
  mov SP, BP
  pop BP
  ret

__function_expand_malloc_block:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
  isub SP, 2
  mov R0, [BP+3]
  mov R2, [BP+2]
  iadd R2, 2
  mov R1, [R2]
  isub R0, R1
  mov [BP-1], R0
__if_988_start:
  mov R0, [BP-1]
  ile R0, 0
  jf R0, __if_988_end
  mov R0, 1
  jmp __function_expand_malloc_block_return
__if_988_end:
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-2], R0
__if_998_start:
  mov R0, [BP-2]
  ine R0, -1
  bnot R0
  jt R0, __LogicalOr_ShortCircuit_1001
  mov R2, [BP-2]
  iadd R2, 3
  mov R1, [R2]
  bnot R1
  or R0, R1
__LogicalOr_ShortCircuit_1001:
  jf R0, __if_998_end
  mov R0, 0
  jmp __function_expand_malloc_block_return
__if_998_end:
  mov R1, [BP-2]
  iadd R1, 2
  mov R0, [R1]
  iadd R0, 4
  mov [BP-3], R0
__if_1013_start:
  mov R0, [BP-3]
  mov R1, [BP-1]
  ilt R0, R1
  jf R0, __if_1013_end
  mov R0, 0
  jmp __function_expand_malloc_block_return
__if_1013_end:
  mov R1, [BP+2]
  iadd R1, 2
  mov R0, [R1]
  mov R1, [BP-3]
  iadd R0, R1
  mov R1, [BP+2]
  iadd R1, 2
  mov [R1], R0
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_1028_start:
  mov R1, [BP-2]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_1028_end
  mov R0, [BP+2]
  mov R2, [BP-2]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_1028_end:
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_reduce_malloc_block
  mov R0, 1
__function_expand_malloc_block_return:
  iadd SP, 2
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_malloc:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  push R2
__if_1043_start:
  mov R0, [global_malloc_first_block]
  ine R0, -1
  bnot R0
  jf R0, __if_1043_end
  mov R0, [global_malloc_start_address]
  mov [global_malloc_first_block], R0
  mov R0, [global_malloc_end_address]
  mov R1, [global_malloc_start_address]
  isub R0, R1
  iadd R0, 1
  mov R1, [global_malloc_first_block]
  iadd R1, 2
  mov [R1], R0
  mov R1, [global_malloc_first_block]
  iadd R1, 2
  mov R0, [R1]
  isub R0, 4
  mov R1, [global_malloc_first_block]
  iadd R1, 2
  mov [R1], R0
  mov R0, -1
  mov R1, [global_malloc_first_block]
  mov [R1], R0
  mov R0, -1
  mov R1, [global_malloc_first_block]
  iadd R1, 1
  mov [R1], R0
  mov R0, 1
  mov R1, [global_malloc_first_block]
  iadd R1, 3
  mov [R1], R0
__if_1043_end:
__if_1078_start:
  mov R0, [BP+2]
  ile R0, 0
  jf R0, __if_1078_end
  mov R0, -1
  jmp __function_malloc_return
__if_1078_end:
  mov R0, [global_malloc_first_block]
  mov [BP-1], R0
__while_1087_start:
__while_1087_continue:
  mov R0, [BP-1]
  ine R0, -1
  jf R0, __while_1087_end
__if_1090_start:
  mov R1, [BP-1]
  iadd R1, 3
  mov R0, [R1]
  jf R0, __LogicalAnd_ShortCircuit_1093
  mov R2, [BP-1]
  iadd R2, 2
  mov R1, [R2]
  mov R2, [BP+2]
  ige R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_1093:
  jf R0, __if_1090_end
  jmp __while_1087_end
__if_1090_end:
  mov R1, [BP-1]
  iadd R1, 1
  mov R0, [R1]
  mov [BP-1], R0
  jmp __while_1087_start
__while_1087_end:
__if_1103_start:
  mov R0, [BP-1]
  ine R0, -1
  bnot R0
  jf R0, __if_1103_end
  mov R0, -1
  jmp __function_malloc_return
__if_1103_end:
  mov R0, [BP+2]
  iadd R0, 4
  mov [BP-2], R0
__if_1113_start:
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov R1, [BP-2]
  igt R0, R1
  jf R0, __if_1113_else
  mov R0, [BP-1]
  iadd R0, 4
  mov R2, [BP-1]
  iadd R2, 2
  mov R1, [R2]
  iadd R0, R1
  mov R1, [BP-2]
  isub R0, R1
  mov [BP-3], R0
  mov R0, [BP+2]
  mov R1, [BP-3]
  iadd R1, 2
  mov [R1], R0
  mov R0, 0
  mov R1, [BP-3]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP-1]
  mov R1, [BP-3]
  mov [R1], R0
  mov R1, [BP-1]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP-3]
  iadd R1, 1
  mov [R1], R0
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov R1, [BP-2]
  isub R0, R1
  mov R1, [BP-1]
  iadd R1, 2
  mov [R1], R0
  mov R0, [BP-3]
  mov R1, [BP-1]
  iadd R1, 1
  mov [R1], R0
__if_1158_start:
  mov R1, [BP-3]
  iadd R1, 1
  mov R0, [R1]
  ine R0, -1
  jf R0, __if_1158_end
  mov R0, [BP-3]
  mov R2, [BP-3]
  iadd R2, 1
  mov R1, [R2]
  mov [R1], R0
__if_1158_end:
  mov R0, [BP-3]
  iadd R0, 4
  jmp __function_malloc_return
  jmp __if_1113_end
__if_1113_else:
  mov R0, 0
  mov R1, [BP-1]
  iadd R1, 3
  mov [R1], R0
  mov R0, [BP-1]
  iadd R0, 4
  jmp __function_malloc_return
__if_1113_end:
__function_malloc_return:
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_free:
  push BP
  mov BP, SP
  isub SP, 2
__if_1183_start:
  mov R0, [BP+2]
  ine R0, -1
  bnot R0
  jf R0, __if_1183_end
  jmp __function_free_return
__if_1183_end:
  mov R0, [BP+2]
  isub R0, 4
  mov [BP-1], R0
  mov R0, 1
  mov R1, [BP-1]
  iadd R1, 3
  mov [R1], R0
  mov R1, [BP-1]
  mov [SP], R1
  call __function_merge_free_malloc_blocks
__function_free_return:
  mov SP, BP
  pop BP
  ret

__function_calloc:
  push BP
  mov BP, SP
  isub SP, 2
  push R1
  isub SP, 3
  mov R0, [BP+2]
  mov R1, [BP+3]
  imul R0, R1
  mov [BP-1], R0
  mov R1, [BP-1]
  mov [SP], R1
  call __function_malloc
  mov [BP-2], R0
__if_1211_start:
  mov R0, [BP-2]
  ine R0, -1
  bnot R0
  jf R0, __if_1211_end
  mov R0, -1
  jmp __function_calloc_return
__if_1211_end:
  mov R1, [BP-2]
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  mov R1, [BP-1]
  mov [SP+2], R1
  call __function_memset
  mov R0, [BP-2]
__function_calloc_return:
  iadd SP, 3
  pop R1
  mov SP, BP
  pop BP
  ret

__function_realloc:
  push BP
  mov BP, SP
  isub SP, 3
  push R1
  isub SP, 3
__if_1225_start:
  mov R0, [BP+2]
  ine R0, -1
  bnot R0
  jf R0, __if_1225_end
  mov R1, [BP+3]
  mov [SP], R1
  call __function_malloc
  jmp __function_realloc_return
__if_1225_end:
__if_1231_start:
  mov R0, [BP+3]
  ile R0, 0
  jf R0, __if_1231_end
  mov R1, [BP+2]
  mov [SP], R1
  call __function_free
  mov R0, -1
  jmp __function_realloc_return
__if_1231_end:
  mov R0, [BP+2]
  isub R0, 4
  mov [BP-1], R0
  mov R1, [BP-1]
  iadd R1, 2
  mov R0, [R1]
  mov [BP-2], R0
__if_1250_start:
  mov R0, [BP+3]
  mov R1, [BP-2]
  ieq R0, R1
  jf R0, __if_1250_end
  mov R0, [BP+2]
  jmp __function_realloc_return
__if_1250_end:
__if_1256_start:
  mov R0, [BP+3]
  mov R1, [BP-2]
  ilt R0, R1
  jf R0, __if_1256_else
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_reduce_malloc_block
  mov R0, [BP+2]
  jmp __function_realloc_return
  jmp __if_1256_end
__if_1256_else:
__if_1267_start:
  mov R1, [BP-1]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_expand_malloc_block
  jf R0, __if_1267_else
  mov R0, [BP+2]
  jmp __function_realloc_return
  jmp __if_1267_end
__if_1267_else:
  mov R1, [BP+3]
  mov [SP], R1
  call __function_malloc
  mov [BP-3], R0
__if_1278_start:
  mov R0, [BP-3]
  ine R0, -1
  bnot R0
  jf R0, __if_1278_end
  mov R0, -1
  jmp __function_realloc_return
__if_1278_end:
  mov R1, [BP-3]
  mov [SP], R1
  mov R1, [BP+2]
  mov [SP+1], R1
  mov R1, [BP-2]
  mov [SP+2], R1
  call __function_memcpy
  mov R1, [BP+2]
  mov [SP], R1
  call __function_free
  mov R0, [BP-3]
  jmp __function_realloc_return
__if_1267_end:
__if_1256_end:
__function_realloc_return:
  iadd SP, 3
  pop R1
  mov SP, BP
  pop BP
  ret

__function_rand:
  push BP
  mov BP, SP
  in R0, RNG_CurrentValue
__function_rand_return:
  mov SP, BP
  pop BP
  ret

__function_srand:
  push BP
  mov BP, SP
  mov R0, [BP+2]
  out RNG_CurrentValue, R0
__function_srand_return:
  mov SP, BP
  pop BP
  ret

__function_exit:
  push BP
  mov BP, SP
  hlt
__function_exit_return:
  mov SP, BP
  pop BP
  ret

__function_draw_pixel:
  push BP
  mov BP, SP
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R0, [BP+2]
  out GPU_DrawingPointX, R0
  mov R0, [BP+3]
  out GPU_DrawingPointY, R0
  out GPU_Command, GPUCommand_DrawRegion
__function_draw_pixel_return:
  mov SP, BP
  pop BP
  ret

__function_draw_horizontal_line:
  push BP
  mov BP, SP
  isub SP, 2
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R1, [BP+4]
  mov R2, [BP+2]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_draw_horizontal_line_return:
  mov SP, BP
  pop BP
  ret

__function_draw_vertical_line:
  push BP
  mov BP, SP
  isub SP, 2
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R1, 1
  cif R1
  mov [SP], R1
  mov R1, [BP+4]
  mov R2, [BP+3]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_draw_vertical_line_return:
  mov SP, BP
  pop BP
  ret

__function_draw_line:
  push BP
  mov BP, SP
  isub SP, 6
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
__if_1341_start:
  mov R0, [BP+2]
  mov R1, [BP+4]
  ieq R0, R1
  jf R0, __LogicalAnd_ShortCircuit_1346
  mov R1, [BP+3]
  mov R2, [BP+5]
  ieq R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_1346:
  jf R0, __if_1341_end
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_at
  jmp __function_draw_line_return
__if_1341_end:
  mov R0, [BP+4]
  mov R1, [BP+2]
  isub R0, R1
  mov [BP-1], R0
  mov R0, [BP+5]
  mov R1, [BP+3]
  isub R0, R1
  mov [BP-2], R0
  mov R2, [BP-1]
  mov R3, [BP-1]
  imul R2, R3
  mov R3, [BP-2]
  mov R4, [BP-2]
  imul R3, R4
  iadd R2, R3
  cif R2
  mov [SP], R2
  call __function_sqrt
  mov R1, R0
  fadd R1, 1.000000
  mov R0, R1
  mov [BP-3], R0
  mov R1, [BP-2]
  cif R1
  mov [SP], R1
  mov R1, [BP-1]
  cif R1
  mov [SP+1], R1
  call __function_atan2
  mov [BP-4], R0
  mov R1, [BP-4]
  mov [SP], R1
  call __function_set_drawing_angle
  mov R1, [BP-3]
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_rotozoomed_at
__function_draw_line_return:
  mov SP, BP
  pop BP
  ret

__function_draw_rectangle:
  push BP
  mov BP, SP
  isub SP, 2
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R1, [BP+4]
  mov R2, [BP+2]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+5]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
  mov R1, 1
  cif R1
  mov [SP], R1
  mov R1, [BP+5]
  mov R2, [BP+3]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
  mov R1, [BP+4]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_draw_rectangle_return:
  mov SP, BP
  pop BP
  ret

__function_draw_filled_rectangle:
  push BP
  mov BP, SP
  isub SP, 2
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R1, [BP+4]
  mov R2, [BP+2]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP], R1
  mov R1, [BP+5]
  mov R2, [BP+3]
  isub R1, R2
  iadd R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  mov [SP], R1
  mov R1, [BP+3]
  mov [SP+1], R1
  call __function_draw_region_zoomed_at
__function_draw_filled_rectangle_return:
  mov SP, BP
  pop BP
  ret

__function_draw_circle:
  push BP
  mov BP, SP
  isub SP, 15
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R2, [BP+4]
  cif R2
  mov [SP], R2
  call __function_sqrt
  mov R1, R0
  fmul R1, 4.000000
  mov R0, R1
  cfi R0
  mov [BP-1], R0
  mov R2, 2
  mov [SP], R2
  mov R2, [BP-1]
  mov [SP+1], R2
  call __function_max
  mov R1, R0
  mov [BP-1], R1
  mov R0, R1
  mov R0, 6.283185
  mov R1, [BP-1]
  cif R1
  fdiv R0, R1
  mov [BP-2], R0
  mov R0, [BP+4]
  cif R0
  mov R1, [BP-2]
  fmul R0, R1
  mov [BP-3], R0
  mov R2, [BP-3]
  mov [SP], R2
  call __function_ceil
  mov R1, R0
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R0, [BP+2]
  mov R1, [BP+4]
  iadd R0, R1
  mov [BP-4], R0
  mov R0, [BP+3]
  mov [BP-5], R0
  mov R0, 1
  mov [BP-6], R0
__for_1482_start:
  mov R0, [BP-6]
  mov R1, [BP-1]
  ile R0, R1
  jf R0, __for_1482_end
  mov R0, [BP-2]
  mov R1, [BP-6]
  cif R1
  fmul R0, R1
  mov [BP-7], R0
  mov R1, [BP+2]
  cif R1
  mov R2, [BP+4]
  cif R2
  mov R4, [BP-7]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-8], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP+4]
  cif R2
  mov R4, [BP-7]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-9], R0
__if_1515_start:
  mov R0, [BP-4]
  mov R1, [BP-8]
  ieq R0, R1
  jf R0, __LogicalAnd_ShortCircuit_1520
  mov R1, [BP-5]
  mov R2, [BP-9]
  ieq R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_1520:
  jf R0, __if_1515_else
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_draw_region_at
  jmp __if_1515_end
__if_1515_else:
  mov R0, [BP-8]
  mov R1, [BP-4]
  isub R0, R1
  mov [BP-10], R0
  mov R0, [BP-9]
  mov R1, [BP-5]
  isub R0, R1
  mov [BP-11], R0
  mov R1, [BP-11]
  cif R1
  mov [SP], R1
  mov R1, [BP-10]
  cif R1
  mov [SP+1], R1
  call __function_atan2
  mov [BP-12], R0
  mov R1, [BP-12]
  mov [SP], R1
  call __function_set_drawing_angle
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_draw_region_rotozoomed_at
__if_1515_end:
  mov R0, [BP-8]
  mov [BP-4], R0
  mov R0, [BP-9]
  mov [BP-5], R0
__for_1482_continue:
  mov R0, [BP-6]
  iadd R0, 1
  mov [BP-6], R0
  jmp __for_1482_start
__for_1482_end:
__function_draw_circle_return:
  mov SP, BP
  pop BP
  ret

__function_draw_filled_circle:
  push BP
  mov BP, SP
  isub SP, 10
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R0, [BP+3]
  mov R1, [BP+4]
  isub R0, R1
  mov [BP-1], R0
  mov R0, [BP+3]
  mov R1, [BP+4]
  iadd R0, R1
  mov [BP-2], R0
__if_1568_start:
  mov R0, [BP-2]
  ilt R0, 0
  jt R0, __LogicalOr_ShortCircuit_1573
  mov R1, [BP-1]
  ige R1, 360
  or R0, R1
__LogicalOr_ShortCircuit_1573:
  jf R0, __if_1568_end
  jmp __function_draw_filled_circle_return
__if_1568_end:
  mov R2, [BP-1]
  mov [SP], R2
  mov R2, 0
  mov [SP+1], R2
  call __function_max
  mov R1, R0
  mov [BP-1], R1
  mov R0, R1
  mov R2, [BP-2]
  mov [SP], R2
  mov R2, 359
  mov [SP+1], R2
  call __function_min
  mov R1, R0
  mov [BP-2], R1
  mov R0, R1
  mov R0, [BP+4]
  cif R0
  fadd R0, 0.300000
  mov R1, [BP+4]
  cif R1
  fadd R1, 0.300000
  fmul R0, R1
  mov [BP-3], R0
  mov R0, [BP-1]
  mov [BP-4], R0
__for_1600_start:
  mov R0, [BP-4]
  mov R1, [BP-2]
  ile R0, R1
  jf R0, __for_1600_end
  mov R0, [BP-4]
  mov R1, [BP+3]
  isub R0, R1
  mov [BP-5], R0
  mov R2, [BP-3]
  mov R3, [BP-5]
  mov R4, [BP-5]
  imul R3, R4
  cif R3
  fsub R2, R3
  mov [SP], R2
  call __function_sqrt
  mov R1, R0
  mov [BP-7], R1
  mov R1, [BP-7]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-6], R0
  mov R1, [BP+2]
  mov R2, [BP-6]
  isub R1, R2
  mov [SP], R1
  mov R1, [BP-4]
  mov [SP+1], R1
  mov R1, [BP+2]
  mov R2, [BP-6]
  iadd R1, R2
  mov [SP+2], R1
  call __function_draw_horizontal_line
__for_1600_continue:
  mov R0, [BP-4]
  mov R1, R0
  iadd R1, 1
  mov [BP-4], R1
  jmp __for_1600_start
__for_1600_end:
__function_draw_filled_circle_return:
  mov SP, BP
  pop BP
  ret

__function_draw_arc:
  push BP
  mov BP, SP
  isub SP, 15
  out GPU_SelectedTexture, -1
  out GPU_SelectedRegion, 256
  mov R2, [BP+4]
  cif R2
  mov [SP], R2
  call __function_sqrt
  mov R1, R0
  fmul R1, 4.000000
  mov R0, R1
  cfi R0
  mov [BP-1], R0
  mov R0, [BP-1]
  cif R0
  mov R1, [BP+6]
  mov R2, [BP+5]
  fsub R1, R2
  fdiv R1, 6.283185
  fmul R0, R1
  cfi R0
  mov [BP-1], R0
  mov R2, 2
  mov [SP], R2
  mov R2, [BP-1]
  mov [SP+1], R2
  call __function_max
  mov R1, R0
  mov [BP-1], R1
  mov R0, R1
  mov R0, [BP+6]
  mov R1, [BP+5]
  fsub R0, R1
  mov R1, [BP-1]
  cif R1
  fdiv R0, R1
  mov [BP-2], R0
  mov R0, [BP+4]
  cif R0
  mov R1, [BP-2]
  fmul R0, R1
  mov [BP-3], R0
  mov R2, [BP-3]
  mov [SP], R2
  call __function_ceil
  mov R1, R0
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  mov R1, 1
  cif R1
  mov [SP+1], R1
  call __function_set_drawing_scale
  mov R1, [BP+2]
  cif R1
  mov R2, [BP+4]
  cif R2
  mov R4, [BP+5]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-4], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP+4]
  cif R2
  mov R4, [BP+5]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-5], R0
  mov R0, 1
  mov [BP-6], R0
__for_1696_start:
  mov R0, [BP-6]
  mov R1, [BP-1]
  ile R0, R1
  jf R0, __for_1696_end
  mov R0, [BP+5]
  mov R1, [BP-2]
  mov R2, [BP-6]
  cif R2
  fmul R1, R2
  fadd R0, R1
  mov [BP-7], R0
  mov R1, [BP+2]
  cif R1
  mov R2, [BP+4]
  cif R2
  mov R4, [BP-7]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-8], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP+4]
  cif R2
  mov R4, [BP-7]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov [BP-13], R1
  mov R1, [BP-13]
  mov [SP], R1
  call __function_round
  cfi R0
  mov [BP-9], R0
__if_1731_start:
  mov R0, [BP-4]
  mov R1, [BP-8]
  ieq R0, R1
  jf R0, __LogicalAnd_ShortCircuit_1736
  mov R1, [BP-5]
  mov R2, [BP-9]
  ieq R1, R2
  and R0, R1
__LogicalAnd_ShortCircuit_1736:
  jf R0, __if_1731_else
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_draw_region_at
  jmp __if_1731_end
__if_1731_else:
  mov R0, [BP-8]
  mov R1, [BP-4]
  isub R0, R1
  mov [BP-10], R0
  mov R0, [BP-9]
  mov R1, [BP-5]
  isub R0, R1
  mov [BP-11], R0
  mov R1, [BP-11]
  cif R1
  mov [SP], R1
  mov R1, [BP-10]
  cif R1
  mov [SP+1], R1
  call __function_atan2
  mov [BP-12], R0
  mov R1, [BP-12]
  mov [SP], R1
  call __function_set_drawing_angle
  mov R1, [BP-4]
  mov [SP], R1
  mov R1, [BP-5]
  mov [SP+1], R1
  call __function_draw_region_rotozoomed_at
__if_1731_end:
  mov R0, [BP-8]
  mov [BP-4], R0
  mov R0, [BP-9]
  mov [BP-5], R0
__for_1696_continue:
  mov R0, [BP-6]
  iadd R0, 1
  mov [BP-6], R0
  jmp __for_1696_start
__for_1696_end:
__function_draw_arc_return:
  mov SP, BP
  pop BP
  ret

__function_init_asteroid:
  push BP
  mov BP, SP
  mov R0, 1
  mov R1, [BP+2]
  iadd R1, 5
  mov [R1], R0
  mov R0, [BP+3]
  mov R1, [BP+2]
  iadd R1, 6
  mov [R1], R0
__if_2058_start:
  call __function_rand
  mov R1, R0
  imod R1, 2
  ieq R1, 0
  mov R0, R1
  jf R0, __if_2058_else
  call __function_rand
  mov R1, R0
  imod R1, 3
  iadd R1, 1
  cif R1
  mov R2, [BP+2]
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  jmp __if_2058_end
__if_2058_else:
  call __function_rand
  mov R1, R0
  imod R1, 3
  iadd R1, 1
  isgn R1
  cif R1
  mov R2, [BP+2]
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
__if_2058_end:
__if_2083_start:
  call __function_rand
  mov R1, R0
  imod R1, 2
  ieq R1, 0
  mov R0, R1
  jf R0, __if_2083_else
  call __function_rand
  mov R1, R0
  imod R1, 3
  iadd R1, 1
  cif R1
  mov R2, [BP+2]
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  jmp __if_2083_end
__if_2083_else:
  call __function_rand
  mov R1, R0
  imod R1, 3
  iadd R1, 1
  isgn R1
  cif R1
  mov R2, [BP+2]
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
__if_2083_end:
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 2
  mov [R1], R0
  mov R0, 0.000000
  mov R1, [BP+2]
  iadd R1, 3
  mov [R1], R0
  mov R0, 320.000000
  mov R1, [BP+2]
  mov [R1], R0
  mov R0, 180.000000
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_2128_start:
  mov R0, [BP+3]
  ieq R0, 2
  jf R0, __if_2128_else
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 4
  mov [R1], R0
  jmp __if_2128_end
__if_2128_else:
__if_2136_start:
  mov R0, [BP+3]
  ieq R0, 1
  jf R0, __if_2136_else
  call __function_rand
  mov R1, R0
  imod R1, 2
  iadd R1, 2
  mov R2, [BP+2]
  iadd R2, 4
  mov [R2], R1
  mov R0, R1
  jmp __if_2136_end
__if_2136_else:
  mov R0, 4
  mov R1, [BP+2]
  iadd R1, 4
  mov [R1], R0
__if_2136_end:
__if_2128_end:
__function_init_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_spawn_big:
  push BP
  mov BP, SP
  isub SP, 3
  mov R0, 0
  mov [BP-1], R0
__for_2156_start:
  mov R0, [BP-1]
  ilt R0, 1
  jf R0, __for_2156_end
__if_2166_start:
  mov R1, global_bigAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  bnot R0
  jf R0, __if_2166_end
  mov R1, global_bigAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  call __function_init_asteroid
  mov R0, [BP+2]
  cif R0
  mov R1, global_bigAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  cif R0
  mov R1, global_bigAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, global_bigAsteroids
  mov R3, [BP-1]
  imul R3, 7
  iadd R2, R3
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, global_bigAsteroids
  mov R3, [BP-1]
  imul R3, 7
  iadd R2, R3
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  jmp __for_2156_end
__if_2166_end:
__for_2156_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2156_start
__for_2156_end:
__function_spawn_big_return:
  mov SP, BP
  pop BP
  ret

__function_spawn_medium:
  push BP
  mov BP, SP
  isub SP, 3
  mov R0, 0
  mov [BP-1], R0
__for_2217_start:
  mov R0, [BP-1]
  ilt R0, 20
  jf R0, __for_2217_end
__if_2227_start:
  mov R1, global_mediumAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  bnot R0
  jf R0, __if_2227_end
  mov R1, global_mediumAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  mov R1, 1
  mov [SP+1], R1
  call __function_init_asteroid
  mov R0, [BP+2]
  cif R0
  mov R1, global_mediumAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  cif R0
  mov R1, global_mediumAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, global_mediumAsteroids
  mov R3, [BP-1]
  imul R3, 7
  iadd R2, R3
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, global_mediumAsteroids
  mov R3, [BP-1]
  imul R3, 7
  iadd R2, R3
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  jmp __for_2217_end
__if_2227_end:
__for_2217_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2217_start
__for_2217_end:
__function_spawn_medium_return:
  mov SP, BP
  pop BP
  ret

__function_spawn_small:
  push BP
  mov BP, SP
  isub SP, 3
  mov R0, 0
  mov [BP-1], R0
__for_2278_start:
  mov R0, [BP-1]
  ilt R0, 40
  jf R0, __for_2278_end
__if_2288_start:
  mov R1, global_smallAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  bnot R0
  jf R0, __if_2288_end
  mov R1, global_smallAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  mov R1, 0
  mov [SP+1], R1
  call __function_init_asteroid
  mov R0, [BP+2]
  cif R0
  mov R1, global_smallAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+3]
  cif R0
  mov R1, global_smallAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, global_smallAsteroids
  mov R3, [BP-1]
  imul R3, 7
  iadd R2, R3
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, global_smallAsteroids
  mov R3, [BP-1]
  imul R3, 7
  iadd R2, R3
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  jmp __for_2278_end
__if_2288_end:
__for_2278_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2278_start
__for_2278_end:
__function_spawn_small_return:
  mov SP, BP
  pop BP
  ret

__function_destroy_big_asteroid:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov R1, global_bigAsteroids
  mov R2, [BP+2]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov [R1], R0
  mov R2, global_bigAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  mov R1, [R2]
  cfi R1
  mov [SP], R1
  mov R2, global_bigAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  cfi R1
  mov [SP+1], R1
  call __function_spawn_medium
  mov R2, global_bigAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  mov R1, [R2]
  cfi R1
  mov [SP], R1
  mov R2, global_bigAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  cfi R1
  mov [SP+1], R1
  call __function_spawn_medium
__function_destroy_big_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_destroy_medium_asteroid:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov R1, global_mediumAsteroids
  mov R2, [BP+2]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov [R1], R0
  mov R2, global_mediumAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  mov R1, [R2]
  cfi R1
  mov [SP], R1
  mov R2, global_mediumAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  cfi R1
  mov [SP+1], R1
  call __function_spawn_small
  mov R2, global_mediumAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  mov R1, [R2]
  cfi R1
  mov [SP], R1
  mov R2, global_mediumAsteroids
  mov R3, [BP+2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  cfi R1
  mov [SP+1], R1
  call __function_spawn_small
__function_destroy_medium_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_destroy_small_asteroid:
  push BP
  mov BP, SP
  mov R0, 0
  mov R1, global_smallAsteroids
  mov R2, [BP+2]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov [R1], R0
__function_destroy_small_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_update_asteroid:
  push BP
  mov BP, SP
  mov R1, [BP+2]
  mov R0, [R1]
  mov R2, [BP+2]
  iadd R2, 2
  mov R1, [R2]
  fadd R0, R1
  mov R1, [BP+2]
  mov [R1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R2, [BP+2]
  iadd R2, 3
  mov R1, [R2]
  fadd R0, R1
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_2408_start:
  mov R1, [BP+2]
  mov R0, [R1]
  flt R0, 0.000000
  jf R0, __if_2408_end
  mov R1, [BP+2]
  mov R0, [R1]
  fadd R0, 640.000000
  mov R1, [BP+2]
  mov [R1], R0
__if_2408_end:
__if_2417_start:
  mov R1, [BP+2]
  mov R0, [R1]
  fge R0, 640.000000
  jf R0, __if_2417_end
  mov R1, [BP+2]
  mov R0, [R1]
  fsub R0, 640.000000
  mov R1, [BP+2]
  mov [R1], R0
__if_2417_end:
__if_2426_start:
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  flt R0, 0.000000
  jf R0, __if_2426_end
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  fadd R0, 360.000000
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_2426_end:
__if_2435_start:
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  fge R0, 360.000000
  jf R0, __if_2435_end
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  fsub R0, 360.000000
  mov R1, [BP+2]
  iadd R1, 1
  mov [R1], R0
__if_2435_end:
__function_update_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_draw_asteroid:
  push BP
  mov BP, SP
  isub SP, 10
__if_2446_start:
  mov R1, [BP+2]
  iadd R1, 5
  mov R0, [R1]
  bnot R0
  jf R0, __if_2446_end
  jmp __function_draw_asteroid_return
__if_2446_end:
  mov R1, [BP+2]
  iadd R1, 4
  mov R0, [R1]
  mov [BP-1], R0
  mov R0, 0
  mov [BP-2], R0
__for_2455_start:
  mov R0, [BP-2]
  ilt R0, 5
  jf R0, __for_2455_end
  mov R1, [BP+2]
  mov R0, [R1]
  mov R1, global_asteroidShapes
  mov R2, [BP-1]
  imul R2, 24
  iadd R1, R2
  mov R2, [BP-2]
  imul R2, 2
  iadd R1, R2
  mov R1, [R1]
  cif R1
  fadd R0, R1
  cfi R0
  mov [BP-3], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, global_asteroidShapes
  mov R2, [BP-1]
  imul R2, 24
  iadd R1, R2
  mov R2, [BP-2]
  imul R2, 2
  iadd R1, R2
  iadd R1, 1
  mov R1, [R1]
  cif R1
  fadd R0, R1
  cfi R0
  mov [BP-4], R0
  mov R1, [BP+2]
  mov R0, [R1]
  mov R1, global_asteroidShapes
  mov R2, [BP-1]
  imul R2, 24
  iadd R1, R2
  mov R2, [BP-2]
  iadd R2, 1
  imod R2, 5
  imul R2, 2
  iadd R1, R2
  mov R1, [R1]
  cif R1
  fadd R0, R1
  cfi R0
  mov [BP-5], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, global_asteroidShapes
  mov R2, [BP-1]
  imul R2, 24
  iadd R1, R2
  mov R2, [BP-2]
  iadd R2, 1
  imod R2, 5
  imul R2, 2
  iadd R1, R2
  iadd R1, 1
  mov R1, [R1]
  cif R1
  fadd R0, R1
  cfi R0
  mov [BP-6], R0
  mov R1, [BP-3]
  mov [SP], R1
  mov R1, [BP-4]
  mov [SP+1], R1
  mov R1, [BP-5]
  mov [SP+2], R1
  mov R1, [BP-6]
  mov [SP+3], R1
  call __function_draw_line
__for_2455_continue:
  mov R0, [BP-2]
  mov R1, R0
  iadd R1, 1
  mov [BP-2], R1
  jmp __for_2455_start
__for_2455_end:
__function_draw_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_draw_asteroids:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov [BP-1], R0
__for_2529_start:
  mov R0, [BP-1]
  ilt R0, 1
  jf R0, __for_2529_end
__if_2538_start:
  mov R1, global_bigAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  jf R0, __if_2538_end
  mov R1, global_bigAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_draw_asteroid
__if_2538_end:
__for_2529_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2529_start
__for_2529_end:
  mov R0, 0
  mov [BP-1], R0
__for_2548_start:
  mov R0, [BP-1]
  ilt R0, 20
  jf R0, __for_2548_end
__if_2557_start:
  mov R1, global_mediumAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  jf R0, __if_2557_end
  mov R1, global_mediumAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_draw_asteroid
__if_2557_end:
__for_2548_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2548_start
__for_2548_end:
  mov R0, 0
  mov [BP-1], R0
__for_2567_start:
  mov R0, [BP-1]
  ilt R0, 40
  jf R0, __for_2567_end
__if_2576_start:
  mov R1, global_smallAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  jf R0, __if_2576_end
  mov R1, global_smallAsteroids
  mov R2, [BP-1]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_draw_asteroid
__if_2576_end:
__for_2567_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2567_start
__for_2567_end:
__function_draw_asteroids_return:
  mov SP, BP
  pop BP
  ret

__function_destroy_asteroid:
  push BP
  mov BP, SP
  isub SP, 7
  mov R1, [BP+2]
  iadd R1, 6
  mov R0, [R1]
  mov [BP-1], R0
  mov R0, 0
  mov R1, [BP+2]
  iadd R1, 5
  mov [R1], R0
__if_2596_start:
  mov R0, [BP-1]
  igt R0, 0
  jf R0, __if_2596_end
  mov R0, -1
  mov [BP-2], R0
  mov R0, 0
  mov [BP-3], R0
__if_2607_start:
  mov R0, [BP-1]
  ieq R0, 2
  jf R0, __if_2607_else
  mov R0, global_mediumAsteroids
  mov [BP-2], R0
  mov R0, 20
  mov [BP-3], R0
  jmp __if_2607_end
__if_2607_else:
__if_2618_start:
  mov R0, [BP-1]
  ieq R0, 1
  jf R0, __if_2618_end
  mov R0, global_smallAsteroids
  mov [BP-2], R0
  mov R0, 40
  mov [BP-3], R0
__if_2618_end:
__if_2607_end:
__if_2629_start:
  mov R0, [BP-2]
  ine R0, -1
  jf R0, __if_2629_end
  mov R0, 0
  mov [BP-4], R0
  mov R0, 0
  mov [BP-5], R0
__for_2637_start:
  mov R0, [BP-5]
  mov R1, [BP-3]
  ilt R0, R1
  jf R0, __LogicalAnd_ShortCircuit_2645
  mov R1, [BP-4]
  ilt R1, 2
  and R0, R1
__LogicalAnd_ShortCircuit_2645:
  jf R0, __for_2637_end
__if_2651_start:
  mov R1, [BP-2]
  mov R2, [BP-5]
  imul R2, 7
  iadd R1, R2
  iadd R1, 5
  mov R0, [R1]
  bnot R0
  jf R0, __if_2651_end
  mov R1, [BP-2]
  mov R2, [BP-5]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  mov R1, [BP-1]
  isub R1, 1
  mov [SP+1], R1
  call __function_init_asteroid
  mov R1, [BP+2]
  mov R0, [R1]
  mov R1, [BP-2]
  mov R2, [BP-5]
  imul R2, 7
  iadd R1, R2
  mov [R1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R1, [BP-2]
  mov R2, [BP-5]
  imul R2, 7
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, [BP-2]
  mov R3, [BP-5]
  imul R3, 7
  iadd R2, R3
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  call __function_rand
  mov R1, R0
  imod R1, 5
  isub R1, 2
  cif R1
  mov R2, [BP-2]
  mov R3, [BP-5]
  imul R3, 7
  iadd R2, R3
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  mov R0, [BP-4]
  mov R1, R0
  iadd R1, 1
  mov [BP-4], R1
__if_2651_end:
__for_2637_continue:
  mov R0, [BP-5]
  mov R1, R0
  iadd R1, 1
  mov [BP-5], R1
  jmp __for_2637_start
__for_2637_end:
__if_2629_end:
__if_2596_end:
__function_destroy_asteroid_return:
  mov SP, BP
  pop BP
  ret

__function_check_bullet_asteroid_collision:
  push BP
  mov BP, SP
  isub SP, 4
  push R1
  push R2
  push R3
  isub SP, 1
  mov R1, [BP+2]
  mov R0, [R1]
  mov R2, [BP+3]
  mov R1, [R2]
  fsub R0, R1
  mov [BP-1], R0
  mov R1, [BP+2]
  iadd R1, 1
  mov R0, [R1]
  mov R2, [BP+3]
  iadd R2, 1
  mov R1, [R2]
  fsub R0, R1
  mov [BP-2], R0
  mov R1, [BP-1]
  mov R2, [BP-1]
  fmul R1, R2
  mov R2, [BP-2]
  mov R3, [BP-2]
  fmul R2, R3
  fadd R1, R2
  mov [SP], R1
  call __function_sqrt
  mov [BP-3], R0
  mov R0, 20.000000
  mov [BP-4], R0
__if_2734_start:
  mov R0, [BP-3]
  mov R1, [BP-4]
  flt R0, R1
  jf R0, __if_2734_end
  mov R0, 1
  jmp __function_check_bullet_asteroid_collision_return
__if_2734_end:
  mov R0, 0
__function_check_bullet_asteroid_collision_return:
  iadd SP, 1
  pop R3
  pop R2
  pop R1
  mov SP, BP
  pop BP
  ret

__function_update_bullets_and_asteroids:
  push BP
  mov BP, SP
  isub SP, 4
  mov R0, 0
  mov [BP-1], R0
__for_2744_start:
  mov R0, [BP-1]
  ilt R0, 20
  jf R0, __for_2744_end
__if_2754_start:
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  jf R0, __if_2754_end
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov R0, [R1]
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 2
  mov R1, [R2]
  fadd R0, R1
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov [R1], R0
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  fadd R0, R1
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
  mov R0, 0
  mov [BP-2], R0
__for_2778_start:
  mov R0, [BP-2]
  ilt R0, 1
  jf R0, __for_2778_end
__if_2788_start:
  mov R2, global_bigAsteroids
  mov R3, [BP-2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 5
  mov R1, [R2]
  jf R1, __LogicalAnd_ShortCircuit_2793
  mov R3, global_projectiles
  mov R4, [BP-1]
  imul R4, 5
  iadd R3, R4
  mov [SP], R3
  mov R3, global_bigAsteroids
  mov R4, [BP-2]
  imul R4, 7
  iadd R3, R4
  mov [SP+1], R3
  call __function_check_bullet_asteroid_collision
  mov R2, R0
  and R1, R2
__LogicalAnd_ShortCircuit_2793:
  mov R0, R1
  jf R0, __if_2788_end
  mov R1, global_bigAsteroids
  mov R2, [BP-2]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_destroy_asteroid
  mov R0, 0
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __for_2778_end
__if_2788_end:
__for_2778_continue:
  mov R0, [BP-2]
  mov R1, R0
  iadd R1, 1
  mov [BP-2], R1
  jmp __for_2778_start
__for_2778_end:
  mov R0, 0
  mov [BP-2], R0
__for_2816_start:
  mov R0, [BP-2]
  ilt R0, 20
  jf R0, __LogicalAnd_ShortCircuit_2827
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  and R0, R1
__LogicalAnd_ShortCircuit_2827:
  jf R0, __for_2816_end
__if_2831_start:
  mov R2, global_mediumAsteroids
  mov R3, [BP-2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 5
  mov R1, [R2]
  jf R1, __LogicalAnd_ShortCircuit_2836
  mov R3, global_projectiles
  mov R4, [BP-1]
  imul R4, 5
  iadd R3, R4
  mov [SP], R3
  mov R3, global_mediumAsteroids
  mov R4, [BP-2]
  imul R4, 7
  iadd R3, R4
  mov [SP+1], R3
  call __function_check_bullet_asteroid_collision
  mov R2, R0
  and R1, R2
__LogicalAnd_ShortCircuit_2836:
  mov R0, R1
  jf R0, __if_2831_end
  mov R1, global_mediumAsteroids
  mov R2, [BP-2]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_destroy_asteroid
  mov R0, 0
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __for_2816_end
__if_2831_end:
__for_2816_continue:
  mov R0, [BP-2]
  mov R1, R0
  iadd R1, 1
  mov [BP-2], R1
  jmp __for_2816_start
__for_2816_end:
  mov R0, 0
  mov [BP-2], R0
__for_2859_start:
  mov R0, [BP-2]
  ilt R0, 40
  jf R0, __LogicalAnd_ShortCircuit_2870
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 4
  mov R1, [R2]
  and R0, R1
__LogicalAnd_ShortCircuit_2870:
  jf R0, __for_2859_end
__if_2874_start:
  mov R2, global_smallAsteroids
  mov R3, [BP-2]
  imul R3, 7
  iadd R2, R3
  iadd R2, 5
  mov R1, [R2]
  jf R1, __LogicalAnd_ShortCircuit_2879
  mov R3, global_projectiles
  mov R4, [BP-1]
  imul R4, 5
  iadd R3, R4
  mov [SP], R3
  mov R3, global_smallAsteroids
  mov R4, [BP-2]
  imul R4, 7
  iadd R3, R4
  mov [SP+1], R3
  call __function_check_bullet_asteroid_collision
  mov R2, R0
  and R1, R2
__LogicalAnd_ShortCircuit_2879:
  mov R0, R1
  jf R0, __if_2874_end
  mov R1, global_smallAsteroids
  mov R2, [BP-2]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_destroy_asteroid
  mov R0, 0
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __for_2859_end
__if_2874_end:
__for_2859_continue:
  mov R0, [BP-2]
  mov R1, R0
  iadd R1, 1
  mov [BP-2], R1
  jmp __for_2859_start
__for_2859_end:
__if_2754_end:
__for_2744_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_2744_start
__for_2744_end:
__function_update_bullets_and_asteroids_return:
  mov SP, BP
  pop BP
  ret

__function_int_to_string:
  push BP
  mov BP, SP
  isub SP, 14
__if_2905_start:
  mov R0, [BP+2]
  ieq R0, 0
  jf R0, __if_2905_end
  mov R0, 48
  mov R1, [BP+3]
  mov [R1], R0
  mov R0, 0
  mov R1, [BP+3]
  iadd R1, 1
  mov [R1], R0
  jmp __function_int_to_string_return
__if_2905_end:
  mov R0, 0
  mov [BP-1], R0
__if_2924_start:
  mov R0, [BP+2]
  ilt R0, 0
  jf R0, __if_2924_end
  mov R0, 1
  mov [BP-1], R0
  mov R0, [BP+2]
  isgn R0
  mov [BP+2], R0
__if_2924_end:
  mov R0, 0
  mov [BP-12], R0
__while_2942_start:
__while_2942_continue:
  mov R0, [BP+2]
  igt R0, 0
  jf R0, __while_2942_end
  mov R0, [BP+2]
  imod R0, 10
  iadd R0, 48
  lea R1, [BP-11]
  mov R2, [BP-12]
  mov R3, R2
  iadd R3, 1
  mov [BP-12], R3
  iadd R1, R2
  mov [R1], R0
  mov R0, [BP+2]
  idiv R0, 10
  mov [BP+2], R0
  jmp __while_2942_start
__while_2942_end:
  mov R0, 0
  mov [BP-13], R0
__if_2964_start:
  mov R0, [BP-1]
  cib R0
  jf R0, __if_2964_end
  mov R0, 45
  mov R1, [BP+3]
  mov R2, [BP-13]
  mov R3, R2
  iadd R3, 1
  mov [BP-13], R3
  iadd R1, R2
  mov [R1], R0
__if_2964_end:
  mov R0, [BP-12]
  isub R0, 1
  mov [BP-14], R0
__for_2972_start:
  mov R0, [BP-14]
  ige R0, 0
  jf R0, __for_2972_end
  lea R0, [BP-11]
  mov R1, [BP-14]
  iadd R0, R1
  mov R0, [R0]
  mov R1, [BP+3]
  mov R2, [BP-13]
  mov R3, R2
  iadd R3, 1
  mov [BP-13], R3
  iadd R1, R2
  mov [R1], R0
__for_2972_continue:
  mov R0, [BP-14]
  mov R1, R0
  isub R1, 1
  mov [BP-14], R1
  jmp __for_2972_start
__for_2972_end:
  mov R0, 0
  mov R1, [BP+3]
  mov R2, [BP-13]
  iadd R1, R2
  mov [R1], R0
__function_int_to_string_return:
  mov SP, BP
  pop BP
  ret

__function_fire_projectile:
  push BP
  mov BP, SP
  isub SP, 2
  mov R0, 0
  mov [BP-1], R0
__for_3003_start:
  mov R0, [BP-1]
  ilt R0, 20
  jf R0, __for_3003_end
__if_3013_start:
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  bnot R0
  jf R0, __if_3013_end
  mov R1, [BP+2]
  mov R2, [global_projectileOffset]
  mov R4, [BP+4]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  mov [R2], R1
  mov R0, R1
  mov R1, [BP+3]
  mov R2, [global_projectileOffset]
  mov R4, [BP+4]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov [R2], R1
  mov R0, R1
  mov R2, [BP+4]
  mov [SP], R2
  call __function_cos
  mov R1, R0
  fmul R1, 5.000000
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 2
  mov [R2], R1
  mov R0, R1
  mov R2, [BP+4]
  mov [SP], R2
  call __function_sin
  mov R1, R0
  fmul R1, 5.000000
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov [R2], R1
  mov R0, R1
  mov R0, 1
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
  jmp __for_3003_end
__if_3013_end:
__for_3003_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_3003_start
__for_3003_end:
__function_fire_projectile_return:
  mov SP, BP
  pop BP
  ret

__function_update_projectiles:
  push BP
  mov BP, SP
  isub SP, 5
  mov R0, 0
  mov [BP-1], R0
__for_3068_start:
  mov R0, [BP-1]
  ilt R0, 20
  jf R0, __for_3068_end
__if_3078_start:
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov R0, [R1]
  jf R0, __if_3078_end
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov R0, [R1]
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 2
  mov R1, [R2]
  fadd R0, R1
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov [R1], R0
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov R0, [R1]
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 3
  mov R1, [R2]
  fadd R0, R1
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 1
  mov [R1], R0
__if_3102_start:
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  mov R0, [R1]
  flt R0, 0.000000
  jt R0, __LogicalOr_ShortCircuit_3113
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  mov R1, [R2]
  fge R1, 640.000000
  or R0, R1
__LogicalOr_ShortCircuit_3113:
  jt R0, __LogicalOr_ShortCircuit_3120
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  flt R1, 0.000000
  or R0, R1
__LogicalOr_ShortCircuit_3120:
  jt R0, __LogicalOr_ShortCircuit_3127
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  fge R1, 360.000000
  or R0, R1
__LogicalOr_ShortCircuit_3127:
  jf R0, __if_3102_end
  mov R0, 0
  mov R1, global_projectiles
  mov R2, [BP-1]
  imul R2, 5
  iadd R1, R2
  iadd R1, 4
  mov [R1], R0
__if_3102_end:
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  mov R1, [R2]
  cfi R1
  mov [SP], R1
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  cfi R1
  mov [SP+1], R1
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  mov R1, [R2]
  mov R3, global_projectiles
  mov R4, [BP-1]
  imul R4, 5
  iadd R3, R4
  iadd R3, 2
  mov R2, [R3]
  fsub R1, R2
  cfi R1
  mov [SP+2], R1
  mov R2, global_projectiles
  mov R3, [BP-1]
  imul R3, 5
  iadd R2, R3
  iadd R2, 1
  mov R1, [R2]
  mov R3, global_projectiles
  mov R4, [BP-1]
  imul R4, 5
  iadd R3, R4
  iadd R3, 3
  mov R2, [R3]
  fsub R1, R2
  cfi R1
  mov [SP+3], R1
  call __function_draw_line
__if_3078_end:
__for_3068_continue:
  mov R0, [BP-1]
  mov R1, R0
  iadd R1, 1
  mov [BP-1], R1
  jmp __for_3068_start
__for_3068_end:
__function_update_projectiles_return:
  mov SP, BP
  pop BP
  ret

__function_draw_ship:
  push BP
  mov BP, SP
  isub SP, 24
  mov R0, 15
  mov [BP-1], R0
  mov R0, 8
  mov [BP-2], R0
  mov R0, 0.785398
  mov [BP-3], R0
  mov R0, -20
  mov [BP-4], R0
  mov R1, [BP+2]
  cif R1
  mov R2, [BP-1]
  cif R2
  mov R4, [BP+4]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R0, R1
  cfi R0
  mov [BP-5], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP-1]
  cif R2
  mov R4, [BP+4]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R0, R1
  cfi R0
  mov [BP-6], R0
  mov R1, [BP+2]
  cif R1
  mov R2, [BP-1]
  cif R2
  mov R4, [BP+4]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-7], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP-1]
  cif R2
  mov R4, [BP+4]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-8], R0
  mov R1, [BP+2]
  cif R1
  mov R2, [BP-2]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-3]
  fadd R4, R5
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R0, R1
  cfi R0
  mov [BP-9], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP-2]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-3]
  fadd R4, R5
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R0, R1
  cfi R0
  mov [BP-10], R0
  mov R1, [BP+2]
  cif R1
  mov R2, [BP-2]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-3]
  fsub R4, R5
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R0, R1
  cfi R0
  mov [BP-11], R0
  mov R1, [BP+3]
  cif R1
  mov R2, [BP-2]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-3]
  fsub R4, R5
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fadd R1, R2
  mov R0, R1
  cfi R0
  mov [BP-12], R0
  mov R1, [BP-9]
  mov [SP], R1
  mov R1, [BP-10]
  mov [SP+1], R1
  mov R1, [BP-5]
  mov [SP+2], R1
  mov R1, [BP-6]
  mov [SP+3], R1
  call __function_draw_line
  mov R1, [BP-11]
  mov [SP], R1
  mov R1, [BP-12]
  mov [SP+1], R1
  mov R1, [BP-5]
  mov [SP+2], R1
  mov R1, [BP-6]
  mov [SP+3], R1
  call __function_draw_line
__if_3273_start:
  mov R0, [BP+5]
  jf R0, __if_3273_end
  mov R1, [BP-7]
  cif R1
  mov R2, [BP-4]
  cif R2
  mov R4, [BP+4]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-13], R0
  mov R1, [BP-8]
  cif R1
  mov R2, [BP-4]
  cif R2
  mov R4, [BP+4]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-14], R0
  mov R0, 0.392699
  mov [BP-15], R0
  mov R0, [BP+6]
  mov R1, 0
  ieq R1, R0
  jt R1, __switch_3299_case_0
  mov R1, 1
  ieq R1, R0
  jt R1, __switch_3299_case_1
  mov R1, 2
  ieq R1, R0
  jt R1, __switch_3299_case_2
  mov R1, 3
  ieq R1, R0
  jt R1, __switch_3299_case_3
  jmp __switch_3299_default
__switch_3299_case_0:
  mov R0, 3
  mov [BP-16], R0
  jmp __switch_3299_end
__switch_3299_case_1:
  mov R0, 5
  mov [BP-16], R0
  jmp __switch_3299_end
__switch_3299_case_2:
  mov R0, 4
  mov [BP-16], R0
  jmp __switch_3299_end
__switch_3299_case_3:
  mov R0, 6
  mov [BP-16], R0
  jmp __switch_3299_end
__switch_3299_default:
  mov R0, 4
  mov [BP-16], R0
__switch_3299_end:
  mov R1, [BP-13]
  cif R1
  mov R2, [BP-16]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-15]
  fadd R4, R5
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-17], R0
  mov R1, [BP-14]
  cif R1
  mov R2, [BP-16]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-15]
  fadd R4, R5
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-18], R0
  mov R1, [BP-13]
  cif R1
  mov R2, [BP-16]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-15]
  fsub R4, R5
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-19], R0
  mov R1, [BP-14]
  cif R1
  mov R2, [BP-16]
  cif R2
  mov R4, [BP+4]
  mov R5, [BP-15]
  fsub R4, R5
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  fsub R1, R2
  mov R0, R1
  cfi R0
  mov [BP-20], R0
  mov R1, [BP-13]
  mov [SP], R1
  mov R1, [BP-14]
  mov [SP+1], R1
  mov R1, [BP-17]
  mov [SP+2], R1
  mov R1, [BP-18]
  mov [SP+3], R1
  call __function_draw_line
  mov R1, [BP-13]
  mov [SP], R1
  mov R1, [BP-14]
  mov [SP+1], R1
  mov R1, [BP-19]
  mov [SP+2], R1
  mov R1, [BP-20]
  mov [SP+3], R1
  call __function_draw_line
__if_3273_end:
__function_draw_ship_return:
  mov SP, BP
  pop BP
  ret

__function_main:
  push BP
  mov BP, SP
  isub SP, 17
  mov R0, 320.000000
  mov [BP-5], R0
  mov R0, 180.000000
  mov [BP-4], R0
  mov R0, 0.000000
  mov [BP-3], R0
  mov R0, 0.000000
  mov [BP-2], R0
  mov R0, 0.000000
  mov [BP-1], R0
  mov R0, 3.000000
  mov [BP-6], R0
  mov R0, 1.000000
  mov [BP-7], R0
  mov R0, 0.980000
  mov [BP-8], R0
  mov R0, 0.016667
  mov [BP-9], R0
  mov R0, 0
  mov [BP-10], R0
  mov R0, 0
  mov [BP-11], R0
  mov R0, 0
  mov [BP-12], R0
__for_3413_start:
  mov R0, [BP-12]
  ilt R0, 1
  jf R0, __for_3413_end
  mov R1, global_bigAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  mov R1, 2
  mov [SP+1], R1
  call __function_init_asteroid
__for_3413_continue:
  mov R0, [BP-12]
  mov R1, R0
  iadd R1, 1
  mov [BP-12], R1
  jmp __for_3413_start
__for_3413_end:
__while_3429_start:
__while_3429_continue:
  mov R0, 1
  jf R0, __while_3429_end
  mov R1, -16777216
  mov [SP], R1
  call __function_clear_screen
  mov R0, 0
  mov [BP-10], R0
__if_3437_start:
  call __function_gamepad_left
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_3437_end
  mov R0, [BP-3]
  mov R1, [BP-6]
  mov R2, [BP-9]
  fmul R1, R2
  fsub R0, R1
  mov [BP-3], R0
__if_3437_end:
__if_3448_start:
  call __function_gamepad_right
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_3448_end
  mov R0, [BP-3]
  mov R1, [BP-6]
  mov R2, [BP-9]
  fmul R1, R2
  fadd R0, R1
  mov [BP-3], R0
__if_3448_end:
__if_3459_start:
  call __function_gamepad_button_a
  mov R1, R0
  igt R1, 0
  mov R0, R1
  jf R0, __if_3459_end
  mov R1, [BP-2]
  mov R2, [BP-7]
  mov R4, [BP-3]
  mov [SP], R4
  call __function_cos
  mov R3, R0
  fmul R2, R3
  mov R3, [BP-9]
  fmul R2, R3
  fadd R1, R2
  mov [BP-2], R1
  mov R0, R1
  mov R1, [BP-1]
  mov R2, [BP-7]
  mov R4, [BP-3]
  mov [SP], R4
  call __function_sin
  mov R3, R0
  fmul R2, R3
  mov R3, [BP-9]
  fmul R2, R3
  fadd R1, R2
  mov [BP-1], R1
  mov R0, R1
  mov R0, 1
  mov [BP-10], R0
__if_3459_end:
__if_3489_start:
  call __function_gamepad_button_b
  mov R1, R0
  ieq R1, 1
  mov R0, R1
  jf R0, __if_3489_end
  mov R1, [BP-5]
  mov [SP], R1
  mov R1, [BP-4]
  mov [SP+1], R1
  mov R1, [BP-3]
  mov [SP+2], R1
  call __function_fire_projectile
__if_3489_end:
  mov R0, [BP-5]
  mov R1, [BP-2]
  fadd R0, R1
  mov [BP-5], R0
  mov R0, [BP-4]
  mov R1, [BP-1]
  fadd R0, R1
  mov [BP-4], R0
  mov R0, [BP-2]
  mov R1, [BP-8]
  fmul R0, R1
  mov [BP-2], R0
  mov R0, [BP-1]
  mov R1, [BP-8]
  fmul R0, R1
  mov [BP-1], R0
__if_3519_start:
  mov R0, [BP-5]
  flt R0, 0.000000
  jf R0, __if_3519_end
  mov R0, [BP-5]
  fadd R0, 640.000000
  mov [BP-5], R0
__if_3519_end:
__if_3528_start:
  mov R0, [BP-5]
  fge R0, 640.000000
  jf R0, __if_3528_end
  mov R0, [BP-5]
  fsub R0, 640.000000
  mov [BP-5], R0
__if_3528_end:
__if_3537_start:
  mov R0, [BP-4]
  flt R0, 0.000000
  jf R0, __if_3537_end
  mov R0, [BP-4]
  fadd R0, 360.000000
  mov [BP-4], R0
__if_3537_end:
__if_3546_start:
  mov R0, [BP-4]
  fge R0, 360.000000
  jf R0, __if_3546_end
  mov R0, [BP-4]
  fsub R0, 360.000000
  mov [BP-4], R0
__if_3546_end:
  mov R0, 0
  mov [BP-12], R0
__for_3555_start:
  mov R0, [BP-12]
  ilt R0, 1
  jf R0, __for_3555_end
  mov R1, global_bigAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_update_asteroid
  mov R1, global_bigAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_draw_asteroid
__for_3555_continue:
  mov R0, [BP-12]
  mov R1, R0
  iadd R1, 1
  mov [BP-12], R1
  jmp __for_3555_start
__for_3555_end:
  mov R0, 0
  mov [BP-12], R0
__for_3575_start:
  mov R0, [BP-12]
  ilt R0, 20
  jf R0, __for_3575_end
  mov R1, global_mediumAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_update_asteroid
  mov R1, global_mediumAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_draw_asteroid
__for_3575_continue:
  mov R0, [BP-12]
  mov R1, R0
  iadd R1, 1
  mov [BP-12], R1
  jmp __for_3575_start
__for_3575_end:
  mov R0, 0
  mov [BP-12], R0
__for_3595_start:
  mov R0, [BP-12]
  ilt R0, 40
  jf R0, __for_3595_end
  mov R1, global_smallAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_update_asteroid
  mov R1, global_smallAsteroids
  mov R2, [BP-12]
  imul R2, 7
  iadd R1, R2
  mov [SP], R1
  call __function_draw_asteroid
__for_3595_continue:
  mov R0, [BP-12]
  mov R1, R0
  iadd R1, 1
  mov [BP-12], R1
  jmp __for_3595_start
__for_3595_end:
  mov R0, [BP-11]
  iadd R0, 1
  imod R0, 4
  mov [BP-11], R0
  mov R1, [BP-5]
  cfi R1
  mov [SP], R1
  mov R1, [BP-4]
  cfi R1
  mov [SP+1], R1
  mov R1, [BP-3]
  mov [SP+2], R1
  mov R1, [BP-10]
  mov [SP+3], R1
  mov R1, [BP-11]
  mov [SP+4], R1
  call __function_draw_ship
  call __function_update_projectiles
  call __function_update_bullets_and_asteroids
  call __function_end_frame
  jmp __while_3429_start
__while_3429_end:
__function_main_return:
  mov SP, BP
  pop BP
  ret

