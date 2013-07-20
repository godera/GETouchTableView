//
//  GETouchTableView.h
//
//  Created by God Era on 3/23/13.
//
//使用前请将scrollEnabled设为NO
#import <UIKit/UIKit.h>

@protocol GETouchTableViewDelegate;


@interface GETouchTableView : UITableView

@property (nonatomic,assign) id<GETouchTableViewDelegate> touchTableDelegate;

@end

#pragma mark - GETouchTableViewDelegate
@protocol GETouchTableViewDelegate <NSObject>

@optional
-(void)GETouchTableView:(GETouchTableView*)tableView touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)GETouchTableView:(GETouchTableView*)tableView touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)GETouchTableView:(GETouchTableView*)tableView touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
-(void)GETouchTableView:(GETouchTableView*)tableView touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;

@end