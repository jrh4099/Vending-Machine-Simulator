
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab4 -dir "D:/Jonathan Hubbard/DSD2/Lab4/Projects/Lab4/planAhead_run_5" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Jonathan Hubbard/DSD2/Lab4/Projects/Lab4/Usr_interaction.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Jonathan Hubbard/DSD2/Lab4/Projects/Lab4} }
set_property target_constrs_file "Usr_interaction.ucf" [current_fileset -constrset]
add_files [list {Usr_interaction.ucf}] -fileset [get_property constrset [current_run]]
link_design
