located_in('atlanta','georgia').%Clausula 1
located_in('houston','texas').%Clausula 2
located_in('austin','texas').%Clausula 3
located_in('toronto','ontario').%Clausula 4

located_in(X,'usa'):-located_in(X,'georgia').%Clausula 5
located_in(X,'usa'):-located_in(X,'texas').%Clausula 6
located_in(X,'canada'):-located_in(X,'ontario').%Clausula 7
located_in(X,'north_america'):-located_in(X,'usa').%Clausula 8
located_in(X,'north_america'):-located_in(X,'canada').%Clausula 9