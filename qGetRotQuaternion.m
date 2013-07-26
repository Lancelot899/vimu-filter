function Q = qGetRotQuaternion( teta, rotationVector )
    % qCreateRotQuaternion: outputs a quaternion which is used to perform
    % rotation
    % Q = qGetRotQuaternion( teta, rotationVector )
    % IN: 
    %     teta - rotation angle
    %     rotationVector - vector around which the rotation will be performed
    % 
    % OUT:
    %     Q - rotation quaternion

    Q = zeros(4,1);Q(end) = 1;
    norm = sqrt(sum( rotationVector .* rotationVector ));
    if( numel( rotationVector ) ~= 3 )
        disp( 'rotationVector should have 3 coordinates!' );
        return;
    end

    rotationVector = reshape( rotationVector, 3, 1 );
    if( norm > 0 )
        v = rotationVector / norm;
        Q = [ v*sin( teta/2 ); cos( teta/2 )];
%     else
%         disp( 'rotationVector cannot be 0' );
    end
end
