//
//  secondViewController.h
//  2_2_singleview
//
//  Created by Shinya Hirai on 2015/07/14.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController {
    int myData;
}
@property (nonatomic, assign) int myData;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
