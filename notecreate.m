function y = notecreate(frq, dur, damp, strength)
    y = zeros(1, dur);
    if frq == -100
        return;
    end
    alpha = 0.618;
    standard = 440;
    for i = 1 : dur
        y(i) = (sin(2*pi* i/8192 * (standard*2.^((frq-1.0)/12)))...
            + alpha * sin(4*pi* i/8192 * (standard*2.^((frq-1.0)/12))) ...
            + alpha^3 * sin(6*pi* i/8192 * (standard*2.^((frq-1.0)/12))) ...
            + alpha^5 * sin(8*pi* i/8192 * (standard*2.^((frq-1.0)/12))) ...
            + alpha^7 * sin(10*pi* i/8192 * (standard*2.^((frq-1.0)/12))));
        y(i) = y(i) *(exp(-i*damp / 8192) - exp(-100*i / 8192)) * strength;
    end
end