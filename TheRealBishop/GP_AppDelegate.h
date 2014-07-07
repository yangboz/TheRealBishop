//
//  GP_AppDelegate.h
//  TheRealBishop
//
//  Created by zhou Yangbo on 12-8-7.
//  Copyright (c) 2012年 GODPAPER. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;
//@interface GP_AppDelegate : UIResponder <UIApplicationDelegate>
@interface GP_AppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
    UIView *sparrowView;
}
//@property (strong, nonatomic) UIWindow *window;
//@property (nonatomic, retain) IBOutlet UIWindow *window;
//@property (nonatomic, retain) IBOutlet SPView *sparrowView;
@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UIView *sparrowView;
@property (nonatomic, retain) RootViewController *rootViewController;
@end
