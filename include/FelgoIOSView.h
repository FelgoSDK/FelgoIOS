//
//  FelgoIOS.h
//
//  Created by Christian Bartsch on 12.07.18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FelgoIOSView : UIView

@property (nonatomic, retain) NSURL *qmlSource;

@property (nonatomic, retain) NSData *qmlContent;

@end

NS_ASSUME_NONNULL_END
