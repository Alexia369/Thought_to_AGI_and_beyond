clear;clc;
%%������Ϸ
n=50; %����������
p=0.3; %��ʼ����
Se=rand(n)<p; %Ԫ���ռ�
Sd=zeros(n+2); %Ԫ���߽�
z=zeros(n);
imagesc(cat(3,Se,z,z));
t=0;
while(t<1000)
    Sd(2:n+1,2:n+1)=Se;
    sum=Sd(1:n,1:n)+Sd(1:n,2:n+1)+Sd(1:n,3:n+2)+Sd(2:n+1,1:n)+Sd(2:n+1,3:n+2)+Sd(3:n+2,1:n)+Sd(3:n+2,2:n+1)+Sd(3:n+2,3:n+2);
    for i=1:n
        for j=1:n
            if(sum(i,j)==3||(sum(i,j)==2&&Se(i,j)==1))
                Se(i,j) = 1;
            else
                Se(i,j) = 0;
            end
        end
    end
    imagesc(cat(3,Se,z,z));
    drawnow;
    t=t+1;
end
