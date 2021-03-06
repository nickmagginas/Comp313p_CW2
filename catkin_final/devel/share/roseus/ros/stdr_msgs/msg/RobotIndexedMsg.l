;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RobotIndexedMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RobotIndexedMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::ROBOTINDEXEDMSG")
  (make-package "STDR_MSGS::ROBOTINDEXEDMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotIndexedMsg.msg.html


(defclass stdr_msgs::RobotIndexedMsg
  :super ros::object
  :slots (_name _robot ))

(defmethod stdr_msgs::RobotIndexedMsg
  (:init
   (&key
    ((:name __name) "")
    ((:robot __robot) (instance stdr_msgs::RobotMsg :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _robot __robot)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:robot
   (&rest __robot)
   (if (keywordp (car __robot))
       (send* _robot __robot)
     (progn
       (if __robot (setq _robot (car __robot)))
       _robot)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; stdr_msgs/RobotMsg _robot
    (send _robot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; stdr_msgs/RobotMsg _robot
       (send _robot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; stdr_msgs/RobotMsg _robot
     (send _robot :deserialize buf ptr-) (incf ptr- (send _robot :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::RobotIndexedMsg :md5sum-) "f74cd2b918be4e39c8fb0e1bebbbf480")
(setf (get stdr_msgs::RobotIndexedMsg :datatype-) "stdr_msgs/RobotIndexedMsg")
(setf (get stdr_msgs::RobotIndexedMsg :definition-)
      "string name
stdr_msgs/RobotMsg robot

================================================================================
MSG: stdr_msgs/RobotMsg
geometry_msgs/Pose2D initialPose

stdr_msgs/FootprintMsg footprint

stdr_msgs/LaserSensorMsg[] laserSensors
stdr_msgs/SonarSensorMsg[] sonarSensors
stdr_msgs/RfidSensorMsg[] rfidSensors
stdr_msgs/CO2SensorMsg[] co2Sensors
stdr_msgs/SoundSensorMsg[] soundSensors
stdr_msgs/ThermalSensorMsg[] thermalSensors

stdr_msgs/KinematicMsg kinematicModel

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
================================================================================
MSG: stdr_msgs/FootprintMsg
geometry_msgs/Point[] points
float32 radius # for circular footprints

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: stdr_msgs/LaserSensorMsg
# Laser Sensor description
float32 maxAngle
float32 minAngle
float32 maxRange
float32 minRange
int32 numRays

stdr_msgs/Noise noise

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/Noise
bool noise
float32 noiseMean
float32 noiseStd

================================================================================
MSG: stdr_msgs/SonarSensorMsg
# Rfid sensor description
float32 maxRange
float32 minRange
float32 coneAngle

float32 frequency
stdr_msgs/Noise noise

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/RfidSensorMsg
# Rfid sensor description
float32 maxRange
float32 angleSpan
float32 signalCutoff

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: stdr_msgs/CO2SensorMsg
# Sensor description

float32 maxRange
float32 frequency
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/SoundSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/ThermalSensorMsg
# Sensor description

float32 maxRange
float32 frequency
float32 angleSpan
string frame_id

# sensor pose, relative to robot center
geometry_msgs/Pose2D pose 

================================================================================
MSG: stdr_msgs/KinematicMsg
# Container for the kinematic model parameters. The parameters selected/
# are quite general. For a more accurate motion model a per-kinematic model
# approach should be followed.
# Parameters are in the form a_C_D, where C is affected by D.
# ux is the linear speed
# uy is the lateral speed (for omni vehicles)
# w is the angular speed
# g is a cofficient that directly affects the angular speed
# For more information check the MotionController::sampleVelocities function.

string type
float32 a_ux_ux
float32 a_ux_uy
float32 a_ux_w
float32 a_uy_ux
float32 a_uy_uy
float32 a_uy_w
float32 a_w_ux
float32 a_w_uy
float32 a_w_w
float32 a_g_ux
float32 a_g_uy
float32 a_g_w

")



(provide :stdr_msgs/RobotIndexedMsg "f74cd2b918be4e39c8fb0e1bebbbf480")


