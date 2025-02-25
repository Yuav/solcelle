clear, clc,close all % clear all variables, window, and close all windows
%set( 0, 'DefaultFigurePaperType', 'A5' );
%set( 0, 'DefaultFigurePaperUnits', 'centimeters' );

fontsize = 14;

% Erbium referansepr�ve ved 300K, pumpet med 532nm laser sendt gjennom
% gammel veibane - 5s-1550nm-300k

delimiter = '\t';
filnavn = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\old_setup_300grv-5s-1550nm-300k';

% Lese filen med data
A = dlmread(filnavn,delimiter);

% Definere aksene
Ax = A(:,1);
Ay = A(:,2);


% Plotte
fig1 = figure(1);

axes1 = axes('Parent',fig1,'FontSize',fontsize);
box(axes1,'on');
hold(axes1,'all');
hold on;

plot(Ax,Ay);
%title('Erbium referansepr�ve ved 300K, gjennom eksisterende lysbane');
legend('5s integrering')
ylabel('Lysmengde');
xlabel('B�lgelengde [nm]');



% Create new axes
%axes2 = axes('Parent',fig1,'YAxisLocation','right','XAxisLocation','top',...
%    'FontSize',14);
%box(axes2,'on');
%hold(axes2,'all');

% Create plot

%h = 4.135667273e-15;
%c = 299792458;
%Ax2 = (h*c)./(Ax*10^-9);

%plot(Ax2,Ay);
%plot(Ax2,Ay,'Parent',axes2,'DisplayName','5s integrering');

% Create xlabel
%xlabel({'Energi [eV]'},'VerticalAlignment','bottom','FontSize',14);


% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Erbium_gammel' % Prints to eps file named 'Erbium_300grv-5s-1550nm-300k' for use in latex


% ############################################################
% Erbium referansepr�ve ved 300K, grating p� 300 og 5 sekunder
% integreringstid med pumping p� 532nm gjennom 'nytt' oppsett
f1 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1000nm-300k.txt';
f2 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1140nm-300k';
f3 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1280nm-300k';
f4 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1420nm-300k';
f5 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1560nm-300k';

% Lese filer inn til matriser
A = dlmread(f1,delimiter);
B = dlmread(f2,delimiter);
C = dlmread(f3,delimiter);
D = dlmread(f4,delimiter);
E = dlmread(f5,delimiter);

% Sette samme offsett p� alle samples
A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);

% Definere x og y
Ax = A(:,1);
Ay = A(:,2);

% Plotte
figure(2)
plot(Ax,Ay)
set(gca,'FontSize',fontsize)
%title('Er referansepr�ve ved 300K, gjennom ny lysbane');
ylabel('Lysmengde');
xlabel('B�lgelengde [nm]');
legend('5s integrering')

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Erbium_ny'

% #########################################################################
% Polert multikrystallinsk silisium ved 300K med integreringstid 5 sekunder
% i 'd�rlig' omr�de

f1 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_polished\300grv-5s-1000nm-300k';
f2 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_polished\300grv-5s-1140nm-300k';
f3 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_polished\300grv-5s-1280nm-300k';
f4 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_polished\300grv-5s-1420nm-300k';
f5 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_polished\300grv-5s-1560nm-300k';

A = dlmread(f1,delimiter);
B = dlmread(f2,delimiter);
C = dlmread(f3,delimiter);
D = dlmread(f4,delimiter);
E = dlmread(f5,delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);

Ax = A(:,1);
Ay = A(:,2);

figure(3)
plot(nm_to_ev(Ax),Ay)
set(gca,'FontSize',fontsize)
%title('Polert multikrystallinsk silisium ved 300K');
ylabel('Lysmengde');
%xlabel('B�lgelengde [nm]');
xlabel('Energi [eV]');
legend('5s integrering')

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Polert_300K'

% #########################
% Upolert sample ved 300K i 'd�rlig' omr�de
f1 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_unpolished\300grv-5s-1000nm-300k';
f2 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_unpolished\300grv-5s-1140nm-300k';
f3 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_unpolished\300grv-5s-1280nm-300k';
f4 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_unpolished\300grv-5s-1420nm-300k';
f5 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\MC_Si_unpolished\300grv-5s-1560nm-300k';

