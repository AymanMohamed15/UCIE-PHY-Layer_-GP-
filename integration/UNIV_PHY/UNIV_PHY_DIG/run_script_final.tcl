# Cleanup previous runs
file delete -force ./log_files
file delete -force ./coverage_files
file delete -force ./merged_coverage
file delete -force ./waveforms

# Library Setup 
vlib work



# Design Files 
set design_files {
    ./UNIV_PHY_DIG.v
    ./UNIV_PHY_DIG_tb.sv
    ../../LTSM_MB/*.v
    ../../../RDI/*/*.v
    ../../../LTSM/MBINIT/*.v
    ../../../LTSM/MBTRAIN/*.v
    ../../../LTSM/PHYRETRAIN/TX_PHYRETRAIN.v
    ../../../LTSM/PHYRETRAIN/RX_PHYRETRAIN.v
    ../../../LTSM/PHYRETRAIN/PHYRETRAIN_WRAPPER.v
    ../../../LTSM/SBINIT/TX_SBINIT.v
    ../../../LTSM/SBINIT/RX_SBINIT.v
    ../../../LTSM/SBINIT/SBINIT_WRAPPER.v
    ../../../LTSM/TRAINERROR/TX_TRAINERROR_HS.v
    ../../../LTSM/TRAINERROR/RX_TRAINERROR_HS.v
    ../../../LTSM/TRAINERROR/TRAINERROR_HS_WRAPPER.v
    ../../../LTSM/TOP/LTSM_TOP.v
    ../../../LTSM/SHARED_MODULE/nedege_detector.v
    ../../../LTSM/SHARED_MODULE/clock_div_32.v
    ../../../LTSM/SHARED_MODULE/clock_div_2.v
    ../../../MB_Blocks/clock_tx_rx/clock_generator.v
    ../../../MB_Blocks/clock_tx_rx/clock_detector.v
    ../../../RX_D2C_POINT_TEST/rx_initiated_point_test_tx.v
    ../../../RX_D2C_POINT_TEST/rx_initiated_point_test_rx.v
    ../../../RX_D2C_POINT_TEST/rx_initiated_point_test_wrapper.v
    ../../../TX_D2C_POINT_TEST/tx_initiated_point_test_tx.v
    ../../../TX_D2C_POINT_TEST/tx_initiated_point_test_rx.v
    ../../../TX_D2C_POINT_TEST/tx_initiated_point_test_wrapper.v
    ../../../synchronizers/*.v
    ../../../SB_TOP/SB_TOP_WRAPPER.v
    ../../../SB_TOP/SHARED_MODULES/*.v
    ../../../SB_TOP/SB_MB/SIDEBAND_RX/*.sv
    ../../../SB_TOP/SB_MB/SIDEBAND_TOP_WRAPPER/*.sv
    ../../../SB_TOP/SB_MB/SIDEBAND_TX/*.sv
    ../../../SB_TOP/SB_RDI/*/*.v
    ../../../SB_TOP/SB_RDI/*/*.sv
}

# UVM Files 
set uvm_files {
    ../../../SB_TOP/SB_MB/ANALOG_MODELLING/*.sv
    ../../../MB_Blocks/*/*.v
    ../../../../Full_UVM_Env/SB_intf.sv
    ../../../../Full_UVM_Env/MB_interface.sv
    ../../../../Full_UVM_Env/RDI_interface.sv
    ../../../../Full_UVM_Env/pack1.sv
    ../../../../Full_UVM_Env/top.sv
}



