function [roll, pitch, yaw] = quat2rpy( q )
    qx = q(1);
    qy = q(2);
    qz = q(3);
    qw = q(4);

    % 1-2-3 Euler angles (aka XYZ Tait-Bryan)
    disc = qx*qz - qy*qw;
        
    if disc > 0.495
        roll = 2*atan2(qx, qw);
        pitch = -pi/2;
        yaw = 0;
        return
    end
    
    if disc < -0.495
        roll = 2*atan2(qx, qw);
        pitch = pi/2;
        yaw = 0;
        return
    end
    
    roll = atan2(2*qy*qz + 2*qw*qx , qz^2 - qy^2 -qx^2 + qw^2 );
    pitch = -asin(2*disc);
    yaw = atan2(2*qx*qy + 2*qw*qz , qx^2 + qw^2 - qz^2 - qy^2 );
end
