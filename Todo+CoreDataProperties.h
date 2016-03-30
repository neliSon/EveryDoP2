//
//  Todo+CoreDataProperties.h
//  EveryDoP2
//
//  Created by Nelson Chow on 2016-03-30.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Todo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *taskDescription;
@property (nullable, nonatomic, retain) NSNumber *priorityNumber;
@property (nullable, nonatomic, retain) NSNumber *isCompleted;

@end

NS_ASSUME_NONNULL_END