set test_names {
    "RDI_CFG_test#(1,5000)"
    "No_Pattern_test#(1)"
    "SBINIT_test"
    "parity_test"
    "mbinit_repair_reversal_mb_test#(00ff,011)"
    "mbinit_repair_reversal_mb_test#(ff00,011)"
    "Basic_RDI_Test#(1)"
    "Basic_RDI_Test#(0)"
    "RDI_L1_test#(0,0)"
    "RDI_L1_test#(0,1)"
    "RDI_L1_test#(1,0)"
    "RDI_L1_test#(1,1)"
    "RDI_L2_test#(0,0)"
    "RDI_L2_test#(0,1)"
    "RDI_L2_test#(1,0)"
    "RDI_L2_test#(1,1)"
    "Reset_Linkreset_test#(1)"
    "Reset_Linkreset_test#(0)"
    "Reset_Disable_test#(1)"
    "Reset_Disable_test#(0)"
    "Reset_Linkerror_test#(1)"
    "Reset_Linkerror_test#(0)"
    "Reset_Linkreset_Reset_Active_test#(0)"
    "Reset_Linkreset_Reset_Active_test#(1)"
    "Reset_Disable_Reset_Active_test#(0)"
    "Reset_Disable_Reset_Active_test#(1)"
    "Reset_Active_otherstate_test#(9,1)"
    "Reset_Active_otherstate_test#(12,1)"
    "Reset_Active_otherstate_test#(9,0)"
    "Reset_Active_otherstate_test#(12,0)"
    "linkspeed_done_vs_speed_degrade_test"
    "linkspeed_done_vs_repair_test"
    "linkspeed_done_vs_phyretrain_test"
    "linkspeed_repair_vs_done_test"
    "linkspeed_repair_vs_repair_test"
    "linkspeed_repair_vs_speed_degrade_test"  
    "linkspeed_repair_vs_phyretrain_test"
    "linkspeed_speed_degrade_vs_done_test"
    "linkspeed_speed_degrade_vs_repair_test"
    "linkspeed_speed_degrade_vs_phyretrain_test"
    "linkspeed_speed_degrade_vs_speed_degrade_test"
    "linkspeed_phyretrain_vs_phyretrain_test"
    "linkspeed_phyretrain_vs_done_test"
    "linkspeed_phyretrain_vs_error_test"
    "mbinit_repair_clock_done_vs_train_error_test"
    "mbinit_repair_clock_train_error_vs_done_test#(011)"
    "mbinit_repair_clock_train_error_vs_done_test#(101)"
    "mbinit_repair_clock_train_error_vs_done_test#(110)"
    "mbinit_repair_clock_train_error_vs_train_error_test#(011)"
    "mbinit_repair_clock_train_error_vs_train_error_test#(101)"
    "mbinit_repair_clock_train_error_vs_train_error_test#(110)"
    "mbinit_repair_val_done_vs_train_error_test"
    "mbinit_repair_val_train_error_vs_done_test"
    "mbinit_repair_val_train_error_vs_train_error_test"
    "mbinit_repair_mb_test#(bfff,011)"
    "mbinit_repair_mb_test#(dfff,011)"
    "mbinit_repair_mb_test#(efff,011)"
    "mbinit_repair_mb_test#(f7ff,011)"
    "mbinit_repair_mb_test#(fbff,011)"
    "mbinit_repair_mb_test#(fdff,011)"
    "mbinit_repair_mb_test#(feff,011)"
    "mbinit_repair_mb_test#(ff7f,011)"
    "mbinit_repair_mb_test#(ffbf,011)"
    "mbinit_repair_mb_test#(ffdf,011)"
    "mbinit_repair_mb_test#(ffef,011)"
    "mbinit_repair_mb_test#(fff7,011)"
    "mbinit_repair_mb_test#(fffb,011)"
    "mbinit_repair_mb_test#(fffd,011)"
    "mbinit_repair_mb_test#(fffe,011)"
    "mbinit_repair_mb_test#(ffff,001)"
    "mbinit_repair_mb_test#(ffff,010)"
    "mbinit_repair_mb_trainerror_test#(7ffe,011)"
    "mbinit_repair_mb_trainerror_test#(bffe,011)"
    "mbinit_repair_mb_trainerror_test#(dffe,011)"
    "mbinit_repair_mb_trainerror_test#(effe,011)"
    "mbinit_repair_mb_trainerror_test#(f7fe,011)"
    "mbinit_repair_mb_trainerror_test#(fbfe,011)"
    "mbinit_repair_mb_trainerror_test#(fdfe,011)"
    "mbinit_repair_mb_trainerror_test#(fefe,011)"
    "mbinit_repair_mb_trainerror_test#(ef7f,010)"
    "mbinit_repair_mb_trainerror_test#(efbf,010)"
    "mbinit_repair_mb_trainerror_test#(efdf,010)"
    "mbinit_repair_mb_trainerror_test#(efef,010)"
    "mbinit_repair_mb_trainerror_test#(eff7,011)"
    "mbinit_repair_mb_trainerror_test#(effb,011)"
    "mbinit_repair_mb_trainerror_test#(effd,011)"
    "mbinit_repair_mb_trainerror_test#(effe,011)"
    "mbinit_repair_mb_trainerror_test#(ffff,000)"
    "mbinit_repair_mb_trainerror_test#(efff,000)"
    "mbinit_reversal_mb_done_vs_clear_error_test"
    "mbinit_reversal_mb_clear_error_vs_done_test#(00ff)"
    "mbinit_reversal_mb_test#(00ff)"
    "mbinit_reversal_mb_test#(ff00)"
    "mbinit_reversal_mb_test#(0f0f)"
    "mbinit_reversal_mb_test#(f0f0)"
    "mbinit_reversal_mb_test#(cccc)"
    "mbinit_reversal_mb_test#(3333)"
    "mbinit_reversal_mb_test#(aaaa)"
    "mbinit_reversal_mb_test#(5555)"
    "mbinit_reversal_mb_test#(000f)"
    "mbinit_reversal_mb_done_vs_train_error_test"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(00ff,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(ff00,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(0f0f,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(f0f0,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(cccc,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(3333,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(aaaa,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(5555,ffff)"
    "mbinit_reversal_mb_clear_error_vs_train_error_test#(000f,ffff)"
    "mbinit_reversal_mb_train_error_vs_done_test#(00ff,00ff)"
    "mbinit_reversal_mb_train_error_vs_clear_error_test#(00ff,00ff)"
    "mbinit_reversal_mb_train_error_test#(00ff,00ff)"
    "mbinit_reversal_mb_train_error_test#(ff00,00ff)"
    "mbinit_reversal_mb_train_error_test#(0f0f,00ff)"
    "mbinit_reversal_mb_train_error_test#(f0f0,00ff)"
    "mbinit_reversal_mb_train_error_test#(cccc,00ff)"
    "mbinit_reversal_mb_train_error_test#(3333,00ff)"
    "mbinit_reversal_mb_train_error_test#(aaaa,00ff)"
    "mbinit_reversal_mb_train_error_test#(5555,00ff)"
    "mbinit_reversal_mb_train_error_test#(000f,00ff)"
}
    # "RDI_CFG_test#(1,5000)"
    # "No_Pattern_test#(1)"
    # "SBINIT_test"
    # "parity_test"
    # "mbinit_repair_reversal_mb_test#(00ff,011)"
    # "mbinit_repair_reversal_mb_test#(ff00,011)"
    # "Basic_RDI_Test#(1)"
    # "Basic_RDI_Test#(0)"
    # "RDI_L1_test#(0,0)"
    # "RDI_L1_test#(0,1)"
    # "RDI_L1_test#(1,0)"
    # "RDI_L1_test#(1,1)"
    # "RDI_L2_test#(0,0)"
    # "RDI_L2_test#(0,1)"
    # "RDI_L2_test#(1,0)"
    # "RDI_L2_test#(1,1)"
    # "Reset_Linkreset_test#(1)"
    # "Reset_Linkreset_test#(0)"
    # "Reset_Disable_test#(1)"
    # "Reset_Disable_test#(0)"
    # "Reset_Linkerror_test#(1)"
    # "Reset_Linkerror_test#(0)"
    # "Reset_Linkreset_Reset_Active_test#(0)"
    # "Reset_Linkreset_Reset_Active_test#(1)"
    # "Reset_Disable_Reset_Active_test#(0)"
    # "Reset_Disable_Reset_Active_test#(1)"
    # "Reset_Active_otherstate_test#(9,1)"
    # "Reset_Active_otherstate_test#(12,1)"
    # "Reset_Active_otherstate_test#(9,0)"
    # "Reset_Active_otherstate_test#(12,0)"
    # "linkspeed_done_vs_speed_degrade_test"
    # "linkspeed_done_vs_repair_test"
    # "linkspeed_done_vs_phyretrain_test"
    # "linkspeed_repair_vs_done_test"
    # "linkspeed_repair_vs_repair_test"
    # "linkspeed_repair_vs_speed_degrade_test"  
    # "linkspeed_repair_vs_phyretrain_test"
    # "linkspeed_speed_degrade_vs_done_test"
    # "linkspeed_speed_degrade_vs_repair_test"
    # "linkspeed_speed_degrade_vs_phyretrain_test"
    # "linkspeed_speed_degrade_vs_speed_degrade_test"
    # "linkspeed_phyretrain_vs_phyretrain_test"
    # "linkspeed_phyretrain_vs_done_test"
    # "linkspeed_phyretrain_vs_error_test"
    # "mbinit_repair_clock_done_vs_train_error_test"
    # "mbinit_repair_clock_train_error_vs_done_test#(011)"
    # "mbinit_repair_clock_train_error_vs_done_test#(101)"
    # "mbinit_repair_clock_train_error_vs_done_test#(110)"
    # "mbinit_repair_clock_train_error_vs_train_error_test#(011)"
    # "mbinit_repair_clock_train_error_vs_train_error_test#(101)"
    # "mbinit_repair_clock_train_error_vs_train_error_test#(110)"
    # "mbinit_repair_val_done_vs_train_error_test"
    # "mbinit_repair_val_train_error_vs_done_test"
    # "mbinit_repair_val_train_error_vs_train_error_test"
    # "mbinit_repair_mb_test#(bfff,011)"
    # "mbinit_repair_mb_test#(dfff,011)"
    # "mbinit_repair_mb_test#(efff,011)"
    # "mbinit_repair_mb_test#(f7ff,011)"
    # "mbinit_repair_mb_test#(fbff,011)"
    # "mbinit_repair_mb_test#(fdff,011)"
    # "mbinit_repair_mb_test#(feff,011)"
    # "mbinit_repair_mb_test#(ff7f,011)"
    # "mbinit_repair_mb_test#(ffbf,011)"
    # "mbinit_repair_mb_test#(ffdf,011)"
    # "mbinit_repair_mb_test#(ffef,011)"
    # "mbinit_repair_mb_test#(fff7,011)"
    # "mbinit_repair_mb_test#(fffb,011)"
    # "mbinit_repair_mb_test#(fffd,011)"
    # "mbinit_repair_mb_test#(fffe,011)"
    # "mbinit_repair_mb_test#(ffff,001)"
    # "mbinit_repair_mb_test#(ffff,010)"
    # "mbinit_repair_mb_trainerror_test#(7ffe,011)"
    # "mbinit_repair_mb_trainerror_test#(bffe,011)"
    # "mbinit_repair_mb_trainerror_test#(dffe,011)"
    # "mbinit_repair_mb_trainerror_test#(effe,011)"
    # "mbinit_repair_mb_trainerror_test#(f7fe,011)"
    # "mbinit_repair_mb_trainerror_test#(fbfe,011)"
    # "mbinit_repair_mb_trainerror_test#(fdfe,011)"
    # "mbinit_repair_mb_trainerror_test#(fefe,011)"
    # "mbinit_repair_mb_trainerror_test#(ef7f,010)"
    # "mbinit_repair_mb_trainerror_test#(efbf,010)"
    # "mbinit_repair_mb_trainerror_test#(efdf,010)"
    # "mbinit_repair_mb_trainerror_test#(efef,010)"
    # "mbinit_repair_mb_trainerror_test#(eff7,011)"
    # "mbinit_repair_mb_trainerror_test#(effb,011)"
    # "mbinit_repair_mb_trainerror_test#(effd,011)"
    # "mbinit_repair_mb_trainerror_test#(effe,011)"
    # "mbinit_repair_mb_trainerror_test#(ffff,000)"
    # "mbinit_repair_mb_trainerror_test#(efff,000)"
    # "mbinit_reversal_mb_done_vs_clear_error_test"
    # "mbinit_reversal_mb_clear_error_vs_done_test#(00ff)"
    # "mbinit_reversal_mb_test#(00ff)"
    # "mbinit_reversal_mb_test#(ff00)"
    # "mbinit_reversal_mb_test#(0f0f)"
    # "mbinit_reversal_mb_test#(f0f0)"
    # "mbinit_reversal_mb_test#(cccc)"
    # "mbinit_reversal_mb_test#(3333)"
    # "mbinit_reversal_mb_test#(aaaa)"
    # "mbinit_reversal_mb_test#(5555)"
    # "mbinit_reversal_mb_test#(000f)"
    # "mbinit_reversal_mb_done_vs_train_error_test"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(00ff,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(ff00,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(0f0f,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(f0f0,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(cccc,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(3333,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(aaaa,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(5555,ffff)"
    # "mbinit_reversal_mb_clear_error_vs_train_error_test#(000f,ffff)"
    # "mbinit_reversal_mb_train_error_vs_done_test#(00ff,00ff)"
    # "mbinit_reversal_mb_train_error_vs_clear_error_test#(00ff,00ff)"
    # "mbinit_reversal_mb_train_error_test#(00ff,00ff)"
    # "mbinit_reversal_mb_train_error_test#(ff00,00ff)"
    # "mbinit_reversal_mb_train_error_test#(0f0f,00ff)"
    # "mbinit_reversal_mb_train_error_test#(f0f0,00ff)"
    # "mbinit_reversal_mb_train_error_test#(cccc,00ff)"
    # "mbinit_reversal_mb_train_error_test#(3333,00ff)"
    # "mbinit_reversal_mb_train_error_test#(aaaa,00ff)"
    # "mbinit_reversal_mb_train_error_test#(5555,00ff)"
    # "mbinit_reversal_mb_train_error_test#(000f,00ff)"
foreach file $uvm_files {
    vlog $file
}
# Compilation commands
foreach file $design_files {
    vlog $file +cover -covercells
}


# Create Output Directories
foreach dir {log_files coverage_files merged_coverage waveforms} {
    file mkdir $dir
}

# Extract UVM Report Summary from log files
proc extract_uvm_summaries {} {
    set bugs_file [open "log_files/tests_bugs.txt" w]
    puts $bugs_file "UVM Report Summaries for All Tests\n"
    puts $bugs_file "============================================\n"
    
    foreach logfile [glob -nocomplain log_files/*.log] {
        # Extract test name from filename
        set test_name [file rootname [file tail $logfile]]
        
        # Find and extract the UVM Report Summary section
        set log_content [read [open $logfile r]]
        set start_idx [string first "# --- UVM Report Summary ---" $log_content]
        set end_idx [string first "# ** Report counts by id" $log_content]

        if {$start_idx != -1} {
            if {$end_idx == -1} {
                set end_idx [string length $log_content]
            }
            
            set summary [string range $log_content $start_idx [expr {$end_idx - 1}]]
            
            # Write to bugs file
            puts $bugs_file "Test: $test_name"
            puts $bugs_file $summary
            puts $bugs_file "\n--------------------------------------------\n"
        } else {
            puts $bugs_file "Test: $test_name - No UVM Report Summary found"
            puts $bugs_file "\n--------------------------------------------\n"
        }
    }
    
    close $bugs_file
    echo "UVM Report Summaries extracted to tests_bugs.txt"
}

# Test Run
proc run_test {test_name} {
    echo "\n=== Starting Test: $test_name ==="
    set start_time [clock seconds]
    
    # Run simulation with coverage
    vsim -coverage -do exclude.tcl -voptargs="+acc" -onfinish stop -cover \
         +UVM_TESTNAME=$test_name work.top \
         +UVM_VERBOSITY=UVM_MEDIUM \
         -l "log_files/${test_name}.log" \
         -wlf "waveforms/${test_name}.wlf" \

    
    # Setup and run
    do wave.do
    run -all
    
    # Save results
    coverage save coverage_files/${test_name}.ucdb
    dataset save "waveforms/${test_name}.wlf"
    quit -sim -f
}

# Main Execution Loop
set failed_tests 0

foreach test $test_names {
    if {[catch {run_test $test} error]} {
        echo "ERROR in $test: $error"
    }
    after 1000  ;
}

# Coverage Merging and Reporting
set coverage_files [glob -nocomplain coverage_files/*.ucdb]

if {[llength $coverage_files] > 0} {
    set merged_file "merged_coverage/all_tests_merged.ucdb"
    
    # 1. Merge all coverage files
    if {[catch {
        exec vcover merge $merged_file {*}$coverage_files
        echo "Successfully merged coverage data to: $merged_file"
    } error]} {
        echo "ERROR merging coverage: $error"
        exit 1
    }
    
    # 2. Generate detailed coverage report
    set detailed_report "merged_coverage/detailed_coverage_report.txt"
    if {[catch {
        exec vcover report -details -all $merged_file > $detailed_report
        echo "Generated detailed coverage report: $detailed_report"
    } error]} {
        echo "ERROR generating detailed report: $error"
    }
    
    # Generate summary report 
    set summary_report "merged_coverage/coverage_summary.txt"
    if {[catch {
        exec vcover report -summary $merged_file > $summary_report
        echo "Generated coverage summary: $summary_report"
    } error]} {
        echo "ERROR generating summary report: $error"
    }
    
} else {
    echo "WARNING: No coverage files found to merge"
}

# Final summary
extract_uvm_summaries
set total_tests [llength $test_names]
set passed_tests [expr {$total_tests - $failed_tests}]

echo "\n\n============================================"
echo "TEST SUITE SUMMARY"
echo "============================================"
echo "Tests run:     $total_tests"
echo "Tests passed:  $passed_tests"
echo "Tests failed:  $failed_tests"
echo "Coverage data: merged_coverage/all_tests_merged.ucdb"
echo "============================================"