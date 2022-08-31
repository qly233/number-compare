
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name numbercompare -dir "D:/szdl/numbercompare/planAhead_run_5" -part xc7a100tfgg484-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/szdl/numbercompare/compare.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/szdl/numbercompare} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "compare.ucf" [current_fileset -constrset]
add_files [list {compare.ucf}] -fileset [get_property constrset [current_run]]
link_design
