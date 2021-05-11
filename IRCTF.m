function F=IRCTF(a)
 I=rgb2gray(a);
 [M N L]=size(a);
 ahsv=rgb2hsv(a); %Convert RGB colormap to HSV colormap
 H1=im2uint8(ahsv(:,:,1));
 S1=ahsv(:,:,2);
 V1=ahsv(:,:,3); 

 H=8*ones(M,N);
 S=3*ones(M,N);
 V=3*ones(M,N);
 
 for i=1:M %row by row
     for j=1:N
         
         if H1(i,j)==316 || (H1(i,j)>=0 && H1(i,j)<=20)
             H(i,j)=0;
             elseif H1(i,j)>=21 && H1(i,j)<=40
             H(i,j)=2;
             elseif H1(i,j)>=41 && H1(i,j)<=75
             H(i,j)=3;
             elseif H1(i,j)>=76 && H1(i,j)<=155
             H(i,j)=4;
             elseif H1(i,j)>=156 && H1(i,j)<=190
             H(i,j)=5;
             elseif H1(i,j)>=191 && H1(i,j)<=270
             H(i,j)=6;
             elseif H1(i,j)>=271 && H1(i,j)<=295
             H(i,j)=7;
             elseif H1(i,j)>=296 && H1(i,j)<=315
             H(i,j)=8;
         end
         
         if S1(i,j)>=0 && S1(i,j)<0.2
             S(i,j)=0;
             elseif S1(i,j)>=0.2 && S1(i,j)<0.7
             S(i,j)=1;
             elseif S1(i,j)>=0.7 && S1(i,j)<1
             S(i,j)=2;
         end
         
         if V1(i,j)>=0 && V1(i,j)<0.2
             V(i,j)=0;
             elseif V1(i,j)>=0.2 && V1(i,j)<0.7
             V(i,j)=1;
             elseif V1(i,j)>=0.7 && V1(i,j)<1
             V(i,j)=2;
         end
     end
 end
 G=9*H+3*S+V;
 Fr = graycomatrix(a(:,:,1));
 Fg = graycomatrix(G);
 Fh = graycomatrix(H);
 Fi = graycomatrix(I);
 F=[Fr Fg Fh Fi];
         
         