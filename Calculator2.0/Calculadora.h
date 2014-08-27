//
//  Calculadora.h
//  Calculator2.0
//
//  Created by guitarrkurt on 27/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculadora : NSObject

@property (nonatomic) float operando1;
@property (nonatomic) float operando2;
@property (nonatomic) char operadorActual;
-(void) inicializarOperacion;

-(float) realizarOperacion;
-(float) evaluarOperador:(float) valor;
-(float) sumar;
-(float) restar;
-(float) multiplicar;
-(float) dividir;
@end
