#############################################################################
# Generated by PAGE version 6.0.1
#  in conjunction with Tcl version 8.6
#  Feb 18, 2021 01:30:09 AM -03  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m49" -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 600x600
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 1
    wm maxsize $top 1540 845
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Interface Gráfica"
    vTcl:DefineAlias "$top" "Toplevel" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    label $top.lab45 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 14 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -text Nome 
    vTcl:DefineAlias "$top.lab45" "Nome" vTcl:WidgetProc "Toplevel" 1
    entry $top.ent46 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -insertbackground black -width 304 
    vTcl:DefineAlias "$top.ent46" "entry_nome" vTcl:WidgetProc "Toplevel" 1
    label $top.lab47 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 14 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text E-mail 
    vTcl:DefineAlias "$top.lab47" "E_mail" vTcl:WidgetProc "Toplevel" 1
    entry $top.ent48 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 304 
    vTcl:DefineAlias "$top.ent48" "entry_email" vTcl:WidgetProc "Toplevel" 1
    menu $top.m49 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -cursor arrow -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    label $top.lab50 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 14 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Senha 
    vTcl:DefineAlias "$top.lab50" "Senha" vTcl:WidgetProc "Toplevel" 1
    entry $top.ent51 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 304 
    vTcl:DefineAlias "$top.ent51" "entry_senha" vTcl:WidgetProc "Toplevel" 1
    label $top.lab52 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 14 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Assunto 
    vTcl:DefineAlias "$top.lab52" "Ass" vTcl:WidgetProc "Toplevel" 1
    entry $top.ent53 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 354 
    vTcl:DefineAlias "$top.ent53" "entry_ass" vTcl:WidgetProc "Toplevel" 1
    label $top.lab54 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 14 -weight normal -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text Mensagem 
    vTcl:DefineAlias "$top.lab54" "Msg" vTcl:WidgetProc "Toplevel" 1
    entry $top.ent55 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground blue \
        -selectforeground white -width 464 
    vTcl:DefineAlias "$top.ent55" "entry_msg" vTcl:WidgetProc "Toplevel" 1
    ttk::separator $top.tSe56
    vTcl:DefineAlias "$top.tSe56" "barra" vTcl:WidgetProc "Toplevel" 1
    button $top.but57 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #0080ff -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 12 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Abrir Lista} 
    vTcl:DefineAlias "$top.but57" "Abrir" vTcl:WidgetProc "Toplevel" 1
    button $top.but60 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #0080ff -disabledforeground #a3a3a3 \
        -font {-family {Open Sans} -size 12 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Enviar 
    vTcl:DefineAlias "$top.but60" "Enviar" vTcl:WidgetProc "Toplevel" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab45 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.017 -width 0 -relwidth 0.107 \
        -height 0 -relheight 0.068 -anchor nw -bordermode ignore 
    place $top.ent46 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.083 -width 304 -relwidth 0 \
        -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab47 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.125 -width 0 -relwidth 0.107 \
        -height 0 -relheight 0.069 -anchor nw -bordermode ignore 
    place $top.ent48 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.2 -width 304 -relwidth 0 \
        -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.233 -width 0 -relwidth 0.107 \
        -height 0 -relheight 0.068 -anchor nw -bordermode ignore 
    place $top.ent51 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.3 -width 304 -relwidth 0 \
        -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab52 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.333 -width 0 -relwidth 0.14 \
        -height 0 -relheight 0.069 -anchor nw -bordermode ignore 
    place $top.ent53 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.4 -width 354 -relwidth 0 \
        -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $top.lab54 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.433 -width 0 -relwidth 0.19 \
        -height 0 -relheight 0.068 -anchor nw -bordermode ignore 
    place $top.ent55 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.5 -width 464 -relwidth 0 \
        -height 110 -relheight 0 -anchor nw -bordermode ignore 
    place $top.tSe56 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.717 -width 0 -relwidth 0.9 \
        -height 0 -relheight 0.003 -anchor nw -bordermode inside 
    place $top.but57 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.75 -width 127 -relwidth 0 \
        -height 44 -relheight 0 -anchor nw -bordermode ignore 
    place $top.but60 \
        -in $top -x 0 -relx 0.05 -y 0 -rely 0.867 -width 127 -relwidth 0 \
        -height 44 -relheight 0 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

