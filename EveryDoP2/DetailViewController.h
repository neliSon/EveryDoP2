//
//  DetailViewController.h
//  EveryDoP2
//
//  Created by Nelson Chow on 2016-03-30.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

