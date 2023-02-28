syms th1 th2 th3 th4 th5 th6 fi1 fi2 fi3 fi4 fi5 fi6 a1 a2 a3 a4 a5 a6 d1 d2 d3 d4 d5 d6;
%th1=46;th2=-124-90;th3=-112;th4=-55;th5=-88;th6=-79;
th1=45;th2=-90;th3=0;th4=0;th5=0;th6=0;
fi1=-90 ;fi2=0 ;fi3=90 ;fi4=-90 ;fi5=-90 ;fi6=0 ;
a1=25 ;a2=455 ;a3=35 ;a4=0 ;a5=0 ;a6=0 ;
%d1=400 ;d2=0 ;d3=0 ;d4=-420 ;d5=0 ;d6=99 ;
d1=400 ;d2=0 ;d3=0 ;d4=-420 ;d5=0 ;d6=80 ;
T01=[cosd(th1) -sind(th1)*cosd(fi1) sind(th1)*sind(fi1) a1*cosd(th1);sind(th1) cosd(th1)*cosd(fi1) -cosd(th1)*sind(fi1) a1*sind(th1);0 sind(fi1) cosd(fi1) d1;0 0 0 1];
T12=[cosd(th2) -sind(th2)*cosd(fi2) sind(th2)*sind(fi2) a2*cosd(th2);sind(th2) cosd(th2)*cosd(fi2) -cosd(th2)*sind(fi2) a2*sind(th2);0 sind(fi2) cosd(fi2) d2;0 0 0 1];
T23=[cosd(th3) -sind(th3)*cosd(fi3) sind(th3)*sind(fi3) a3*cosd(th3);sind(th3) cosd(th3)*cosd(fi3) -cosd(th3)*sind(fi3) a3*sind(th3);0 sind(fi3) cosd(fi3) d3;0 0 0 1];
T34=[cosd(th4) -sind(th4)*cosd(fi4) sind(th4)*sind(fi4) a4*cosd(th4);sind(th4) cosd(th4)*cosd(fi4) -cosd(th4)*sind(fi4) a4*sind(th4);0 sind(fi4) cosd(fi4) d4;0 0 0 1];
T45=[cosd(th5) -sind(th5)*cosd(fi5) sind(th5)*sind(fi5) a5*cosd(th5);sind(th5) cosd(th5)*cosd(fi5) -cosd(th5)*sind(fi5) a5*sind(th5);0 sind(fi5) cosd(fi5) d5;0 0 0 1];
T56=[cosd(th6) -sind(th6)*cosd(fi6) sind(th6)*sind(fi6) a6*cosd(th6);sind(th6) cosd(th6)*cosd(fi6) -cosd(th6)*sind(fi6) a6*sind(th6);0 sind(fi6) cosd(fi6) d6;0 0 0 1];
%T06=T01*T12*T23*T34*T45*T56*RINV
T06=T01*T12*T23*T34*T45*T56
ABC=tr2rpy(T06,'deg')