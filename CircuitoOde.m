function dy = CircuitoOde(t, y)
    R = 120;
    L = 0.006;
    C = 0.0000001;
    A = 50000000;  
    f = 500;      
    T = 1 / f;     

    dy = zeros(2,1);
    y1 = y(1);
    y2 = y(2);

    if mod(t, T) < T / 2
        Vi = A;  
    else
        Vi = 0;  
    end

    dy(1) = y2;
    dy(2) = (1/L)*(Vi - R*y2 - y1*(1/C));
end