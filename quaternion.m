function out = quaternion( in  )
% Converts between rotation matrix and quaternion representation


if size(in,1)~=4; in = in'; end

    x = in(1,:); y = in(2,:); z = in(3,:); w = in(4,:);
    s = 2;
     
    X = x.*s;
    Y = y.*s;
    Z = z.*s;
    wX = w.*X;
    wY = w.*Y;
    wZ = w.*Z;
    xX = x.*X;
    xY = x.*Y;
    xZ = x.*Z;
    yY = y.*Y;
    yZ = y.*Z;
    zZ = z.*Z;
  
    out = reshape( [ 1.0-(yY+zZ); xY+wZ; xZ-wY; xY-wZ; 1.0-(xX+zZ); yZ+wX; xZ+wY; yZ-wX; 1.0-(xX+yY) ], 3, 3 );
end