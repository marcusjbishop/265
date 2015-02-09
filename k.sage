var('t','x','y')
f=vector((t^3-2*t^2-t,3*t/sqrt(1+t^2)))
t0=1
Tv=f.diff(t)/f.diff(t).norm()
Nv=Tv.diff(t)/Tv.diff(t).norm()
k=abs(diff(f[0])*diff(f[1],2)-diff(f[1])*diff(f[0],2))/(f.diff(t).norm())^3
C=f(t0)+Nv(t0)/k(t0)
p=implicit_plot((x-C[0])^2+(y-C[1])^2==1/k(t0)^2,(x,-5,5),(y,-5,5))
p+=parametric_plot(f(t),(t,-1,3))

