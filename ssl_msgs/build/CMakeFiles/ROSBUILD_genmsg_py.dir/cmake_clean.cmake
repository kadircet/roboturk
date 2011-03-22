FILE(REMOVE_RECURSE
  "../src/ssl_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/ssl_msgs/msg/__init__.py"
  "../src/ssl_msgs/msg/_ActuatorCommand.py"
  "../src/ssl_msgs/msg/_BallState.py"
  "../src/ssl_msgs/msg/_GameState.py"
  "../src/ssl_msgs/msg/_GlobalRobotState.py"
  "../src/ssl_msgs/msg/_GlobalState.py"
  "../src/ssl_msgs/msg/_LocalRobotState.py"
  "../src/ssl_msgs/msg/_LocalState.py"
  "../src/ssl_msgs/msg/_MotorCommand.py"
  "../src/ssl_msgs/msg/_RobotCommand.py"
  "../src/ssl_msgs/msg/_TeamCommand.py"
  "../src/ssl_msgs/msg/_TeamPoseCommand.py"
  "../src/ssl_msgs/msg/_Visualization.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
