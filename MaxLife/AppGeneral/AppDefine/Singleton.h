//
//  Singleton.h
//  TaiPoFun
//
//  Created by 郭祖宏 on 20/11/13.
//  Copyright (c) 2013 KineticSpace Limited. All rights reserved.
//

#define kSingleton(classname) \
\
static classname *shared##classname = nil; \
\
+ (classname *)shared##Instance \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [[self alloc] init]; \
} \
} \
\
return shared##classname; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [super allocWithZone:zone]; \
return shared##classname; \
} \
} \
\
return nil; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return self; \
} \
\
