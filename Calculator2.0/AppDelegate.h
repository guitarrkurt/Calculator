//
//  AppDelegate.h
//  Calculator2.0
//
//  Created by guitarrkurt on 27/08/14.
//  Copyright (c) 2014 Williams Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Calculadora;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *pantalla;
@property (strong) Calculadora *miCalculadora;


-(IBAction)clicBotonNumero :(id)sender;
-(IBAction)clicBotonOperador :(id)sender;
-(IBAction)clicBotonIgual :(id)sender;
-(IBAction)clicBotonC :(id)sender;

@end
