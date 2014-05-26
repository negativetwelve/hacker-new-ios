//
//  HNBlockTypes.h
//  HackerNews
//
//  Created by Mark Miyashita on 5/25/14.
//  Copyright (c) 2014 Mark Miyashita. All rights reserved.
//

#define BLOCK(rtype, ...) ^rtype(__VA_ARGS__)
#define BLOCK_TYPE(rtype, ...) rtype(^)(__VA_ARGS__)
#define DECLARE_BLOCK(rtype, name, ...) rtype(^name)(__VA_ARGS__)
#define DEFINE_BLOCK(rtype, name, ...) rtype(^name)(__VA_ARGS__) = ^rtype(__VA_ARGS__)
#define TYPEDEF_BLOCK(rtype, name, ...) typedef rtype(^name)(__VA_ARGS__)
#define INVOKE_BLOCK(...) ^{__VA_ARGS__}()
#define DO_ONCE(...) { static dispatch_once_t do_once_token; dispatch_once(&do_once_token, __VA_ARGS__); }

#define STATIC_INITIALIZE(rtype, name, ...) static rtype name; DO_ONCE(^{ name = __VA_ARGS__(); })

TYPEDEF_BLOCK(BOOL, BoolBlock);
TYPEDEF_BLOCK(id, IdBlock);
TYPEDEF_BLOCK(void, VoidBlock);