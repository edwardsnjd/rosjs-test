rosjs Test
==========

Run the ROS server in the background:

```bash
docker compose up -d
```

Start the master:

```bash
docker exec -ti rosjs-server roscore
```

Publish a message:

```bash
docker exec -ti rosjs-server rostopic pub /listener std_msgs/String "Hello, World"
```

Listen for messages:

```bash
docker exec -ti rosjs-server rostopic echo /cmd_vel
```

Run a service:

```bash
docker exec -ti rosjs-server rosrun rospy_tutorials add_two_ints_server
```

Start the websocket server:

```bash
docker exec -ti rosjs-server roslaunch rosbridge_server rosbridge_websocket.launch
```

Open the test web page:

```bash
open index.html
```
