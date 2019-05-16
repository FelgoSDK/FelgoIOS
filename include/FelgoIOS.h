//
//  EmbeddedVPlay.h
//  EmbeddedVPlayTest
//
//  Created by Christian Bartsch on 02.08.18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FelgoIOS : NSObject

+ (instancetype)sharedInstance;

- (void)start;

- (void)quit;

@end

NS_ASSUME_NONNULL_END
