//
//  ViewController.m
//  2_2_singleview
//
//  Created by Shinya Hirai on 2015/07/14.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    myCount = 0;
    
}

// 画面遷移時に、Segue線を通るタイミングで呼ばれるメソッド
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // segueのidentifierメソッドを使って呼び出したIDと、文字列の@"mySegue"とをisEqualToStringで比較しています
    if ( [[segue identifier] isEqualToString:@"mySegue"]) {
        // secondViewController ← これがクラス (importしている必要がある)
        // *SecondViewController ← クラスから作ったオブジェクト
        secondViewController *SecondViewController = [segue destinationViewController];
        myCount++;
        SecondViewController.myData = myCount;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnMainView:(UIStoryboardSegue *)segue {
    secondViewController *SecondViewcontroller = [segue sourceViewController];
    myCount = SecondViewcontroller.myData;
    myCount++;
    self.myLabel.text = [NSString stringWithFormat:@"<%d>",myCount];
}

@end
