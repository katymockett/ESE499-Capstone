# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_gps_pub/gps.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class gps(genpy.Message):
  _md5sum = "240f581cba0734ba766965d88f37634c"
  _type = "ros_gps_pub/gps"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings

float32 latitude1
float32 latitude2
float32 longitude1
float32 longitude2
float32 sog1
float32 sog2
"""
  __slots__ = ['latitude1','latitude2','longitude1','longitude2','sog1','sog2']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       latitude1,latitude2,longitude1,longitude2,sog1,sog2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(gps, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.latitude1 is None:
        self.latitude1 = 0.
      if self.latitude2 is None:
        self.latitude2 = 0.
      if self.longitude1 is None:
        self.longitude1 = 0.
      if self.longitude2 is None:
        self.longitude2 = 0.
      if self.sog1 is None:
        self.sog1 = 0.
      if self.sog2 is None:
        self.sog2 = 0.
    else:
      self.latitude1 = 0.
      self.latitude2 = 0.
      self.longitude1 = 0.
      self.longitude2 = 0.
      self.sog1 = 0.
      self.sog2 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.latitude1, _x.latitude2, _x.longitude1, _x.longitude2, _x.sog1, _x.sog2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.latitude1, _x.latitude2, _x.longitude1, _x.longitude2, _x.sog1, _x.sog2,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.latitude1, _x.latitude2, _x.longitude1, _x.longitude2, _x.sog1, _x.sog2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.latitude1, _x.latitude2, _x.longitude1, _x.longitude2, _x.sog1, _x.sog2,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
