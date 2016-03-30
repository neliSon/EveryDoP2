//
//  TodoCoreDataStack.m
//  EveryDoP2
//
//  Created by Nelson Chow on 2016-03-30.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import "TodoCoreDataStack.h"

@interface TodoCoreDataStack ()

@property (nonatomic, strong) NSManagedObjectModel *mom;
@property (nonatomic, strong) NSPersistentStoreCoordinator *psc;

@end


@implementation TodoCoreDataStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //  get mom url
        NSURL *momdURL = [[NSBundle mainBundle] URLForResource:@"TodoModel" withExtension:@"momd"];
        
        //  init MOM with momd (as a private property)
        _mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:momdURL];
        
        //  init PSC with MOM (as a private property)
        _psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:_mom];
        
        
        //  get data store url NSSearchPathFor...
        NSArray *documentsDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *docPath = [documentsDirectories firstObject];
        
        NSString *dbPath = [docPath stringByAppendingPathComponent:@"todos.db"];
        
        NSURL *dbUrl = [NSURL fileURLWithPath:dbPath];
        
        
        //  add a NSSQLiteStoreType PS to the PSC
        NSError *pscError = nil;
        
        if (![_psc addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:dbUrl options:nil error:&pscError]) {
            
            NSLog(@"Error creating persistant store %@", pscError);
        }
        
        //  init MOC (as public property)
        _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
        
        //  set MOCs PSC
        _context.persistentStoreCoordinator = _psc;
    }
    return self;
}

@end
