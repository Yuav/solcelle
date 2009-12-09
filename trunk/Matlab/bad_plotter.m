%bad plot
clear, clc,close all % clear all variables, window, and close all windows
fontsize = 14;
delimiter = '\t';

% ################################
% Sample 4 grating 300 11.2mW 10s bad

A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_bad\900nm-g300-11_2mW-10s-bad',delimiter);
B = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_bad\1040nm-g300-11_2mW-10s-bad',delimiter);
C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_bad\1180-g300-4_78mW-60s-bad',delimiter);
D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_bad\1320nm-g300-11_2mW-10s-bad',delimiter);
E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_bad\1460nm-g300-11_2mW-10s-bad',delimiter);
F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_bad\1600nm-g300-11_2mW-10s-bad',delimiter);


%A = matrix_align_and_glue(A,B);
%A = matrix_align_and_glue(A,C);
%A = matrix_align_and_glue(A,D);


%Cx = C(:,1);
%Cy = C(:,2);
%C = [Cx,Cy/5];

A = matrix_align_and_glue(C,D);
A = matrix_align_and_glue(A,E);
%A = matrix_align_and_glue(A,F);
%A = [A B C D E F];



%Z = matrix_align_and_glue(D,E);
%Z = matrix_align_and_glue(E,F);
%Zx = Z(:,1);
%Zy = Z(:,2);

figure(12)
Ax = A(:,1);
Ay = A(:,2);
set(gca,'FontSize',fontsize)
Ax = nm_to_ev(Ax);
plot(Ax,Ay)
%hold on
%Zx = nm_to_ev(Zx);
%plot(Zx,Zy)

ylabel('Intensitet');

xlabel('Energi [eV]');
legend('10s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_romtemp_bad'


% ################################
% Sample 4 grating 300 11.2mW 10s good

%A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_good\900nm-g300-11_2mW-10s-good',delimiter);
A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_good\1040nm-g300-11_2mW-10s-good',delimiter);
%C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_good\1180-g300-11_2mW-10s-good',delimiter);
%D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_good\1320nm-g300-11_2mW-10s-good',delimiter);
%E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_good\1460nm-g300-11_2mW-10s-good',delimiter);
%F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-23-2009\Romtempratur_good\1600nm-g300-11_2mW-10s-good',delimiter);

%A = matrix_align_and_glue(A,B);
%A = matrix_align_and_glue(A,C);
%A = matrix_align_and_glue(A,D);
%A = matrix_align_and_glue(A,E);
%A = matrix_align_and_glue(A,F);

%Z = matrix_align_and_glue(D,E);
%Z = matrix_align_and_glue(E,F);
%Zx = Z(:,1);
%Zy = Z(:,2);


%Ax = [A(:,1) B(:,1) C(:,1) D(:,1) E(:,1) F(:,1)]
%Ay = [A(:,2) B(:,2) C(:,2) D(:,2) E(:,2) F(:,2)]

figure(13)
Ax = A(:,1);
Ay = A(:,2);
set(gca,'FontSize',fontsize)
Ax = nm_to_ev(Ax);
plot(Ax,Ay)

%figure(14);
%Zx = nm_to_ev(Zx);
%plot(Zx,Zy)
%title('Sample 4 i "good spot"');
ylabel('Intensitet');
%xlabel('Bølgelengde [nm]');
xlabel('Energi [eV]');
legend('10s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_romtemp_good'

