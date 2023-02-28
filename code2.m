toWrite = cell(1);
n=0;
tol = 5.e-4;
TK = zeros(1,10);
TS = zeros(11,20);
TP = zeros(21,30);
rng('shuffle');
alphabet = '1234567890';
randIdx  = randperm(length(alphabet),4); % generate the random index into array
randChar = alphabet(randIdx);            % get the random character
filename = sprintf('path_%s.xlsx',randChar);
for i1 = -177.65:2.6125:177.65 %-135
   % for i3 = -66:4:210 %-66
   %     for i5 = -120:40:120
            n=n+1;
   th1=i1;
   th2=-53.2300;
   th3=-41.8000;
   th4=0;
   th5=7.080;
   th6=0;
   th7=0;
   th8=-90;
   th9=90; 
   
   sim('Kukasim3');
   toWrite{n,1}=th1;
   toWrite{n,2}=th2;
   toWrite{n,3}=th3;
   toWrite{n,4}=th4;
   toWrite{n,5}=th5;
   toWrite{n,6}=th6;
   toWrite{n,7}=th7;
   toWrite{n,8}=th8;
   toWrite{n,9}=th9;
   toWrite{n,10}=XK;
   toWrite{n,11}=YK;
   toWrite{n,12}=ZK;
   toWrite{n,13}=XS;
   toWrite{n,14}=YS;
   toWrite{n,15}=ZS;
   toWrite{n,16}=XP;
   toWrite{n,17}=YP;
   toWrite{n,18}=ZP;
   TK(TK<0 & TK>-tol) = 0;
   TS(TS<0 & TS>-tol) = 0;
   TP(TP<0 & TP>-tol) = 0;
   RPYK=tr2rpy(TK,'deg');
   RPYS=tr2rpy(TS,'deg');
   RPYP=tr2rpy(TP,'deg');
   toWrite{n,19}=RPYK(:,1);
   toWrite{n,20}=RPYK(:,2);
   toWrite{n,21}=RPYK(:,3);
   toWrite{n,22}=RPYS(:,1);
   toWrite{n,23}=RPYS(:,2);
   toWrite{n,24}=RPYS(:,3);
    toWrite{n,25}=RPYP(:,1);
   toWrite{n,26}=RPYP(:,2);
   toWrite{n,27}=RPYP(:,3);
  % toWrite{n,22}=FK0;
  % toWrite{n,23}=FK1;
  % toWrite{n,24}=FK2;
  % toWrite{n,25}=FK3;
  toWrite{n,28}=FS0;
  % toWrite{n,27}=FS1;
  % toWrite{n,28}=FS2;
  % toWrite{n,29}=FKS;
  toWrite{n,29}=FBB;

   fprintf('%d\n',n)
  %      end
   % end
end
writecell(toWrite,filename)
%writecell(toWrite,'test1.xls')