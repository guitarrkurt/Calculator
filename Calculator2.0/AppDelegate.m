//
//  AppDelegate.m
//  Calculator2.0
//
//  Created by guitarrkurt on 27/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "Calculadora.h"

@implementation AppDelegate
@synthesize pantalla, miCalculadora;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    miCalculadora = [[Calculadora alloc] init];
    [miCalculadora inicializarOperacion];
    
    NSString *acumuladorString = [NSString stringWithFormat:@"%.4f", 0.00];
    [pantalla setStringValue:acumuladorString];
}

-(IBAction)clicBotonNumero :(id)sender{
    NSString *nombreBoton = [sender title];
    float valor;
    
    valor = [miCalculadora evaluarOperador:[nombreBoton floatValue]];
    
    NSString *resultadoString = [NSString stringWithFormat:@"%.4f", valor];
    [pantalla setStringValue:resultadoString];
    
}

-(IBAction)clicBotonOperador :(id)sender{
    NSString *nombreBoton = [sender title];
    [miCalculadora setOperadorActual:[nombreBoton characterAtIndex:0]];
    [pantalla setStringValue:nombreBoton];
}

-(IBAction)clicBotonIgual :(id)sender{
    float valor;

    
    valor = [miCalculadora realizarOperacion];
    NSString *resultadoString = [NSString stringWithFormat:@"%.4f", valor];
    [pantalla setStringValue:resultadoString];
    
    [miCalculadora inicializarOperacion];
    [miCalculadora setOperadorActual:valor];
    

    
}

-(IBAction)clicBotonC :(id)sender{
    [miCalculadora inicializarOperacion];
    NSString *acumuladorString = [NSString stringWithFormat:@"%.4f", 0.00];
    [pantalla setStringValue:acumuladorString];
    
}


@end
