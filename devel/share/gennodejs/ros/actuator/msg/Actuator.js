// Auto-generated. Do not edit!

// (in-package actuator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Actuator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strDirec = null;
      this.strAng = null;
      this.accDire = null;
      this.accVal = null;
    }
    else {
      if (initObj.hasOwnProperty('strDirec')) {
        this.strDirec = initObj.strDirec
      }
      else {
        this.strDirec = 0;
      }
      if (initObj.hasOwnProperty('strAng')) {
        this.strAng = initObj.strAng
      }
      else {
        this.strAng = 0;
      }
      if (initObj.hasOwnProperty('accDire')) {
        this.accDire = initObj.accDire
      }
      else {
        this.accDire = 0;
      }
      if (initObj.hasOwnProperty('accVal')) {
        this.accVal = initObj.accVal
      }
      else {
        this.accVal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Actuator
    // Serialize message field [strDirec]
    bufferOffset = _serializer.uint8(obj.strDirec, buffer, bufferOffset);
    // Serialize message field [strAng]
    bufferOffset = _serializer.uint8(obj.strAng, buffer, bufferOffset);
    // Serialize message field [accDire]
    bufferOffset = _serializer.uint8(obj.accDire, buffer, bufferOffset);
    // Serialize message field [accVal]
    bufferOffset = _serializer.uint8(obj.accVal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Actuator
    let len;
    let data = new Actuator(null);
    // Deserialize message field [strDirec]
    data.strDirec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [strAng]
    data.strAng = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accDire]
    data.accDire = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accVal]
    data.accVal = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'actuator/Actuator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a5f96192a9e0f688db79bb649c89f55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 strDirec
    uint8 strAng
    uint8 accDire
    uint8 accVal
    
    uint8 left = 0
    uint8 right = 1
    uint8 back = 0
    uint8 forward = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Actuator(null);
    if (msg.strDirec !== undefined) {
      resolved.strDirec = msg.strDirec;
    }
    else {
      resolved.strDirec = 0
    }

    if (msg.strAng !== undefined) {
      resolved.strAng = msg.strAng;
    }
    else {
      resolved.strAng = 0
    }

    if (msg.accDire !== undefined) {
      resolved.accDire = msg.accDire;
    }
    else {
      resolved.accDire = 0
    }

    if (msg.accVal !== undefined) {
      resolved.accVal = msg.accVal;
    }
    else {
      resolved.accVal = 0
    }

    return resolved;
    }
};

// Constants for message
Actuator.Constants = {
  LEFT: 0,
  RIGHT: 1,
  BACK: 0,
  FORWARD: 1,
}

module.exports = Actuator;
