//
//  TodoCoreDataStack.h
//  EveryDoP2
//
//  Created by Nelson Chow on 2016-03-30.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface TodoCoreDataStack : NSObject

@property (nonatomic, strong) NSManagedObjectContext *context;

@end
