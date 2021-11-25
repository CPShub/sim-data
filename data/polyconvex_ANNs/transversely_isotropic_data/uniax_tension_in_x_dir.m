%   uniaxial tension in x-direction for transversely isotropic SNE model
%   Author: Dominik K. Klein / AUG21



%   uniaxial tension in x-direction
n = 200;
lam1_ges = linspace(0.5, 2, n);
n = length(lam1_ges);
lam2_ges = ones(1,n);
lam3_ges = ones(1, n);

fval_ges = zeros(n, 2);

for i=2:n
    
    lam1 = lam1_ges(i);


    P = @(lam) [(-0.56E2).*lam(1).^(-1)+lam(1).^3.*(0.2E0+0.2E0.*lam1.^4+0.32E1.*lam1.^2.* ...
                 lam(2).^2+0.128E2.*lam(2).^4)+lam(1).*(0.16E2+0.2E0.*lam(2).^2+0.2E0.*lam1.^4.* ...
                 lam(2).^2+lam1.^2.*(0.16E1+0.2E2.*lam(2).^2+0.16E1.*lam(2).^4));                      
                (-0.56E2).*lam(2).^(-1)+(0.16E2+0.2E0.*lam(1).^2+0.2E0.*lam1.^4.*lam(1).^2+ ...
                 lam1.^2.*(0.16E1+0.2E2.*lam(1).^2+0.16E1.*lam(1).^4)).*lam(2)+(0.2E0+0.2E0.* ...
                 lam1.^4+0.32E1.*lam1.^2.*lam(1).^2+0.128E2.*lam(1).^4).*lam(2).^3];
                    
    lam0 = [lam2_ges(i-1), lam3_ges(i-1)];
    
    [lam, fval] = fsolve(P, lam0);
    
    lam2_ges(i) = lam(1);
    lam3_ges(i) = lam(2);
    
    fval_ges(i, :) = fval;


end

lam1_ges = lam1_ges(1, 2:end);
lam2_ges = lam2_ges(1, 2:end);
lam3_ges = lam3_ges(1, 2:end);

clf
subplot(2, 1, 1)
hold on
plot(lam1_ges, lam2_ges);
xlabel('lam1')
ylabel('lam2 = lam3')

subplot(2, 1, 2)
plot(lam1_ges, lam1_ges .* lam2_ges .* lam3_ges)
xlabel('lam1')
ylabel('J')


%   export for TF

Fs = zeros(n-1, 9);
Fs(:, 1) = lam1_ges';
Fs(:, 5) = lam2_ges';
Fs(:, 9) = lam3_ges';

 writematrix(Fs, 'uniaxial.txt','Delimiter', 'space')
