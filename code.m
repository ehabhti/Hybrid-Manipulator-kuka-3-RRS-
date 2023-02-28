no_of_runs=3;
rng('shuffle');
toWrite = cell(1);
tol = 5.e-4;
TK = zeros(1,10);
TS = zeros(11,20);
alphabet = '1234567890';
randIdx  = randperm(length(alphabet),4); % generate the random index into array
randChar = alphabet(randIdx);            % get the random character
filename = sprintf('testdata_%s.xlsx',randChar);
for n=2:no_of_runs
   th1=randi([-170 170]);
   th2=randi([-135 100]);
   th3=randi([-66 210]);
   th4=randi([-185 185]);
   th5=randi([-120 120]);
   th6=randi([-350 350]);
   th7=randi([0 65]);
   th8=randi([-90 -25]);
   th9=randi([90 155]);

   sim('Kukasim3');
   pause(0.1)
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
   TK(TK<0 & TK>-tol) = 0;
   TS(TS<0 & TS>-tol) = 0;
   RPYK=tr2rpy(TK,'deg');
   RPYS=tr2rpy(TS,'deg');
   toWrite{n,16}=RPYK(:,1);
   toWrite{n,17}=RPYK(:,2);
   toWrite{n,18}=RPYK(:,3);
   toWrite{n,19}=RPYS(:,1);
   toWrite{n,20}=RPYS(:,2);
   toWrite{n,21}=RPYS(:,3);
   toWrite{n,22}=FK0;   %joint 1 with joint 5 kuka
   toWrite{n,23}=FK1;   %joint 2 with joint 5 kuka
   toWrite{n,24}=FS0;   %joint 1 kuka with top stw
   toWrite{n,25}=FS1;   %joint 2 kuka with top stw
   toWrite{n,26}=FS2;   %joint 3 kuka with top stw
   toWrite{n,27}=FKS;   %joint 5 kuka with base stw
   toWrite{n,28}=FBB;   %base kuka with base stw
   toWrite{n,29}=FK2;   %joint 1 with joint 6 kuka
   toWrite{n,30}=FK3;   %joint 2 with joint 6 kuka
   toWrite{n,31}=FSS1;  %top with base of stw
   toWrite{n,32}=FSS2;  %top stw with joint 6 kuka
   fprintf('%d\n',n)
end
writecell(toWrite,filename)
%writecell(toWrite,'test1.xls','WriteMode','append')
%xlswrite('test1.xlsx', toWrite);