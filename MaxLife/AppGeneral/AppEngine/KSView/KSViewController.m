//
//  KSViewController.m
//  KSAppFrame
//
//  Created by 郭祖宏 on 6/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//

#import "KSViewController.h"

@interface KSViewController ()

@end

@implementation KSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
	[self.view setBackgroundColor:kAppBgColor];
//    [self.navigationController.navigationBar setTranslucent:NO];
    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(endEdit:)];
//    [tap setNumberOfTapsRequired:1];
//    [tap setNumberOfTouchesRequired:1];
//    [self.view addGestureRecognizer:tap];
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(40, 0, 255, 44)];
    searchBar.backgroundImage = [self imageWithColor:[UIColor clearColor]];
    [searchBar setTintColor:[UIColor clearColor]];
    [searchBar setPlaceholder:KSLocalizedString(@"SearchBarPlaceholder", @"SearchBarPlaceholder")];
    UIView *searchView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 768, 44)];
    [searchView addSubview:searchBar];
    self.navigationItem.titleView = searchView;

    [self setTextFieldAsDelegate:searchBar];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)updateViewControllerLanguage:(id)sender
{
    
}

- (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (void)endEdit:(id)sender
{

    [self.navigationController.view endEditing:YES];
    [self.view endEditing:YES];
    
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)setTextFieldAsDelegate:(UIView *)inputView {
    for (UIView *view in inputView.subviews) {
        if ([view isKindOfClass:[UITextField class]]) {
            
            UITextField *searchBarTextField = (UITextField *)view;
            searchBarTextField.layer.cornerRadius=6.0f;
            searchBarTextField.layer.masksToBounds=YES;
            searchBarTextField.layer.borderColor=[[UIColor blackColor]CGColor];
            searchBarTextField.layer.borderWidth= 1.0f;
            
//            UIImageView *imageViewSearch = [[UIImageView alloc] initWithFrame:CGRectMake(-20, 0, 85, 35)];
//            [imageViewSearch setImage:[UIImage imageNamed:@"btn-search"]];
//            [searchBarTextField setRightViewMode:UITextFieldViewModeAlways];
//            [searchBarTextField setRightView:imageViewSearch];
            
            break;
            
        } else {
            
            [self setTextFieldAsDelegate:view];
            
        }
    }
}

@end
