# ROS2 + ESP32 Project

A distributed motion detection and robotics system using:

- **ESP32 / ESP-01S** PIR motion sensors
- **MQTT** messaging for event communication
- **ROS 2 Jazzy** for real-time monitoring, control, and visualization
- **DevContainer** setup for a reproducible development environment

---

## 📂 Project Structure

├── .devcontainer/ # Complete ROS2 Jazzy development container config
│ ├── devcontainer.json
│ ├── Dockerfile
│ └── setup_ros_ws.sh
├── esp32/ # ESP-01 / ESP32 firmware (MQTT client)
└── ros2/
└── src/ # ROS2 packages will be created here


---

## 🚀 Getting Started

### 1️⃣ Open the project in VS Code
Requires the **Dev Containers** extension.

When prompted:
> “Reopen in Container”  
Click **Yes** — the full ROS 2 environment will build automatically.

### 2️⃣ Test ROS2 setup
Inside the container terminal:

```bash
source /opt/ros/jazzy/setup.bash
ros2 run turtlesim turtlesim_node

source /opt/ros/jazzy/setup.bash
ros2 run turtlesim turtle_teleop_key

🌐 Networking & IoT Integration

This project uses:

Component	Role
ESP-01S / ESP32	Motion detection + MQTT messages
MQTT Broker	Central message routing
ROS2 node	Converts MQTT messages into MotionEvent topics

ROS2 networking uses “host networking” mode so MQTT and discovery work with no setup

🔧 Future Enhancements

Custom ROS2 message: MotionEvent.msg

MQTT → ROS bridge node packaged under ros2/src/robot_system

GUI (RViz2) showing location-based motion events

Launch file automation

UDEV rules for ESP32 USB flashing (PlatformIO)
