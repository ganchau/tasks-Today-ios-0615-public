//
//  FISDestinationViewController.m
//  tasksToday
//
//  Created by Gan Chau on 6/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISDestinationViewController.h"
#import <EventKit/EventKit.h>

@interface FISDestinationViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation FISDestinationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *eventText = @"";
    for (EKEvent *event in self.events) {
        if (event == [self.events lastObject]) {
            eventText = [eventText stringByAppendingString:[NSString stringWithFormat:@"%@", event.title]];
           // NSLog(@"LAST ITEM %@", eventText);
        } else {
            eventText = [eventText stringByAppendingString:[NSString stringWithFormat:@"%@\n", event.title]];
        }
    }
    self.textView.text = eventText;
    //NSLog(@"XXXXXX %@", eventText);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
