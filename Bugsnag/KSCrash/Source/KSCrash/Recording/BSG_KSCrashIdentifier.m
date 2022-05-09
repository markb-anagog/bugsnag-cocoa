#import "BSG_KSCrashIdentifier.h"

#import "BSG_KSCrash.h"

#import <Foundation/Foundation.h>

#include <string.h>

static char *report_directory;

void bsg_kscrash_generate_report_initialize(const char *directory) {
    report_directory = directory ? strdup(directory) : NULL;
}

char *bsg_kscrash_generate_report_identifier(void) {
    return strdup([[[NSUUID UUID] UUIDString] UTF8String]);
}

char *bsg_kscrash_generate_report_path(const char *identifier, bool is_recrash_report) {
    if (identifier == NULL) {
        return NULL;
    }
    char *type = is_recrash_report ? "RecrashReport" : "CrashReport";
    return strdup([NSString stringWithFormat:@"%s/%s-%s.json", report_directory, type, identifier].UTF8String);
}
