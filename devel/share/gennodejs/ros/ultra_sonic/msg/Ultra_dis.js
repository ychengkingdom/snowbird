// Auto-generated. Do not edit!

// (in-package ultra_sonic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Ultra_dis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fr = null;
      this.re = null;
    }
    else {
      if (initObj.hasOwnProperty('fr')) {
        this.fr = initObj.fr
      }
      else {
        this.fr = 0.0;
      }
      if (initObj.hasOwnProperty('re')) {
        this.re = initObj.re
      }
      else {
        this.re = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ultra_dis
    // Serialize message field [fr]
    bufferOffset = _serializer.float32(obj.fr, buffer, bufferOffset);
    // Serialize message field [re]
    bufferOffset = _serializer.float32(obj.re, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ultra_dis
    let len;
    let data = new Ultra_dis(null);
    // Deserialize message field [fr]
    data.fr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [re]
    data.re = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ultra_sonic/Ultra_dis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ee497f682fbf9bc21a5c9d264d23864';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 fr
    float32 re
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ultra_dis(null);
    if (msg.fr !== undefined) {
      resolved.fr = msg.fr;
    }
    else {
      resolved.fr = 0.0
    }

    if (msg.re !== undefined) {
      resolved.re = msg.re;
    }
    else {
      resolved.re = 0.0
    }

    return resolved;
    }
};

module.exports = Ultra_dis;
