// Auto-generated. Do not edit!

// (in-package ros_linetracking_pub.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class linetracking_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.readings = null;
    }
    else {
      if (initObj.hasOwnProperty('readings')) {
        this.readings = initObj.readings
      }
      else {
        this.readings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type linetracking_data
    // Serialize message field [readings]
    bufferOffset = _arraySerializer.float32(obj.readings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type linetracking_data
    let len;
    let data = new linetracking_data(null);
    // Deserialize message field [readings]
    data.readings = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.readings.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_linetracking_pub/linetracking_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '790f38aeabddcc73abb1ebbc6fb37849';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # line tracking data is float array with five elements
    
    float32[] readings
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new linetracking_data(null);
    if (msg.readings !== undefined) {
      resolved.readings = msg.readings;
    }
    else {
      resolved.readings = []
    }

    return resolved;
    }
};

module.exports = linetracking_data;
