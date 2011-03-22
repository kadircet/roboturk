FILE(REMOVE_RECURSE
  "../src/ssl_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/ssl_msgs/ActuatorCommand.h"
  "../msg_gen/cpp/include/ssl_msgs/BallState.h"
  "../msg_gen/cpp/include/ssl_msgs/GameState.h"
  "../msg_gen/cpp/include/ssl_msgs/GlobalRobotState.h"
  "../msg_gen/cpp/include/ssl_msgs/GlobalState.h"
  "../msg_gen/cpp/include/ssl_msgs/LocalRobotState.h"
  "../msg_gen/cpp/include/ssl_msgs/LocalState.h"
  "../msg_gen/cpp/include/ssl_msgs/MotorCommand.h"
  "../msg_gen/cpp/include/ssl_msgs/RobotCommand.h"
  "../msg_gen/cpp/include/ssl_msgs/TeamCommand.h"
  "../msg_gen/cpp/include/ssl_msgs/TeamPoseCommand.h"
  "../msg_gen/cpp/include/ssl_msgs/Visualization.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
