function filt = getMovMax(data)
%thresh = 0.65
nRolling = 4*400;
nDisc = 101;
data = data./max(data);
discriminatorSignal = movvar(data,nDisc);
thresh = 0.0*max(discriminatorSignal);
discriminatorSignal(discriminatorSignal < thresh) = 0;
rollingMax = maxFilter(discriminatorSignal,nRolling);
filt = discriminatorSignal ./rollingMax;
end