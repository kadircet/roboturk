"""autogenerated by genmsg_py from MotorCommand.msg. Do not edit."""
import roslib.message
import struct

import geometry_msgs.msg
import ssl_msgs.msg

class MotorCommand(roslib.message.Message):
  _md5sum = "54fd221359831e05f3534ba7359a0f7e"
  _type = "ssl_msgs/MotorCommand"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """ssl_msgs/ActuatorCommand[] robot #each ActuatorCommand contains motor/kicker actuation values for each robot

================================================================================
MSG: ssl_msgs/ActuatorCommand
float32 wheel_1
float32 wheel_2
float32 wheel_3
float32 wheel_4
geometry_msgs/Pose2D pose#temporary
float32 velocity_mag #temporary
float32 velocity_ang #temporary (w.r.t robot!)
float32 dribbler
float32 kicker
float32 chip_kicker

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
"""
  __slots__ = ['robot']
  _slot_types = ['ssl_msgs/ActuatorCommand[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       robot
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(MotorCommand, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.robot is None:
        self.robot = []
    else:
      self.robot = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      length = len(self.robot)
      buff.write(_struct_I.pack(length))
      for val1 in self.robot:
        _x = val1
        buff.write(_struct_4f.pack(_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4))
        _v1 = val1.pose
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
        _x = val1
        buff.write(_struct_5f.pack(_x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robot = []
      for i in xrange(0, length):
        val1 = ssl_msgs.msg.ActuatorCommand()
        _x = val1
        start = end
        end += 16
        (_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4,) = _struct_4f.unpack(str[start:end])
        _v2 = val1.pose
        _x = _v2
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        _x = val1
        start = end
        end += 20
        (_x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker,) = _struct_5f.unpack(str[start:end])
        self.robot.append(val1)
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      length = len(self.robot)
      buff.write(_struct_I.pack(length))
      for val1 in self.robot:
        _x = val1
        buff.write(_struct_4f.pack(_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4))
        _v3 = val1.pose
        _x = _v3
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.theta))
        _x = val1
        buff.write(_struct_5f.pack(_x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robot = []
      for i in xrange(0, length):
        val1 = ssl_msgs.msg.ActuatorCommand()
        _x = val1
        start = end
        end += 16
        (_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4,) = _struct_4f.unpack(str[start:end])
        _v4 = val1.pose
        _x = _v4
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _struct_3d.unpack(str[start:end])
        _x = val1
        start = end
        end += 20
        (_x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker,) = _struct_5f.unpack(str[start:end])
        self.robot.append(val1)
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_4f = struct.Struct("<4f")
_struct_5f = struct.Struct("<5f")
_struct_3d = struct.Struct("<3d")
