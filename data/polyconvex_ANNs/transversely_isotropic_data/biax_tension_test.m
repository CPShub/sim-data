%   biaxial tension in x-y-direction for transversely isotropic SNE model
%   Author: Dominik K. Klein / AUG21



n = 100;
lam = linspace(-1, 2, n);

lam1_ges = ones(1, n) + 0.5*lam;
lam2_ges = ones(1, n) + 0.25*lam;
lam3_ges = ones(1, n);

fval_ges = zeros(n, 2);

for i=2:n
    
    lam11 = lam1_ges(i);
    lam22 = lam2_ges(i);

    P = @(lam) [(-0.56E2).*lam.^(-1)+lam.^3.*(0.2E0+0.2E0.*lam11.^4+0.32E1.*lam11.^2.* ...
  lam22.^2+0.128E2.*lam22.^4)+lam.*(0.16E2+0.2E0.*lam22.^2+0.2E0.* ...
  lam11.^4.*lam22.^2+lam11.^2.*(0.16E1+0.2E2.*lam22.^2+0.16E1.*lam22.^4))];
                    
    lam0 = [lam3_ges(i-1)];
    
    [lam, fval] = fsolve(P, lam0);
    
    lam3_ges(i) = lam;
    
    fval_ges(i, :) = fval;


end

lam1_ges = lam1_ges(1, 2:end);
lam2_ges = lam2_ges(1, 2:end);
lam3_ges = lam3_ges(1, 2:end);

clf
subplot(2, 1, 1)
hold on
plot(lam1_ges, lam3_ges);
xlabel('lam1')
ylabel('lam3')

subplot(2, 1, 2)
plot(lam1_ges, lam1_ges .* lam2_ges .* lam3_ges)
xlabel('lam1')
ylabel('J')

%   export for TF

Fs = zeros(n-1, 9);
Fs(:, 1) = lam1_ges';
Fs(:, 5) = lam2_ges';
Fs(:, 9) = lam3_ges';

 writematrix(Fs, 'biax_test.txt','Delimiter', 'space')
