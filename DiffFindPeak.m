% �ò�ֵķ�������ѹ�����εļ�ֵ��

fs=200;
data=F(min(10000,length(F)):end);
nLen=length(data);

hd=lowpass20Hz;
y=filter(hd,data);
diff_y=y(2:end)-y(1:end-1); %�����

pos=find(abs(diff_y)<0.1);  %Ѱ���ݶ�С��0.1�ĵ㣬����ֵ��

figure
plot(y)
hold on
plot(pos,y(pos),'ro')