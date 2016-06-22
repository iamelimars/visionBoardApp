//
//  Custom Layout.h
//  Vision Board
//
//  Created by iMac on 6/19/16.
//  Copyright © 2016 Marshall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Custom_Layout : UICollectionViewLayout

@property (nonatomic, readonly)CGFloat horizontalInset;
@property (nonatomic, readonly)CGFloat verticalInset;

@property (nonatomic, readonly)CGFloat minimumItemWidth;
@property (nonatomic, readonly)CGFloat maximumItemWidth;
@property (nonatomic, readonly)CGFloat itemHeight;

-(CGSize)collectionViewContentSize;
- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath;
- (void)prepareLayout;
- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds;
- (UICollectionViewLayoutAttributes *)layoutAttributesForDecorationViewOfKind:(NSString*)elementKind atIndexPath:(NSIndexPath *)indexPath;

@end
