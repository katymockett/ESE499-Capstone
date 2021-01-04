// Auto-generated. Do not edit!

// (in-package ros_gps_pub.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude1 = null;
      this.latitude2 = null;
      this.longitude1 = null;
      this.longitude2 = null;
      this.sog1 = null;
      this.sog2 = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude1')) {
        this.latitude1 = initObj.latitude1
      }
      else {
        this.latitude1 = 0.0;
      }
      if (initObj.hasOwnProperty('latitude2')) {
        this.latitude2 = initObj.latitude2
      }
      else {
        this.latitude2 = 0.0;
      }
      if (initObj.hasOwnProperty('longitude1')) {
        this.longitude1 = initObj.longitude1
      }
      else {
        this.longitude1 = 0.0;
      }
      if (initObj.hasOwnProperty('longitude2')) {
        this.longitude2 = initObj.longitude2
      }
      else {
        this.longitude2 = 0.0;
      }
      if (initObj.hasOwnProperty('sog1')) {
        this.sog1 = initObj.sog1
      }
      else {
        this.sog1 = 0.0;
      }
      if (initObj.hasOwnProperty('sog2')) {
        this.sog2 = initObj.sog2
      }
      else {
        this.sog2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps
    // Serialize message field [latitude1]
    bufferOffset = _serializer.float32(obj.latitude1, buffer, bufferOffset);
    // Serialize message field [latitude2]
    bufferOffset = _serializer.float32(obj.latitude2, buffer, bufferOffset);
    // Serialize message field [longitude1]
    bufferOffset = _serializer.float32(obj.longitude1, buffer, bufferOffset);
    // Serialize message field [longitude2]
    bufferOffset = _serializer.float32(obj.longitude2, buffer, bufferOffset);
    // Serialize message field [sog1]
    bufferOffset = _serializer.float32(obj.sog1, buffer, bufferOffset);
    // Serialize message field [sog2]
    bufferOffset = _serializer.float32(obj.sog2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps
    let len;
    let data = new gps(null);
    // Deserialize message field [latitude1]
    data.latitude1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [latitude2]
    data.latitude2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude1]
    data.longitude1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude2]
    data.longitude2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sog1]
    data.sog1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sog2]
    data.sog2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_gps_pub/gps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '240f581cba0734ba766965d88f37634c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings
    
    float32 latitude1
    float32 latitude2
    float32 longitude1
    float32 longitude2
    float32 sog1
    float32 sog2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gps(null);
    if (msg.latitude1 !== undefined) {
      resolved.latitude1 = msg.latitude1;
    }
    else {
      resolved.latitude1 = 0.0
    }

    if (msg.latitude2 !== undefined) {
      resolved.latitude2 = msg.latitude2;
    }
    else {
      resolved.latitude2 = 0.0
    }

    if (msg.longitude1 !== undefined) {
      resolved.longitude1 = msg.longitude1;
    }
    else {
      resolved.longitude1 = 0.0
    }

    if (msg.longitude2 !== undefined) {
      resolved.longitude2 = msg.longitude2;
    }
    else {
      resolved.longitude2 = 0.0
    }

    if (msg.sog1 !== undefined) {
      resolved.sog1 = msg.sog1;
    }
    else {
      resolved.sog1 = 0.0
    }

    if (msg.sog2 !== undefined) {
      resolved.sog2 = msg.sog2;
    }
    else {
      resolved.sog2 = 0.0
    }

    return resolved;
    }
};

module.exports = gps;
