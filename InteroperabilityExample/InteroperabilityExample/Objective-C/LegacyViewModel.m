//
//  LegacyViewModel.m
//  InteroperabilityExample
//
//  Created by Michał Cichoń on 08/11/2022.
//

#import "LegacyViewModel.h"
#import "InteroperabilityExample-Swift.h"

@implementation LegacyViewModel

- (void)importWithShinyNewModel:(ShinyNewViewModel *)shinyNewModel {
    double number = shinyNewModel.justANumber;
    self.number = @(number);
}

- (NSNumber *)multiply {
    return @(self.number.doubleValue * 2.0);
}

@end
