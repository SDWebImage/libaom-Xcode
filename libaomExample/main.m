//
//  main.m
//  libaomExample
//
//  Created by lizhuoli on 2019/4/5.
//  Copyright © 2019 SDWebImage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <libaom/libaom.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        printf("%s", aom_codec_version_str());
    }
    return 0;
}
