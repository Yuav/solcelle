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
%xlabel('Bølgelengde [nm]');

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
plot (nm_to_ev(F1x),F1y,'r'); % Høyeste kurve
plot (nm_to_ev(F17x),F17y,'g'); % Lavest startende kurve


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

%figure(5)
plot(nm_to_ev(Ax),Ay,'k')
set(gca,'FontSize',fontsize)
%title('Sample 4 ved 23K');
ylabel('Lysmengde');
xlabel('Energi [eV]');
%xlabel('Bølgelengde [nm]');
legend('10s integrering');