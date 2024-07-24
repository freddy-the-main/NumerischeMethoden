
%% Primezahlaufgabe

Primes = primes(1000);
% a
PrimesGt170 = Primes(Primes>170);
% b
PrimesLs170 = Primes(Primes<170);
% c
Primes150to250 = Primes(Primes>150 & Primes<250);
% d
NoPrime = 1:1000;
NoPrime = NoPrime(~ismember(NoPrime,Primes));
% e
index2 = mod(NoPrime,2);
index3 = mod(NoPrime,3);
index5 = mod(NoPrime,5);
index11 = mod(NoPrime,11);
NoPrime = NoPrime(index2 & index3 & index5 & index11)

