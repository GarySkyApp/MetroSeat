//
//  TemplateList.h
//  MetroSeat
//
//  Created by Gary on 2018/3/1.
//  Copyright © 2018年 Gary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemplateList : UITableView

@property (nonatomic, strong) NSMutableArray *list;
@property (nonatomic, strong) NSString *identifier;

+(TemplateList *)templateByIdentifier:(NSString *)identifier;
@end
