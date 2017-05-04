function out=f(X)
    out=[norm(X-S1)^2-d(1)^2
        norm(X-S2)^2-d(2)^2
        norm(X-S3)^2-d(3)^2];
endfunction

function out=Jf(X)
    out=2*[(X-S1)'
           (X-S2)'
           (X-S3)'];
endfunction


S1 = [-11716.227778, -10118.754628, 21741.083973]'
S2 = [-12082.643974, -20428.242179, 11741.374154]'
S3 = [14373.286650, -10448.439349, 19596.404858]'
d=[22163.847742, 21492.777482, 21492.469326];
X=zeros(3,1);

X=fsolve(X,f,Jf);
disp(X);