//
//  ViewController.h
//  EmojiInputViewDemo
//
//  Created by mac on 13-7-5.
//  Copyright (c) 2013年 DJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EmojiInputView.h"

@interface ViewController : UIViewController
<
    EmojiInputViewDelegate
>

@property (weak, nonatomic) IBOutlet UITextView *TextView;

@end
