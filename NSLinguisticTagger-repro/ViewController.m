//
//  ViewController.m
//  NSLinguisticTagger-repro
//
//  Created by BENJAMIN LISBAKKEN on 10/25/17.
//  Copyright © 2017 Runway 20. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  NSArray<NSLinguisticTagScheme> *tagSchemes = [NSLinguisticTagger availableTagSchemesForLanguage:@"en"];
  NSLog(@"Available tag schemes %@", tagSchemes);
  NSString *schemes = [NSString stringWithFormat:@"%@", tagSchemes];
  UIAlertController *alertController = [UIAlertController
    alertControllerWithTitle:@"Available Tags"
                     message:schemes
              preferredStyle:UIAlertControllerStyleAlert];

  UIAlertAction *okAction = [UIAlertAction
    actionWithTitle:@"ok"
              style:UIAlertActionStyleDestructive
            handler:^(UIAlertAction *action) {
              NSLog(@"Reset action");
            }];

  [alertController addAction:okAction];

  [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
