//
//  ViewController.m
//  UUDatePikcer_Max_Min
//
//  Created by shake on 14-10-30.
//  Copyright (c) 2014年 uyiuyao. All rights reserved.
//

#import "ViewController.h"
#import "UUDatePicker.h"

#define WIDTH   [[UIScreen mainScreen].bounds.size.width
#define HEIGHT  [[UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UUDatePickerDelegate>
{
    __weak IBOutlet UITextField *YMDHM;
    __weak IBOutlet UITextField *YMD;
    __weak IBOutlet UITextField *MDHM;
    __weak IBOutlet UITextField *HM;
    
    __weak IBOutlet UITextField *Max;
    __weak IBOutlet UITextField *Min;
    __weak IBOutlet UITextField *SpecifiedTime;
}

@property (nonatomic, strong) UUDatePicker *datePicker;
@end

@implementation ViewController

/*
 UUDateStyle_YearMonthDayHourMinute = 0,
 UUDateStyle_YearMonthDay,
 UUDateStyle_MonthDayHourMinute,
 UUDateStyle_HourMinute
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDate *now = [NSDate date];
    //block
    NSArray *txfAry = @[YMDHM,YMD,MDHM,HM,Max,Min];
    int a[6] = {0,1,2,3,0,0};
//    for (int i=0; i<txfAry.count; i++) {
//        
//        UITextField *field = txfAry[i];
//        
//        UUDatePicker *datePicker
//        = [[UUDatePicker alloc]initWithframe:CGRectMake(0, 0, self.view.frame.size.width, 200)
//                                 PickerStyle:a[i]
//                                 didSelected:^(NSString *year,
//                                               NSString *month,
//                                               NSString *day,
//                                               NSString *hour,
//                                               NSString *minute,
//                                               NSString *weekDay) {
//                                     switch (i) {
//                                         case 0:
//                                             field.text = [NSString stringWithFormat:@"%@-%@-%@ %@:%@",year,month,day,hour,minute];
//                                             break;
//                                         case 1:
//                                             field.text = [NSString stringWithFormat:@"%@-%@-%@",year,month,day];
//                                             break;
//                                         case 2:
//                                             field.text = [NSString stringWithFormat:@"%@-%@ %@:%@",month,day,hour,minute];
//                                             break;
//                                         case 3:
//                                             field.text = [NSString stringWithFormat:@"%@:%@",hour,minute];
//                                             break;
//                                         case 4:
//                                             field.text = [NSString stringWithFormat:@"%@-%@-%@ %@:%@",year,month,day,hour,minute];
//                                             break;
//                                         case 5:
//                                             field.text = [NSString stringWithFormat:@"%@-%@-%@ %@:%@",year,month,day,hour,minute];
//                                             break;
//                                        default:
//                                             break;
//                                     }
//                                 }];
//        
////        datePicker.backgroundColor = [UIColor redColor];
//        if (field == Max) {
//            datePicker.maxLimitDate = [now dateByAddingTimeInterval:2222];
//        }
//        else if (field == Min){
//            datePicker.minLimitDate = [NSDate date];
//        }
//        
//        field.inputView = datePicker;
//    }
//    
    
    
}
- (IBAction)click:(id)sender {
    
    _datePicker = [[UUDatePicker alloc]initWithframe:CGRectMake(0, 0, self.view.frame.size.width ,self.view.frame.size.height ) PickerStyle:UUDateStyle_YearMonthDayHourMinute didSelected:^(NSString *year, NSString *month, NSString *day, NSString *hour, NSString *minute, NSString *weekDay) {
          Min.text = [NSString stringWithFormat:@"%@-%@-%@ %@:%@",year,month,day,hour,minute];
        
    }];
    _datePicker.minLimitDate = [NSDate date];
    [self.view addSubview:_datePicker];
    
}







@end
