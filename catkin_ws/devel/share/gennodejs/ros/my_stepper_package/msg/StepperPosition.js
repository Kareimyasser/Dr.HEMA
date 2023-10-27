// Auto-generated. Do not edit!

// (in-package my_stepper_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StepperPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_position = null;
    }
    else {
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperPosition
    // Serialize message field [target_position]
    bufferOffset = _serializer.int32(obj.target_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperPosition
    let len;
    let data = new StepperPosition(null);
    // Deserialize message field [target_position]
    data.target_position = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_stepper_package/StepperPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6a1d1aa0ffbed71ad4b001fb7a4d9c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 target_position
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepperPosition(null);
    if (msg.target_position !== undefined) {
      resolved.target_position = msg.target_position;
    }
    else {
      resolved.target_position = 0
    }

    return resolved;
    }
};

module.exports = StepperPosition;
