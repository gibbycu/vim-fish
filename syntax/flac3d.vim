" File: flac3d.vim
" Author: JuanPabloAJ jpabloaj@gmail.com
" Description: flac3d scripting language syntax

if !exists("main_syntax")
    if version < 600
        syntax clear
    elseif exists("b:current_syntax")
        finish
    endif
    let main_syntax = 'flac3d'
endif

syntax case ignore

syn keyword flac3dStatement def nextgroup=flac3dFunction skipwhite
syn keyword flac3dStatement end
syn keyword flac3dStatement local nextgroup=flac3dVariable skipwhite 
syn keyword flac3dStatement global nextgroup=flac3dVariable skipwhite 
syn keyword flac3dStatement argument nextgroup=flac3dVariable skipwhite 

syn match   flac3dFunction
      \ "\%(\%(def\s\)\s*\)\@<=\h\%(\w\|\.\)*" contained

syntax match flac3dVariable /\<[\$_]\+[[:alnum:]_]*/ 

syntax match  flac3dComment ";.*$"

syntax region flac3dString start=+'+ end=+'+ keepend

syntax keyword flac3dConditional if else 'else if' end_if endif then case section caseof case_of end_case  endcase 

syntax keyword flac3dRepeat loop end_loop while  foreach section end_section command endcommand end_command endloop

" commands
syntax keyword flac3dWords apply array attach 
syntax keyword flac3dWords ca call config constitutive_model constitutivemodel 
syntax keyword flac3dWords cont continue copy cycle cyc
syntax keyword flac3dWords exit 
syntax keyword flac3dWords f_prop fish fishcall fix free friend 
syntax keyword flac3dWords gen generate gravity giic grid group 
syntax keyword flac3dWords help his history 
syntax keyword flac3dWords ieb initial interface interior 
syntax keyword flac3dWords mark model m movie
syntax keyword flac3dWords new 
syntax keyword flac3dWords opt 
syntax keyword flac3dWords pause pl plot pr print
syntax keyword flac3dWords plot print 
syntax keyword flac3dWords q quit 
syntax keyword flac3dWords re restore ret return rezone 
syntax keyword flac3dWords sa sav set solve step sto str struct structure sys system 
syntax keyword flac3dWords tab table title track 
syntax keyword flac3dWords water while_stepping whilestepping win window
syntax keyword flac3dWords unmark
syntax keyword flac3dWords ex_

" General Math Functions
syntax keyword flac3dWords2 abs acos and asin atan atan2 cos cross degrad dot exp grand ln log lshift mag mag2 max min not or pi round rshift sgn sin sqrt tan unit urand

" General Utility Functions
syntax keyword flac3dWords2 array dim array size buildstr char clock code majorversion code minorversion code name ddfromnorm dipfromnorm environment error yes fc arg find range fish majorversion fish minorversion float from principal get_array in in_range inbox index index type input int list find list size lose array msgbox normfromdip normfromdipdd notify null out pointer type pointer typeid pointer typename principal stress realtime sleep string strlen substr tolower toupper type vector xcomp ycomp zcomp

" Table Functions
syntax keyword flac3dWords2 del_table get_table table table_id table_name table_size vtable xtable ytable

" Memory access Functions
syntax keyword flac3dWords2 get_mem lose_mem mem mem_pnt int any

" Input/Output Functions
syntax keyword flac3dWords2 close open read write parse pre_parse

" Geometry Variables
" General functions
syntax keyword flac3dWords2 aunbc crdt crtime dim do_update dydt dytime find_gp find_lk find_nd find_s find_zone fldt fltime fluid_ratio fos_f gen_ratio gp_head gp_list gp_near gp_near live gp_nearall gp_find grav i_find i_head i_list large lk_find lk_head lk_list mech_ratio munbc nd_head nd_list nd_near ngp nzone processors s_find s_head s_near step strnorm thdt therm_ratio thtime timestep unbal xgrav ygrav zgrav z_containing z_find z_list z_near z_near live z_nearall zone head

" grid point functions
syntax keyword flac3dWords2 gp_accel gp_biotmod gp_cfmod gp_copy gp_disp gp_dynmul gp_extra gp_fapp gp_finvol gp_fix gp_fload gp_flow gp_fmod gp_ftens gp_funbal gp_gravmass gp_group gp_id gp_isgroup gp_linkindex gp_linkzone gp_load gp_localratio gp_locsmall gp_mass gp_massadd gp_next gp_obv gp_pos gp_pp gp_ppfix gp_psource gp_removegroup gp_sat gp_smalldisp gp_staterest gp_statesave gp_stiff gp_temp gp_tfix gp_vel gp_xaccel gp_xdisp gp_xfapp gp_xfix gp_xfunbal gp_xload gp_xpos gp_xvel gp_yaccel gp_ydisp gp_yfapp gp_yfix gp_yfunbal gp_yload gp_ypos gp_yvel gp_zaccel gp_zdisp gp_zfapp gp_zfix gp_zfunbal gp_zload gp_zpos gp_zvel
"
" zone functions
syntax keyword flac3dWords2 zone_head z_apply z_aspect z_cen z_code z_copy z_density z_dynmul z_extra z_faceextra z_facegp z_facegroup z_faceingroup z_facenorm z_faceremovegroup z_facesize z_findface z_fl z_flmodel z_flprop z_flx z_fly z_flz z_fri z_frr z_fsi z_fsr z_geomtest z_gettetstress z_gp z_group z_hyst z_id z_iecreate z_inimodel z_isgroup z_islive z_join z_linkindex z_linkzone z_mechpropname z_model z_next z_nsmalltetvol z_numgp z_nummechprops z_numoverlays z_numtets z_ortho z_planarity z_pp z_prin z_prop z_pstress z_puttetstress z_q z_qualitytest z_qx z_qy z_qz z_removegroup z_sig1 z_sig2 z_sig3 z_sonplane z_ssi z_ssr z_state z_staterest z_statesave z_sxx z_sxy z_sxz z_syy z_syz z_szz z_temp z_tetgps z_thmodel z_thprop z_vol deformed z_volume z_vsi z_vsr z_weshear z_wetot z_wevol z_wpshear z_wptot z_wpvol z_xcen z_xfacenorm z_ycen z_yfacenorm z_zcen z_zfacenorm


hi link flac3dStatement Statement	
hi link flac3dStatement2 Statement	
hi link flac3dComment Comment
hi link flac3dString Comment
hi link flac3dConditional Conditional
hi link flac3dRepeat Repeat
hi link flac3dFunction Function
hi link flac3dWords Special
hi link flac3dWords2 Special
hi link flac3dVariable Identifier
