;; Auto-generated. Do not edit!


(when (boundp 'stdr_msgs::RfidSensorMsg)
  (if (not (find-package "STDR_MSGS"))
    (make-package "STDR_MSGS"))
  (shadow 'RfidSensorMsg (find-package "STDR_MSGS")))
(unless (find-package "STDR_MSGS::RFIDSENSORMSG")
  (make-package "STDR_MSGS::RFIDSENSORMSG"))

(in-package "ROS")
;;//! \htmlinclude RfidSensorMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass stdr_msgs::RfidSensorMsg
  :super ros::object
  :slots (_maxRange _angleSpan _signalCutoff _frequency _frame_id _pose ))

(defmethod stdr_msgs::RfidSensorMsg
  (:init
   (&key
    ((:maxRange __maxRange) 0.0)
    ((:angleSpan __angleSpan) 0.0)
    ((:signalCutoff __signalCutoff) 0.0)
    ((:frequency __frequency) 0.0)
    ((:frame_id __frame_id) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _maxRange (float __maxRange))
   (setq _angleSpan (float __angleSpan))
   (setq _signalCutoff (float __signalCutoff))
   (setq _frequency (float __frequency))
   (setq _frame_id (string __frame_id))
   (setq _pose __pose)
   self)
  (:maxRange
   (&optional __maxRange)
   (if __maxRange (setq _maxRange __maxRange)) _maxRange)
  (:angleSpan
   (&optional __angleSpan)
   (if __angleSpan (setq _angleSpan __angleSpan)) _angleSpan)
  (:signalCutoff
   (&optional __signalCutoff)
   (if __signalCutoff (setq _signalCutoff __signalCutoff)) _signalCutoff)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; float32 _maxRange
    4
    ;; float32 _angleSpan
    4
    ;; float32 _signalCutoff
    4
    ;; float32 _frequency
    4
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maxRange
       (sys::poke _maxRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angleSpan
       (sys::poke _angleSpan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _signalCutoff
       (sys::poke _signalCutoff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maxRange
     (setq _maxRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angleSpan
     (setq _angleSpan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _signalCutoff
     (setq _signalCutoff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get stdr_msgs::RfidSensorMsg :md5sum-) "a210bd881966e92d87b9dcab3e305128")
(setf (get stdr_msgs::RfidSensorMsg :datatype-) "stdr_msgs/RfidSensorMsg")
(setf (get stdr_msgs::RfidSensorMsg :definition-)
      "# Rfid sensor description
float32 maxRange
float32 angleSpan
float32 signalCutoff

float32 frequency

string frame_id
geometry_msgs/Pose2D pose # sensor pose, relative to robot center

================================================================================
MSG: geometry_msgs/Pose2D
# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :stdr_msgs/RfidSensorMsg "a210bd881966e92d87b9dcab3e305128")


