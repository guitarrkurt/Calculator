//
//  Calculadora.m
//  Calculator2.0
//
//  Created by guitarrkurt on 27/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import "Calculadora.h"

@implementation Calculadora
@synthesize operadorActual, operando1, operando2;

-(void) inicializarOperacion{
    operando1 = operando2 = 0.0;
    operadorActual = '@';
}

-(float) evaluarOperador:(float) valor
{
    float multiplicador, resultado;
    
    resultado = 0.0;
    multiplicador = 10;
    
    if(operadorActual == '@'){
        operando1 *= multiplicador;
        operando1 += valor;
        resultado = operando1;
    }else{
        operando2 *= multiplicador;
        operando2 += valor;
        resultado = operando2;
    }
    return resultado;
}

-(float) realizarOperacion{
    float resultado = 0.0;
    
    switch (operadorActual) {
        case '+':
            resultado = [self sumar];
            break;
        case '-':
            resultado = [self restar];
            break;
        case '*':
            resultado = [self multiplicar];
            break;
        case '/':
            resultado = [self dividir];
            break;
    }
    return resultado;
}

-(float) sumar{
    return operando1 + operando2;
}
-(float) restar{
    return operando1 - operando2;
}
-(float) multiplicar{
    return operando1 * operando2;
}
-(float) dividir{
    return operando1 / operando2;
}


@end