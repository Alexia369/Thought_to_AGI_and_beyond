clear;clc;
%%生命游戏
n=50; %网格行列数
p=0.3; %初始概率
Se=rand(n)<p; %元胞空间
Sd=zeros(n+2); %元胞边界
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
