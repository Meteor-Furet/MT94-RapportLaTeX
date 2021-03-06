function out=f(x)
    out=(1-x(1))^2+100*(x(2)-x(1)^2)^2;
endfunction

function out=gradient(x)
    out=[-2*(1-x(1))-400*x(1)*(x(2)-x(1)^2);200*(x(2)-x(1)^2)]
endfunction

//trace de la courbe de Rosenbrock
t=linspace(0,2*%pi,1024);   
clf
a=gca();
a.isoview='on';
a.data_bounds=[-1 2 -1 2];
a.auto_scale='off';
for c=1:5:300
    y=sqrt(c)*[cos(t);sin(t)];
    x=[1-y(1,:)
    y(2,:)/10+(1-y(1,:)).^2];
    plot(x(1,:),x(2,:));
end
plot(1,1,'xr')

function rho=pasOptimal(x_k,d_k,f)
    //cf partie precedente
endfunction

x=[-0.5;1.5]; //point de depart arbitraire
for i=1:50
    g=gradient(x);
    rho=pasOptimal(x,-g,f);
    newx=x-rho*g;
    plot([x(1) newx(1)],[x(2) newx(2)],"-or");
    x=newx;
end
title("Fonction de Rosenbrock : methode du gradient",'fontsize',3);
