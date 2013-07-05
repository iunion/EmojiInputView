//
//  ViewController.m
//  EmojiInputViewDemo
//
//  Created by mac on 13-7-5.
//  Copyright (c) 2013年 DJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    EmojiInputView *emojiInputView = [[EmojiInputView alloc] init];
    [emojiInputView changeEmojiCategoryByIndex:EMOJI_CATEGORY_MOOD];
    emojiInputView.delegate = self;
    _TextView.inputView = emojiInputView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark EmojiInputViewDelegate

- (void)switchEmojiInputView
{
    _TextView.inputView = nil;
    [_TextView reloadInputViews];
}

- (void)setEmojiFromEmojiInputView:(NSString *)emojiStr
{
    [_TextView insertText:emojiStr];
}

- (void)deleteEmoji
{
    [_TextView deleteBackward];
}

@end
