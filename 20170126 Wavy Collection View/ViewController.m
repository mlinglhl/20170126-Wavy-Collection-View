//
//  ViewController.m
//  20170126 Wavy Collection View
//
//  Created by Minhung Ling on 2017-01-26.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "ViewController.h"
#import "CustomFlowLayout.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomFlowLayout *layout = [CustomFlowLayout new];
    self.wavyCollectionView.collectionViewLayout = layout;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = [self.wavyCollectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.titleLabel.text = @(indexPath.item +1).stringValue;
    return cell;
}

@end
