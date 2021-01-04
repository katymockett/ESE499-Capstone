// Auto-generated. Do not edit!

// (in-package imu_pub.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class imu_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heading = null;
      this.roll = null;
      this.pitch = null;
      this.lin_x = null;
      this.lin_y = null;
      this.lin_z = null;
    }
    else {
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('lin_x')) {
        this.lin_x = initObj.lin_x
      }
      else {
        this.lin_x = 0.0;
      }
      if (initObj.hasOwnProperty('lin_y')) {
        this.lin_y = initObj.lin_y
      }
      else {
        this.lin_y = 0.0;
      }
      if (initObj.hasOwnProperty('lin_z')) {
        this.lin_z = initObj.lin_z
      }
      else {
        this.lin_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imu_data
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [lin_x]
    bufferOffset = _serializer.float32(obj.lin_x, buffer, bufferOffset);
    // Serialize message field [lin_y]
    bufferOffset = _serializer.float32(obj.lin_y, buffer, bufferOffset);
    // Serialize message field [lin_z]
    bufferOffset = _serializer.float32(obj.lin_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imu_data
    let len;
    let data = new imu_data(null);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lin_x]
    data.lin_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lin_y]
    data.lin_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lin_z]
    data.lin_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imu_pub/imu_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1347b952cec5150e8281187595637f91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GPS data includes two latitude readings, two longitude readings, and two sspeed over ground readings
    
    float32 heading
    float32 roll
    float32 pitch
    float32 lin_x
    float32 lin_y
    float32 lin_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imu_data(null);
    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.lin_x !== undefined) {
      resolved.lin_x = msg.lin_x;
    }
    else {
      resolved.lin_x = 0.0
    }

    if (msg.lin_y !== undefined) {
      resolved.lin_y = msg.lin_y;
    }
    else {
      resolved.lin_y = 0.0
    }

    if (msg.lin_z !== undefined) {
      resolved.lin_z = msg.lin_z;
    }
    else {
      resolved.lin_z = 0.0
    }

    return resolved;
    }
};

module.exports = imu_data;
