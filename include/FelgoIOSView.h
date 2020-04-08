//
//  FelgoIOSView.h
//  EmbeddedVPlayTest
//
//  Created by Christian Bartsch on 12.07.18.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^initBlock)();
typedef void (^signalHandler)(NSArray *params);

@interface FelgoIOSView : UIView

@property (nonatomic, retain) NSURL *qmlSource;

@property (nonatomic, retain) NSData *qmlContent;

// optional code block to be called when the QML file is instantiated
// called before QML Component.onComplete is emitted
@property (nonatomic) initBlock qmlInitBlock;

- (void)setQmlProperty:(NSString *)propertyName value:(id)value;

- (id)getQmlProperty:(NSString *)propertyName;

- (void)callQmlMethod:(NSString *)methodName value:(NSArray *)params;

- (void)addSignalHandler:(NSString *)signalName handler:(signalHandler)handler;

@end

NS_ASSUME_NONNULL_END
