% Plotting of differet Discrete time signals

%Unit impulse
u3 = [zeros(1,10),1,zeros(1,10)];
subplot (2,3,3);
stem(n,u3,':r');
title('Unit Impulse');
xlabel('n');
ylabel('u');

%Ramp

n = -10:1:10;
u1 = [zeros(1,10),0:1:10];
subplot(2,3,1);
stem(n,u1,'--g');
title('Ramp');
xlabel('n');
ylabel('u');

%unit step
u2 = [zeros(1,10),0,ones(1,10)];
subplot(2,3,2);
stem(n,u2);
title('Unit Step');
xlabel('n');
ylabel('u');

%Sine
n1= -pi:0.1:pi;
u4 = sin(n1);
subplot(2,3,4);
stem(n1,u4,'m');
title('Sine');
xlabel('n');
ylabel('u');


%Cos
u6 = cos(n1);
subplot(2,3,5);
stem(n1,u6);
title('Cos');
xlabel('n');
ylabel('u');


%exponential
n2 = -10:0.2:10;
u5 = [zeros(1,50),exp(n2(1,(50:100)))];
subplot(2,3,6);
stem(n2,u5);
xlabel('n');
ylabel('u');
title('Exponential');
