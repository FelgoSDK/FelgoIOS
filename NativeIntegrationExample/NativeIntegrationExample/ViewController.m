//
//  ViewController.m
//  NativeIntegrationExample
//
//  Created by Christian Bartsch on 20.09.18.
//  Copyright © 2018 Christian Bartsch. All rights reserved.
//

#import "ViewController.h"

#import "FelgoIOSView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet FelgoIOSView *felgoView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  // FelgoIOSView is added in Main.storyboard
  // could also be added in code:
  //[self addQMLView];
  
  // Load QML file from project resources:
  self.felgoView.qmlSource = [[NSBundle mainBundle] URLForResource:@"Cube3D" withExtension:@"qml" subdirectory:@"qml"];
  
  // Load QML content directly from NSData:
  //self.felgoView.qmlContent = [@"import Felgo 3.0; App { AppText { text: 'Direct QML content' } }"
  //                             dataUsingEncoding:NSUTF8StringEncoding];
}

- (void)addQMLView {
  self.felgoView = [FelgoIOSView new];
  self.felgoView.frame = self.view.bounds;
  [self.view addSubview:self.felgoView];
}


@end
