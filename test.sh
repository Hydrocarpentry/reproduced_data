## This file contains the list with all scripts##
######test.sh#############################
#!/bin/bash
python /prepare_flood_events_table.py 
python /make_dly_obs_table_standalone.py
python /by_event_for_model.py
