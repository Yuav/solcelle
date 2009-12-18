clear, clc,close all % clear all variables, window, and close all windows
fontsize = 14;
delimiter = '\t';


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

figure(2)
set(gca,'FontSize',fontsize)
%title('Posisjonsavhengig karakteristikk');
ylabel('Lysmengde');
xlabel('Energi [eV]');
legend('10s integrering');
%xlabel('Bølgelengde [nm]');


%plot (nm_to_ev(F2x),F2y);
%plot (nm_to_ev(F3x),F3y);
%plot (nm_to_ev(F4x),F4y);
%plot (nm_to_ev(F6x),F6y);
%plot (nm_to_ev(F7x),F7y);
%plot (nm_to_ev(F8x),F8y);
%plot (nm_to_ev(F10x),F10y);
%plot (nm_to_ev(F1x),F1y,'r'); % Høyeste kurve
%plot (nm_to_ev(F17x),F17y,'g'); % Lavest startende kurve




x = F12x;
y = F12y;



%load D:\Skole\Prosjekt_H09\PL\13-10-09\glued_spectra\sf090604.txt;
%A=sf090604;
%x = A(:,1);
%y = A(:,2);

lambdalow = 1100;
lambdahigh = 1344.6;

%lambdalow = 0.92;
%lambdahigh = 0.97;

%check out the original curve, and make a guess on position, width and
%intensity
%param0 = [518 38 570 546 25 900 592 32 1280 658 54 880 749 38 260];% 900 250 280];

        %pos  width intensity

topp0 = [1192   29  1600]; % TO + G fonon replika
topp1 = [1221.5 10  500]; % TO + G + IV
topp2 = [1240   10  1825]; %D4
topp5 = [1260 15 1400]; % Ukjent
topp3 = [1278   15  1500]; %TO + 2G fonon replika
topp4 = [1305   15  958]; %D3

%param0 = [1290 20 1850 1315 10 1450];
%param0 = [1192 10 2050 1240 51 2100 1305 31 1400]
param0 = [topp0 topp1 topp2 topp3 topp4 topp5]
indexlow = find(x > lambdalow,1)
indexhigh = find(x > lambdahigh,1)

%I suspect the peak to have an offset, maybe due to noise like dark current
for i=indexlow:indexhigh,
    y(i)=y(i)-3650;
end

%Plot actual data before filtering
figure(2)
hold on
plot (nm_to_ev(x),y,'y');

lambda = x(indexlow:indexhigh);
intensity = y(indexlow:indexhigh);

%lambda = x;
%intensity = y;

%sgolay filtering
intensity = sgolayfilt(intensity,1,19);


[calcInt,g1,g2,g3,g4,g5,g6] = Gn(param0,lambda);
%[calcInt,g1,g2,g3] = Gn(param0,lambda);

figure1 = figure(1);
clf;

lambda2 = lambda;
lambda = nm_to_ev(lambda);

plot(lambda,intensity,'r');
hold on;
plot(lambda,calcInt,'k');
plot(lambda,g1,'--r','Color','b');
plot(lambda,g2,'--r','Color','b');
plot(lambda,g3,'--r','Color','b');
plot(lambda,g4,'--r','Color','b');
plot(lambda,g5,'--r','Color','b');
plot(lambda,g6,'--r','Color','b');
xlabel({'Wavelength [nm]'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
ylabel({'Intensity'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
title({'sf090604 visible spectrum Gaussian fit'},'FontWeight','bold','FontSize',24,'FontName','Calibri');


% Create textarrow
annotation(figure1,'textarrow',[0.192857142857143 0.269642857142857],...
    [0.606142857142857 0.519047619047619],'TextEdgeColor','none',...
    'String',{'D3'});

% Create textarrow
annotation(figure1,'textarrow',[0.825 0.760714285714286],...
    [0.846619047619048 0.821428571428572],'TextEdgeColor','none',...
    'String',{'D4'});

% Create textarrow
annotation(figure1,'textarrow',[0.346428571428571 0.430357142857143],...
    [0.822809523809525 0.752380952380952],'TextEdgeColor','none',...
    'String',{'TO + 2 fonon'});

% Create textarrow
annotation(figure1,'textarrow',[0.521305530371713 0.619220308250227],...
    [0.707407871198569 0.858676207513417],'TextEdgeColor','none',...
    'String',{'TO + 1 fonon'});









%% Computer fit
lambda = lambda2;

param = lsqcurvefit(@Gn, param0, lambda, intensity);

[calcInt,g1,g2,g3,g4,g5,g6] = Gn(param,lambda);

figure(2);
lambda = nm_to_ev(lambda);
%plot(lambda,intensity,'r');
hold on;
plot(lambda,calcInt,'k');
plot(lambda,g1,'--r','Color','b');
plot(lambda,g2,'--r','Color','b');
plot(lambda,g3,'--r','Color','b');
plot(lambda,g4,'--r','Color','b');
plot(lambda,g5,'--r','Color','b');
plot(lambda,g6,'--r','Color','b');
%xlabel({'Wavelength [nm]'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
%ylabel({'Intensity'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
%title({'sf090604 visible spectrum Gaussian fit'},'FontWeight','bold','FontSize',24,'FontName','Calibri');


% Skrive til fil for bruk i latex
%print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Posisjoner_gauss'

