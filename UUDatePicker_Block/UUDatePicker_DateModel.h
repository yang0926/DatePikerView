//
//  UUDatePicker_DateModel.h
//  IntelligentSeal_iOS
//
//  Created by yangbigbig on 16/8/19.
//  Copyright © 2016年 杨大大. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UUDatePicker_DateModel : NSObject

@property (nonatomic, retain) NSString *year;
@property (nonatomic, retain) NSString *month;
@property (nonatomic, retain) NSString *day;
@property (nonatomic, retain) NSString *hour;
@property (nonatomic, retain) NSString *minute;

- (id)initWithDate:(NSDate *)date;

@end
