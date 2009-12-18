load D:\Skole\Prosjekt_H09\PL\13-10-09\glued_spectra\sf090604.txt;
A=sf090604;
x = A(:,1);
y = A(:,2);

lambdalow = 420;
lambdahigh = 800;

%check out the original curve, and make a guess on position, width and
%intensity
param0 = [518 38 570 546 25 900 592 32 1280 658 54 880 749 38 260];% 900 250 280];

indexlow = find(x > lambdalow,1);
indexhigh = find(x > lambdahigh,1);

%I suspect the peak to have an offset, maybe due to noise
for i=indexlow:indexhigh,
    y(i)=y(i)-17;
end

lambda = x(indexlow:indexhigh);
intensity = y(indexlow:indexhigh);

%sgolay filtering
intensity = sgolayfilt(intensity,1,19);

[calcInt,g1,g2,g3,g4,g5] = Gn(param0,lambda);

figure(1);
clf;
plot(lambda,intensity,'r');
hold on;
plot(lambda,calcInt,'k');
plot(lambda,g1,'--r','Color','b');
plot(lambda,g2,'--r','Color','b');
plot(lambda,g3,'--r','Color','b');
plot(lambda,g4,'--r','Color','b');
plot(lambda,g5,'--r','Color','b');
%plot(lambda,g6,'--r','Color','b');
xlabel({'Wavelength [nm]'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
ylabel({'Intensity'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
title({'sf090604 visible spectrum Gaussian fit'},'FontWeight','bold','FontSize',24,'FontName','Calibri');


param = lsqcurvefit(@Gn, param0, lambda, intensity);

[calcInt,g1,g2,g3,g4,g5] = Gn(param,lambda);

figure(2);
clf;
plot(lambda,intensity,'r');
hold on;
plot(lambda,calcInt,'k');
plot(lambda,g1,'--r','Color','b');
plot(lambda,g2,'--r','Color','b');
plot(lambda,g3,'--r','Color','b');
plot(lambda,g4,'--r','Color','b');
plot(lambda,g5,'--r','Color','b');
%plot(lambda,g6,'--r','Color','b');
xlabel({'Wavelength [nm]'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
ylabel({'Intensity'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
title({'sf090604 visible spectrum Gaussian fit'},'FontWeight','bold','FontSize',24,'FontName','Calibri');

param
%xlswrite('D:\Skole\Prosjekt_H09\PL\27-10-09_visible\parameters_visible.xls', param,'B3:S3');