A = dlmread(f1,delimiter);
B = dlmread(f2,delimiter);
C = dlmread(f3,delimiter);
D = dlmread(f4,delimiter);
E = dlmread(f5,delimiter);

A = matrix_align_and_glue(A,B);


A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);

Ax = A(:,1);
Ay = A(:,2);

figure(4);
plot(nm_to_ev(Ax),Ay)
set(gca,'FontSize',fontsize)
%title('Upolert sample ved 300K');
ylabel('Lysmengde');
%xlabel('B�lgelengde [nm]');
xlabel('Energi [eV]');
legend('5s integrering')

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Upolert_300K'

% ###################
%  Cryom�linger
% ###################

% ##############################################
% Sample 4 spot3? 13mW 300grv 10s 900nm 23k 15mW
A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\300grv-10s-900nm-23k',delimiter);
B = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\300grv-10s-1040nm-23k',delimiter);
C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\300grv-10s-1180nm-23k',delimiter);
D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\300grv-10s-1320nm-23k',delimiter);
E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\300grv-10s-1460nm-23k',delimiter);
F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\300grv-10s-1600nm-23k',delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);
A = matrix_align_and_glue(A,F);

Ax = A(:,1);
Ay = A(:,2);

figure(5)
plot(nm_to_ev(Ax),Ay)
set(gca,'FontSize',fontsize)
%title('Sample 4 ved 23K');
ylabel('Lysmengde');
xlabel('Energi [eV]');
%xlabel('B�lgelengde [nm]');
legend('10s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4'

% ###################################################################
% Sample 4 ved 18K i et ukjent omr�de, belyst med 4.6mW ved 532nm, med
% grating p� 300
f1 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - new\300grv-2s-900nm-18k-pump-4.6mW-532nm';
f2 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - new\300grv-2s-1040nm-18k-pump-4.6mW-532nm';
f3 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - new\300grv-2s-1180nm-18k-pump-4.6mW-532nm';
f4 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - new\300grv-2s-1320nm-18k-pump-4.6mW-532nm';
f5 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - new\300grv-2s-1460nm-18k-pump-4.6mW-532nm';
f6 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - new\300grv-2s-1600nm-18k-pump-4.6mW-532nm';

A = dlmread(f1,delimiter);
B = dlmread(f2,delimiter);
C = dlmread(f3,delimiter);
D = dlmread(f4,delimiter);
E = dlmread(f5,delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);

Ax = A(:,1);
Ay = A(:,2);

figure(6);
plot(nm_to_ev(Ax),Ay);
set(gca,'FontSize',fontsize)
%title('Sample 4 ved 18K pumpet med 4.6mW');
ylabel('Lysmengde');
xlabel('Energi [eV]');
%xlabel('B�lgelengde [nm]');
legend('2s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_1'


% ##############################################
% Sample 4 spot2? 15mW 300grv 10s 900nm 23k 15mW - samme som r�de p� figure
% 9 med moving around

A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-15mW\spot2-300grv-10s-900nm-23k-15mW',delimiter);
B = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-15mW\spot2-300grv-10s-1040nm-23k-15mW',delimiter);
C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-15mW\spot2-300grv-10s-1180nm-23k-15mW',delimiter);
D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-15mW\spot2-300grv-10s-1320nm-23k-15mW',delimiter);
E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-15mW\spot2-300grv-10s-1460nm-23k-15mW',delimiter);
F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-15mW\spot2-300grv-10s-1600nm-23k-15mW',delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);
A = matrix_align_and_glue(A,F);

Ax = A(:,1);
Ay = A(:,2);

figure(7)
plot(nm_to_ev(Ax),Ay)
set(gca,'FontSize',fontsize)
%title('Sample 4 ved 23K i omr�de 2 pumpet med 15mW');
ylabel('Lysmengde');
xlabel('Energi [eV]');
%xlabel('B�lgelengde [nm]');
legend('10s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_2_1'

% ##############################################
% Sample 4 spot2? 15mW 300grv 10s 900nm 23k 15mW

A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-30mW\spot2-300grv-5s-900nm-23k-30mW',delimiter);
B = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-30mW\spot2-300grv-5s-1040nm-23k-30mW',delimiter);
C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-30mW\spot2-300grv-5s-1180nm-23k-30mW',delimiter);
D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-30mW\spot2-300grv-5s-1320nm-23k-30mW',delimiter);
E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-30mW\spot2-300grv-5s-1460nm-23k-30mW',delimiter);
F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\sample 4 - spot2 (same-dunno)-30mW\spot2-300grv-5s-1600nm-23k-30mW',delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);
A = matrix_align_and_glue(A,F);

Ax = A(:,1);
Ay = A(:,2);

figure(8)
plot(nm_to_ev(Ax),Ay)
set(gca,'FontSize',fontsize)
%title('Sample 4 ved 23K i omr�de 2 pumpet med 30mW');
ylabel('Lysmengde');
xlabel('Energi [eV]');
%xlabel('B�lgelengde [nm]');
legend('5s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_2_2'

% ##########################
% Posisjonsavhengig karakteristikk
f1 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move1';
f2 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move2';
f3 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move3';
f4 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move4';
f5 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move5';
f6 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move6';
f7 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move7';
f8 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move8';
f9 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move9';
f10 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move10';
f11 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move11';
f12 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move12';
f13 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move13';
f14 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move14';
f15 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move15';
f16 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move16';
f17 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move17';
f18 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move18';
f19 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move19';
f20 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - moving around\300grv-10s-1270nm-23k-13mW-move20';

F1 = dlmread(f1,delimiter);
F2 = dlmread(f2,delimiter);
F3 = dlmread(f3,delimiter);
F4 = dlmread(f4,delimiter);
F5 = dlmread(f5,delimiter);
F6 = dlmread(f6,delimiter);
F7 = dlmread(f7,delimiter);
F8 = dlmread(f8,delimiter);
F9 = dlmread(f9,delimiter);
F10 = dlmread(f10,delimiter);
F11 = dlmread(f11,delimiter);
F12 = dlmread(f12,delimiter);
F13 = dlmread(f13,delimiter);
F14 = dlmread(f14,delimiter);
F15 = dlmread(f15,delimiter);
F16 = dlmread(f16,delimiter);
F17 = dlmread(f17,delimiter);
F18 = dlmread(f18,delimiter);
F19 = dlmread(f19,delimiter);
F20 = dlmread(f20,delimiter);

F1x = F1(:,1);
F1y = F1(:,2);
F2x = F2(:,1);
F2y = F2(:,2);
F3x = F3(:,1);
F3y = F3(:,2);
F4x = F4(:,1);
F4y = F4(:,2);
F5x = F5(:,1);
F5y = F5(:,2);
F6x = F6(:,1);
F6y = F6(:,2);
F7x = F7(:,1);
F7y = F7(:,2);
F8x = F8(:,1);
F8y = F8(:,2);
F9x = F9(:,1);
F9y = F9(:,2);
F10x = F10(:,1);
F10y = F10(:,2);
F11x = F11(:,1);
F11y = F11(:,2);
F12x = F12(:,1);
F12y = F12(:,2);
F13x = F13(:,1);
F13y = F13(:,2);
F14x = F14(:,1);
F14y = F14(:,2);
F15x = F15(:,1);
F15y = F15(:,2);
F16x = F16(:,1);
F16y = F16(:,2);
F17x = F17(:,1);
F17y = F17(:,2);
F18x = F18(:,1);
F18y = F18(:,2);
F19x = F19(:,1);
F19y = F19(:,2);
F20x = F20(:,1);
F20y = F20(:,2);

figure(9)
set(gca,'FontSize',fontsize)
%title('Posisjonsavhengig karakteristikk');
ylabel('Lysmengde');
xlabel('Energi [eV]');
%xlabel('B�lgelengde [nm]');

hold on
plot (nm_to_ev(F2x),F2y);
plot (nm_to_ev(F3x),F3y);
legend('10s integrering');
plot (nm_to_ev(F4x),F4y);
%plot (F5x,F5y,':');
plot (nm_to_ev(F6x),F6y);
plot (nm_to_ev(F7x),F7y);
plot (nm_to_ev(F8x),F8y);
%plot (F9x,F9y,':');
plot (nm_to_ev(F10x),F10y);
%plot (F11x,F11y,':'); % likt med 12?
plot (nm_to_ev(F12x),F12y,'y');
%plot (F13x,F13y,':');
%plot (F14x,F14y,':');
%plot (F15x,F15y,':');
%plot (F16x,F16y,':');
%plot (F18x,F18y,':');
%plot (F19x,F19y,':');
%plot (F20x,F20y,':');
plot (nm_to_ev(F1x),F1y,'r'); % H�yeste kurve
plot (nm_to_ev(F17x),F17y,'g'); % Lavest startende kurve

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Posisjonsavhengighet'

% ##########################

% Sample 4 SPOT 1 50s 13mW
A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 1 - 13mW\300grv-50s-900nm-19k-SPOT1-13mW',delimiter);
B = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 1 - 13mW\300grv-50s-1040nm-19k-SPOT1-13mW',delimiter);
C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 1 - 13mW\300grv-50s-1180nm-19k-SPOT1-13mW',delimiter);
D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 1 - 13mW\300grv-50s-1320nm-19k-SPOT1-13mW',delimiter);
E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 1 - 13mW\300grv-50s-1460nm-19k-SPOT1-13mW',delimiter);
F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 1 - 13mW\300grv-50s-1600nm-19k-SPOT1-13mW',delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);
A = matrix_align_and_glue(A,F);

Ax = A(:,1);
Ay = A(:,2);

figure(10)
set(gca,'FontSize',fontsize)
plot(nm_to_ev(Ax),Ay)
%title('Sample 4 i "bad spot"');
ylabel('Lysmengde');
xlabel('B�lgelengde [nm]');
xlabel('Energi [eV]');
legend('50s integrering');

% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_SPOT_1_BAD'

% ################################
% Sample 4 SPOT 2 50s 13mW
figure11 = figure(11)
A = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 2 - 13mW\300grv-50s-900nm-19k-SPOT2-13mW',delimiter);
B = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 2 - 13mW\300grv-50s-1040nm-19k-SPOT2-13mW',delimiter);
C = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 2 - 13mW\300grv-50s-1180nm-19k-SPOT2-13mW',delimiter);
D = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 2 - 13mW\300grv-50s-1320nm-19k-SPOT2-13mW',delimiter);
E = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 2 - 13mW\300grv-50s-1460nm-19k-SPOT2-13mW',delimiter);
F = dlmread('C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-06-2009\MC Si - Sample 4\Sample 4 - SPOT 2 - 13mW\300grv-50s-1600nm-19k-SPOT2-13mW',delimiter);

A = matrix_align_and_glue(A,B);
A = matrix_align_and_glue(A,C);
A = matrix_align_and_glue(A,D);
A = matrix_align_and_glue(A,E);
A = matrix_align_and_glue(A,F);

Ax = A(:,1);
Ay = A(:,2);
set(gca,'FontSize',fontsize)
Ax = nm_to_ev(Ax);
plot(Ax,Ay)
%title('Sample 4 i "good spot"');
ylabel('Lysmengde');
%xlabel('B�lgelengde [nm]');
xlabel('Energi [eV]');
legend('50s integrering');


% Create textarrow
%annotation(figure11,'textarrow',[0.357142857142857 0.403571428571429],...
%    [0.353761904761905 0.288095238095238],'TextEdgeColor','none',...
%    'String',{'0.96eV'});
%annotation(figure11,'textarrow',[0.369642857142857 0.448214285714286],...
%    [0.653761904761905 0.638095238095238],'TextEdgeColor','none',...
%    'String',{'1.02eV'});
%annotation(figure11,'textarrow',[0.623214285714286 0.573214285714286],...
%    [0.789476190476191 0.811904761904762],'TextEdgeColor','none',...
%    'String',{'1.165eV'});
%annotation(figure11,'textarrow',[0.632142857142857 0.553571428571429],...
%    [0.432333333333333 0.354761904761905],'TextEdgeColor','none',...
%    'String',{'1.137eV'});
%annotation(figure11,'textarrow',[0.605357142857143 0.542857142857143],...
%    [0.703761904761905 0.771428571428571],'TextEdgeColor','none',...
%    'String',{'1.12eV'});
%annotation(figure11,'textarrow',[0.405357142857142 0.503571428571429],...
%    [0.891857142857144 0.845238095238095],'TextEdgeColor','none',...
%    'String',{'1.085eV'});


% Skrive til fil for bruk i latex
print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Sample_4_SPOT_2_GOOD'
