# Frontiers 2024 replication package

This repository contains the replication package for manuscript 1363281 submitted to the Frontiers journal in the Robotics Software Engineering topic. 

The FloorPlan DSL models used in this paper can be transformed into simulation-ready sceneries with the [FloorPlan DSL](https://github.com/secorolab/FloorPlan-DSL) tools. 
These include [Gazebo worlds](/worlds/), [Gazebo models and 3D meshes](/models/) and [occupancy grid maps](/maps/).

The tasks used for the scenarios are specified [here](/tasks/). They are dispatched by a component that publishes the move_base goals one by one, available [here](https://github.com/secorolab/waypoint_dispatcher).

The gazebo plugins for the dynamic scenery objects are available [here](https://github.com/secorolab/dynamic-gazebo-plugins).

## Scenarios

The artefacts generated by the FloorPlan DSL tools for each scenario are as follows:

| Scenario ID | World | Map | Task |
|----|----|----|----|
| Scenario 1 | brsu_building_c_static | brsu_building_c_static | left_long_corridor_task |
| Scenario 2 | brsu_building_c_dynamic | brsu_building_c_static | left_long_corridor_task | 
| Scenario 3.1 | brsu_building_c_adversarial_events | brsu_building_c_dynamic | task_1 |
| Scenario 3.2 | brsu_building_c_adversarial_events | brsu_building_c_dynamic | task_2 |
| Scenario 3.3 | brsu_building_c_adversarial_events | brsu_building_c_dynamic | task_3 |
| Scenario 3.4 | brsu_building_c_adversarial_events | brsu_building_c_dynamic | task_4 |
| Scenario 3.5 | frontiers_brsu_building_c_no_adversarial | brsu_building_c_dynamic | task_2 |
| Scenario 3.6 | frontiers_brsu_building_c_no_adversarial | brsu_building_c_dynamic | task_4 |

## System Under Test (SUT)

The experiments were conducted using ROS1 noetic for the KELO Robile. In addition to this repository, the following packages are needed: 

- [robile_navigation](https://github.com/secorolab/robile_navigation)
- [robile_gazebo](https://github.com/secorolab/robile_gazebo/tree/frontiers/main) (Note the use of the `frontiers/main` branch).
- [robile_description](https://github.com/secorolab/robile_description)

The three configurations used in Scenarios 3.1-3.6 correspond to the following branches in the `robile_navigation` package:

| Config | branch |
|---|---|
| `a2s` | noetic | 
| `fro-omni` | frontiers/omni-config | 
| `fro-diff` | frontiers/diff-config | 

## Running the experiments

After cloning this replication package and the SUT software to a catkin workspace, the [script experiments.bash](/experiments.bash) can be used to run a set of 5 runs per scenario.
