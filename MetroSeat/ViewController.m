//
//  ViewController.m
//  MetroSeat
//
//  Created by Gary on 2018/3/1.
//  Copyright © 2018年 Gary. All rights reserved.
//

#import "ViewController.h"
#import "TemplateList.h"
#import "ListCell.h"

@interface ViewController ()

@property (nonatomic, strong) TemplateList *templateList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:self.templateList];
    self.templateList.frame = self.view.bounds;
    
    NSArray *list = @[@"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @""];
    self.templateList.list = list.mutableCopy;
    [_templateList reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(TemplateList *)templateList{
    if (!_templateList) {
        _templateList = [TemplateList templateByIdentifier:@"ListCell"];
    }
    return _templateList;
}
@end
