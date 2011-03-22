"""autogenerated by genmsg_py from ActuatorCommand.msg. Do not edit."""
import roslib.message
import struct

import geometry_msgs.msg

class ActuatorCommand(roslib.message.Message):
  _md5sum = "df4087748bcf3e3c6af91932c8b968e6"
  _type = "ssl_msgs/ActuatorCommand"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 wheel_1
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
  __slots__ = ['wheel_1','wheel_2','wheel_3','wheel_4','pose','velocity_mag','velocity_ang','dribbler','kicker','chip_kicker']
  _slot_types = ['float32','float32','float32','float32','geometry_msgs/Pose2D','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       wheel_1,wheel_2,wheel_3,wheel_4,pose,velocity_mag,velocity_ang,dribbler,kicker,chip_kicker
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(ActuatorCommand, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.wheel_1 is None:
        self.wheel_1 = 0.
      if self.wheel_2 is None:
        self.wheel_2 = 0.
      if self.wheel_3 is None:
        self.wheel_3 = 0.
      if self.wheel_4 is None:
        self.wheel_4 = 0.
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      if self.velocity_mag is None:
        self.velocity_mag = 0.
      if self.velocity_ang is None:
        self.velocity_ang = 0.
      if self.dribbler is None:
        self.dribbler = 0.
      if self.kicker is None:
        self.kicker = 0.
      if self.chip_kicker is None:
        self.chip_kicker = 0.
    else:
      self.wheel_1 = 0.
      self.wheel_2 = 0.
      self.wheel_3 = 0.
      self.wheel_4 = 0.
      self.pose = geometry_msgs.msg.Pose2D()
      self.velocity_mag = 0.
      self.velocity_ang = 0.
      self.dribbler = 0.
      self.kicker = 0.
      self.chip_kicker = 0.

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
      _x = self
      buff.write(_struct_4f3d5f.pack(_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4, _x.pose.x, _x.pose.y, _x.pose.theta, _x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker))
    except struct.error, se: self._check_types(se)
    except TypeError, te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 60
      (_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4, _x.pose.x, _x.pose.y, _x.pose.theta, _x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker,) = _struct_4f3d5f.unpack(str[start:end])
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
      _x = self
      buff.write(_struct_4f3d5f.pack(_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4, _x.pose.x, _x.pose.y, _x.pose.theta, _x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker))
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
      if self.pose is None:
        self.pose = geometry_msgs.msg.Pose2D()
      end = 0
      _x = self
      start = end
      end += 60
      (_x.wheel_1, _x.wheel_2, _x.wheel_3, _x.wheel_4, _x.pose.x, _x.pose.y, _x.pose.theta, _x.velocity_mag, _x.velocity_ang, _x.dribbler, _x.kicker, _x.chip_kicker,) = _struct_4f3d5f.unpack(str[start:end])
      return self
    except struct.error, e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_4f3d5f = struct.Struct("<4f3d5f")
