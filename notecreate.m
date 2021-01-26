function y = notecreate(frq, dur, damp, strength)
    y = zeros(1, dur);
    if frq == -100
        return;
    end
    alpha = [1 0.618 0.618^3 0.618^6 0.618^9];
    standard = 440;
    for i = 1 : dur
        y(i) = alpha(1) * sin(2*pi* i/8192 * (standard*2.^((frq-1.0)/12)))...
            + alpha(2) * sin(4*pi* i/8192 * (standard*2.^((frq-1.0)/12))) ...
            + alpha(3) * sin(6*pi* i/8192 * (standard*2.^((frq-1.0)/12))) ...
            + alpha(4) * sin(8*pi* i/8192 * (standard*2.^((frq-1.0)/12))) ...
            + alpha(5) * sin(10*pi* i/8192 * (standard*2.^((frq-1.0)/12)));
        %y(i) = y(i) *(exp(-i*damp / 8192) - exp(-100*i / 8192)) * strength;
        y(i) = y(i) *(exp(-i*damp / 8192) - exp(-100*i / 8192)-i^4 / dur^4 * exp(-dur*damp/8192) + i^4 / dur^4 * exp(-100*dur/8192)) * strength;
    end
end