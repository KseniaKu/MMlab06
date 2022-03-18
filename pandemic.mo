model pandemic

parameter Real a = 0.01;// коэффициент заболеваемости
parameter Real b = 0.02;//коэффициент выздоровления
parameter Real N = 12400;// общая численность популяции
parameter Real I0 = 150; // количество инфицированных особей в нач момент вр
parameter Real R0 = 55; // количество здоровых особей с иммунитетом в нач момент вр
parameter Real S0 = N - I0 - R0; // количество восприимчивых к болезни особей в нач момент вр

Real S(start=S0); //кол-во восприимчивых
Real I(start=I0); //кол-во инфицированных
Real R(start=R0); //кол-во здоровых с иммунитетом

equation
//случай 1 I(0)<=I*
/*der(S)=0;
der(I)=-b*I;
der(R)=b*I;*/
//случай 2 I(0)>I*
der(S)=-a*S;
der(I)=a*S-b*I;
der(R)=b*I;

end pandemic;
