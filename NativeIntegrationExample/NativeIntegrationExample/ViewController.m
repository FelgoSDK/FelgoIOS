//
//  ViewController.m
//  NativeIntegrationExample
//
//  Created by Christian Bartsch on 20.09.18.
//  Copyright © 2018 Christian Bartsch. All rights reserved.
//

#import "ViewController.h"

#import "VPlayIOSView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet VPlayIOSView *vplayView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // VPlayView is added in Main.storyboard
  // could also be added in code:
  //[self addQMLView];
  
  // Load QML file from project resources:
  self.vplayView.qmlSource = [[NSBundle mainBundle] URLForResource:@"Main" withExtension:@"qml"];
  
  // Load QML content directly from NSData:
  //self.vplayView.qmlContent = [@"import VPlayApps 1.0; App { AppText { text: 'Direct QML content' } }"
  //                             dataUsingEncoding:NSUTF8StringEncoding];
}

- (void)addQMLView {
  self.vplayView = [VPlayIOSView new];
  self.vplayView.frame = self.view.bounds;
  [self.view addSubview:self.vplayView];
}


@end
