#import "MokiManage.h"
#import "MokiMobility.h"
#import <Foundation/Foundation.h>

#include "TargetConditionals.h"

@implementation MokiMobility

- (void)init:(CDVInvokedUrlCommand*)command
{

    NSString* callbackId = [command callbackId];
    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Hello, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    MokiManage *mokiManageSdk;

    // Create SDK instance. mokiManageSdk is a singleton.
    mokiManageSdk = [MokiManage sharedManager];

    // [mokiManageSdk initializeWithApiKey:appKey launchingOptions:launchOptions enableASM:YES enableAEM:YES asmSettingsFileName:nil error:&error];

    [self.commandDelegate sendPluginResult:result callbackId:callbackId];
}

@end
