//
//  TemplateList.m
//  MetroSeat
//
//  Created by Gary on 2018/3/1.
//  Copyright © 2018年 Gary. All rights reserved.
//

#import "TemplateList.h"
#import "UITableViewCell+Value.h"

@interface TemplateList()
<
    UITableViewDelegate,
    UITableViewDataSource
>

@end

@implementation TemplateList

#pragma mark - init
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
        self.estimatedRowHeight = 40;
        self.tableFooterView = [UIView new];
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.rowHeight = UITableViewAutomaticDimension;
    }
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
        self.estimatedRowHeight = 40;
        self.tableFooterView = [UIView new];
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.rowHeight = UITableViewAutomaticDimension;
    }
    return self;
}
+(TemplateList *)templateByIdentifier:(NSString *)identifier{
    TemplateList *temp = [[TemplateList alloc] init];
    temp.identifier = identifier;
    [temp registerClass:NSClassFromString(identifier)
        forCellReuseIdentifier:identifier];
    return temp;
}

#pragma mark - delegate & dataSouce
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.list.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_identifier
                                                            forIndexPath:indexPath];
    [cell setCellValue:_list[indexPath.row]];
    return cell;
}

#pragma mark - lazy load
-(NSMutableArray *)list{
    if (!_list) {
        _list = @[].mutableCopy;
    }
    return _list;
}
@end
