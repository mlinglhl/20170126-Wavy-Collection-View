//
//  ViewController.h
//  20170126 Wavy Collection View
//
//  Created by Minhung Ling on 2017-01-26.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *wavyCollectionView;


@end

