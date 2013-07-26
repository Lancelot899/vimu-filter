function q = quatFromSmallAngle( theta )
    %#codegen
    q_squared = norm(theta)^2 / 4.0;

    if  q_squared < 1
      q = [theta(1) * 0.5, theta(2) * 0.5, theta(3) * 0.5, sqrt(1 - q_squared)]';
    else
      w = 1.0 / sqrt(1 + q_squared);
      f = w*0.5;
      q = [theta(1) * f, theta(2) * f, theta(3) * f, w]';
    end
end