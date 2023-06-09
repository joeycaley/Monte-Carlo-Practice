
clear all;
close all;

numPts = 1e2;
estimator(numPts);

numPts = 1e3;
estimator(numPts);

numPts = 1e4;
estimator(numPts);

numPts = 1e5;
estimator(numPts);

numPts = 1e6;
estimator(numPts);

numPts = 1e7;
estimator(numPts);

function pi_est = estimator(numPts)

data = rand(2,numPts);

figure
scatter(data(1,:),data(2,:),'.')
axis square

ctr = 0;
i_inCirc = [];

for i = 1:numPts
    circTest = sqrt(data(1,i)^2 + data(2,i)^2) < 1;
    if circTest == true
        ctr = ctr + 1;
        i_inCirc = [i_inCirc i];
    end
end

pi_est = 4*(ctr/numPts);
fprintf("Using %i points, pi is estimated to be: %f\n", numPts, pi_est)

hold on
scatter(data(1,i_inCirc),data(2,i_inCirc),'r.')
title("n = " + numPts + " points")

end