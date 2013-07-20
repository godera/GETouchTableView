//
//  GETouchTableView.m
//
//  Created by God Era on 3/23/13.
//

#import "GETouchTableView.h"

@implementation GETouchTableView

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    if (self.touchTableDelegate && [self.touchTableDelegate respondsToSelector:@selector(GETouchTableView:touchesBegan:withEvent:)]) {
        [self.touchTableDelegate GETouchTableView:self touchesBegan:touches withEvent:event];
    }
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesCancelled:touches withEvent:event];
    if (self.touchTableDelegate && [self.touchTableDelegate respondsToSelector:@selector(GETouchTableView:touchesCancelled:withEvent:)]) {
        [self.touchTableDelegate GETouchTableView:self touchesCancelled:touches withEvent:event];
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    if (self.touchTableDelegate && [self.touchTableDelegate respondsToSelector:@selector(GETouchTableView:touchesEnded:withEvent:)]) {
        [self.touchTableDelegate GETouchTableView:self touchesEnded:touches withEvent:event];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    if (self.touchTableDelegate && [self.touchTableDelegate respondsToSelector:@selector(GETouchTableView:touchesMoved:withEvent:)]) {
        [self.touchTableDelegate GETouchTableView:self touchesMoved:touches withEvent:event];
    }
}

@end





