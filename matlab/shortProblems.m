% 1. scaler variables

a = 10;
b = 2.5 * 10 ^ 23;
c = 2 + 3i;
d = exp(2j*pi/3);

% 2. vector variables

aVec  = [3.14 159 26];
bVec = [2.71;8;28;182];
cVec = 5:-0.2:-5;
dVec = logspace(0,10,100);
eVec = 'Hello';

% 3. matrix variables

aMat = 2 * ones([9 9]);
bMat = zeros([9 9]);
bMat = diag([1 2 3 4 5 4 3 2 1]);
cMat = reshape([1:100], [10 10]);
dMat = NaN([3 4]);
eMat = [3 -1 12; -22 10 -87];

%{
Make fMat be a 5x3 matrix of random integers with values on the range -3 to 3 (First
use rand and floor or ceil.
%}

fMat = (rand([5 3])-0.425)*6.5;
fMat = floor(fMat)

% Now only use randi

randi([-3 3], [5 3]);

% 4. Scalar equations. Using the variables created in 1, calculate x , y , and z

x = 1/(1 + exp(-(a-15)/6))
y = (nthroot(a,2) + nthroot(b,21))^pi
z = log(real((c-d)*(c+d))*sin(a*pi/3))/conj(c)*c

% 5. Matrix equations

aVecXBvec = aVec'*bVec';
sizeAvecXBvec = size(aVecXBvec);
reshapedAMatsqr = reshape(aMat^2, sizeAvecXBvec(1), []);
xMat = aVecXBvec'*reshapedAMatsqr
yMat = bVec*aVec
zMat = det(cMat)*transpose(aMat*bMat)

% 6. common function

cSum = sum(cMat)
eMean = mean(eMat, 2)
eMat(1,:) = [1 1 1]
cSub = cMat(2:9,2:9)
lin = 1:20
logicalIndex = mod(lin, 2) == 0
lin(logicalIndex) = -lin(logicalIndex)
r = rand([1 5])
ind = find(r < 0.5)
r(ind) = 0