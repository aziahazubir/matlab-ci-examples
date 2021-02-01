function mb = xypoints2mb(xy1,xy2)
%XYPOINTS2MB Computes m and b when given 2 (x,y) coordinates
%   Computes the slope (m) and y-intercept (b) of a line given 2 of its
%   (x,y) coordinates.

arguments
    xy1 (1,2) {mustBeNumeric};
    xy2 (1,2) {mustBeNumeric};
end

% Check that maximum number of outputs is 2
nargoutchk(0,2);

% Solve Ax = b where x = [m;b]:
% The euqation takes the form [x1 1][m] = [y1]
%                             [x2 1][b]   [y2]
A = [xy1(1) 1;
     xy2(1) 1];
b = [xy1(2);
     xy2(2)];
mb = A\b;

end

