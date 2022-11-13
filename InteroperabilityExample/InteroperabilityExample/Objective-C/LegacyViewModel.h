//
//  LegacyViewModel.h
//  InteroperabilityExample
//
//  Created by Michał Cichoń on 08/11/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ShinyNewViewModel;

@interface LegacyViewModel : NSObject

@property (nonatomic, nullable) NSNumber *number;

- (void)importWithShinyNewModel:(ShinyNewViewModel *)shinyNewModel;

- (NSNumber *)multiply;

@end

NS_ASSUME_NONNULL_END
