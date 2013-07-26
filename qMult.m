function Q = qMult(Q1, Q2)
    s1 = Q1(4);
    s2 = Q2(4);
    v1 = Q1(1:3);
    v2 = Q2(1:3);

    s =s1*s2 - dot( v1, v2 );
    v = s1*v2 + s2*v1 + cross( v1, v2 );
    v = reshape( v, 3, 1 );
    Q = [v; s];
end