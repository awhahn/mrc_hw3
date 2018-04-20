filepath = fullfile('catkin_ws','src','mrc_hw3','data','myturtle.bag');
bag = rosbag(filepath);
 
bag.AvailableTopics
 
msg_pose = rosmessage('turtlesim/Pose')
showdetails(msg_pose)
 
bagselect = select(bag,'Topic','turtle1/pose');
 
ts = timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity');

x = ts.data(:,1);
y = ts.data(:,2);
theta = ts.data(:,3);

u = ts.data(:,4).*cos(theta);
v = ts.data(:,4).*sin(theta);
ii = 1:10:length(ts.data(:,4));  % Decimate the data so that it plot only every Nth point.
t = ts.time - ts.time(1);

fig = figure();
plot(x,y);
title('XY POS');
saveas(fig,'pose_xy.png');

fig = figure();
plot(t,theta);
title('Heading vs Time');
saveas(fig,'pose_theta.png');

fig = figure();
quiver(x(ii),y(ii),u(ii),v(ii))
title('Quiver Plot');
saveas(fig,'pose_quiver.png');







