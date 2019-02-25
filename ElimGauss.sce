////////////////////////////////////////////////////
// ElimGauss.sce
// 
// Resuelve un sistema de ecuaciones con el método de Eliminación Gaussiana
// 
// Erick González
// Victor Villarreal
// 6/2/2019 versión 1.0
////////////////////////////////////////////////////

function X = ElimGauss(MAT)
    for(i = 1 : size(MAT,1) - 1)
       for(k = i + 1 : size(MAT,1))
         fact = - MAT(k,i) / MAT(i,i)
         for(j = 1 : size(MAT,2))
             MAT(k,j) = MAT(k,j) + fact*MAT(i,j)
          end
        end
        disp(MAT)
    end
    
    for(i = size(MAT,1) : -1 : 1)
        Suma = 0
        for(j=i+1: size(MAT,1))
            Suma = Suma + MAT(i,j)*X(j)
        end
        X(i) = (MAT(i,size(MAT,1))-Suma)/MAT(i,i)
    end
endfunction

//Main
MAT = input("Da la matriz")
X = ElimGauss(MAT)
disp(X)
