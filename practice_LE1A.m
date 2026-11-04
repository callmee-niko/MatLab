r = input("Enter the radius: ");
h = input("Enter the height: ");

%% Display the current area of the cone

A = pi*r*(r+sqrt(h^2+r^2));

fprintf("Surface area = %.2f\n", A);

%% Display volume of the cone

V = (pi * r^2 * h)/3;

fprintf("Volume = %.2f\n", V)

%% Display the area of the right triangular pyramid

l = input("Enter length: ");
w = input("Enter width: ");
H = input("Enter height: ");

Ar = l * w + l * (sqrt(w/2)^2) + H^2 + w * (sqrt(1/2)^2 + H^2);

fprintf("Area = %.2f\n", Ar);

%% Display volume of the pyramid

v = (l * w * h)/3;

fprintf("Volume = %.2f\n", v);