#import "YapAbstractDatabaseExtension.h"
#import "YapAbstractDatabaseExtensionPrivate.h"


@implementation YapAbstractDatabaseExtension

+ (void)dropTablesForRegisteredName:(NSString *)registeredName
                    withTransaction:(YapAbstractDatabaseTransaction *)transaction
{
	NSAssert(NO, @"Missing required method(%@) in class(%@)", NSStringFromSelector(_cmd), [self class]);
}

@synthesize registeredName;

/**
 * Subclasses must implement this method.
 * This method is called during the view registration process to enusre the extension supports the database type.
 * 
 * Return YES if the class/instance supports the particular type of database (YapDatabase vs YapCollectionsDatabase).
**/
- (BOOL)supportsDatabase:(YapAbstractDatabase *)database withRegisteredExtensions:(NSDictionary *)registeredExtensions
{
	NSAssert(NO, @"Missing required method(%@) in class(%@)", NSStringFromSelector(_cmd), [self class]);
	return NO;
}

/**
 * Subclasses MUST implement this method IF they have dependencies.
 * This method is called during the view registration simply to record the needed dependencies.
 * If any of the dependencies are unregistered, this extension will automatically be unregistered.
 *
 * Return a set of NSString objects, representing the name(s) of registered extensions
 * that this extension is dependent upon.
 *
 * If there are no dependencies, return nil (or an empty set).
 * The default implementation returns nil.
**/
- (NSSet *)dependencies
{
	return nil;
}

/**
 * Subclasses MUST implement this method.
 * Returns a proper instance of the YapAbstractDatabaseExtensionConnection subclass.
**/
- (YapAbstractDatabaseExtensionConnection *)newConnection:(YapAbstractDatabaseConnection *)databaseConnection
{
	NSAssert(NO, @"Missing required method(%@) in class(%@)", NSStringFromSelector(_cmd), [self class]);
	return nil;
}

@end