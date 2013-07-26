function R = skew( v )
  % generates a skew-symmetric matrix given a vector w
  
  if length(v) ~= 3
    error('vector must be 3x1')
  end
  
  w = zeros(3,1);
  w(1) = v(1);
  w(2) = v(2);
  w(3) = v(3);
  
  R = zeros(3,3);
  
  
  R(1,2) = -w(3);
  R(1,3) =  w(2);
  R(2,3) = -w(1);

  R(2,1) =  w(3);
  R(3,1) = -w(2);
  R(3,2) =  w(1);

  
end