// Auto-generated. Do not edit!

// (in-package hall_sensor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Whls_vel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fl = null;
      this.fr = null;
      this.rl = null;
      this.rr = null;
    }
    else {
      if (initObj.hasOwnProperty('fl')) {
        this.fl = initObj.fl
      }
      else {
        this.fl = 0.0;
      }
      if (initObj.hasOwnProperty('fr')) {
        this.fr = initObj.fr
      }
      else {
        this.fr = 0.0;
      }
      if (initObj.hasOwnProperty('rl')) {
        this.rl = initObj.rl
      }
      else {
        this.rl = 0.0;
      }
      if (initObj.hasOwnProperty('rr')) {
        this.rr = initObj.rr
      }
      else {
        this.rr = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Whls_vel
    // Serialize message field [fl]
    bufferOffset = _serializer.float32(obj.fl, buffer, bufferOffset);
    // Serialize message field [fr]
    bufferOffset = _serializer.float32(obj.fr, buffer, bufferOffset);
    // Serialize message field [rl]
    bufferOffset = _serializer.float32(obj.rl, buffer, bufferOffset);
    // Serialize message field [rr]
    bufferOffset = _serializer.float32(obj.rr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Whls_vel
    let len;
    let data = new Whls_vel(null);
    // Deserialize message field [fl]
    data.fl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fr]
    data.fr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rl]
    data.rl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rr]
    data.rr = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hall_sensor/Whls_vel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '291d0a1bb554e9cecb818a219ca75ef0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 fl
    float32 fr
    float32 rl
    float32 rr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Whls_vel(null);
    if (msg.fl !== undefined) {
      resolved.fl = msg.fl;
    }
    else {
      resolved.fl = 0.0
    }

    if (msg.fr !== undefined) {
      resolved.fr = msg.fr;
    }
    else {
      resolved.fr = 0.0
    }

    if (msg.rl !== undefined) {
      resolved.rl = msg.rl;
    }
    else {
      resolved.rl = 0.0
    }

    if (msg.rr !== undefined) {
      resolved.rr = msg.rr;
    }
    else {
      resolved.rr = 0.0
    }

    return resolved;
    }
};

module.exports = Whls_vel;
