//
//  TestUILabel.m
//  Experiment_UIlabel
//
//  Created by Inba on 2017/12/23.
//  Copyright © 2017年 Inba. All rights reserved.
//

#import "TestUILabel.h"
#import "NSAttributedString+Test.h"
#import "NSString+Test.h"

@implementation TestUILabel


-(CGSize)sizeThatFits:(CGSize)size{
    NSLog(@"sizeThatFits");
    NSLog(@"%lf,%lf",size.width,size.height);
 
    
    return [super sizeThatFits:size];
}

-(void)setBounds:(CGRect)bounds{
    CGSize size = bounds.size;
    NSLog(@"setBounds%lf,%lf",size.width,size.height);
    [super setBounds:bounds];
}

-(void)setFrame:(CGRect)frame{
    CGSize size = frame.size;
    NSLog(@"setFrame%lf,%lf",size.width,size.height);
    [super setFrame:frame];
}

-(void)s:(CGRect)bounds{
    CGSize size = bounds.size;
    NSLog(@"setBounds%lf,%lf",size.width,size.height);
    [super setBounds:bounds];
}

-(NSString *)text{
    return [super text];
}


-(UIFont *)font{
    return [super font];
}

-(CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    NSLog(@"textRectForBounds%lf,%lf",bounds.size.width,bounds.size.height);

    return [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
}


-(CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize withHorizontalFittingPriority:(UILayoutPriority)horizontalFittingPriority verticalFittingPriority:(UILayoutPriority)verticalFittingPriority{
    
    NSLog(@"%lf,%lf,%lf,%lf",targetSize.width,targetSize.height,horizontalFittingPriority,verticalFittingPriority);
    return [super systemLayoutSizeFittingSize:targetSize withHorizontalFittingPriority:horizontalFittingPriority verticalFittingPriority:verticalFittingPriority];
}

-(void)setNeedsDisplay{
    [super setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
}

-(CGSize)intrinsicContentSize{
    return CGSizeZero;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
