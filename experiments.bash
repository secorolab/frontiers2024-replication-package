#!/bin/bash

SCENARIO_CONFIG="fro"

# Scenario 1
for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario1 environment_name:=icra_brsu_building_c_level_2 init_pos_x:=0.0 init_pos_y:=0.0 route_file:=left_long_corridor_task map_name:=icra_brsu_building_c_level_2_map robot_config:=$SCENARIO_CONFIG; done

# Scenario 2
for i in {1..5}; do roslaunch --log  floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario2 environment_name:=icra_brsu_building_c_level_3b init_pos_x:=0.0 init_pos_y:=0.0 route_file:=left_long_corridor_task map_name:=icra_brsu_building_c_level_2_map robot_config:=$SCENARIO_CONFIG; done

# Scenario 3
for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario3.1 environment_name:=frontiers_brsu_building_c_adversarial route_file:=task_1 map_name:=frontiers_brsu_building_c robot_config:=$SCENARIO_CONFIG; done

for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario3.2 environment_name:=frontiers_brsu_building_c_adversarial route_file:=task_2 map_name:=frontiers_brsu_building_c robot_config:=$SCENARIO_CONFIG; done

for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario3.3 environment_name:=frontiers_brsu_building_c_adversarial route_file:=task_3 map_name:=frontiers_brsu_building_c robot_config:=$SCENARIO_CONFIG; done

for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario3.4 environment_name:=frontiers_brsu_building_c_adversarial route_file:=task_4 map_name:=frontiers_brsu_building_c robot_config:=$SCENARIO_CONFIG; done

## Scenario 3 non-adversarial runs
for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario3.5 environment_name:=frontiers_brsu_building_c_no_adversarial route_file:=task_2 map_name:=frontiers_brsu_building_c robot_config:=$SCENARIO_CONFIG; done

for i in {1..5}; do roslaunch --log floorplan-dsl-environments frontiers_scenarios.launch scenario:=scenario3.6 environment_name:=frontiers_brsu_building_c_no_adversarial route_file:=task_4 map_name:=frontiers_brsu_building_c robot_config:=$SCENARIO_CONFIG; done
