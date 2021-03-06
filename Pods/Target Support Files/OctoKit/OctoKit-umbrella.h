#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSDateFormatter+OCTFormattingAdditions.h"
#import "NSURL+OCTQueryAdditions.h"
#import "NSValueTransformer+OCTPredefinedTransformerAdditions.h"
#import "OCTAccessToken.h"
#import "OCTAuthorization.h"
#import "OCTBlobTreeEntry.h"
#import "OCTBranch.h"
#import "OCTClient+Activity.h"
#import "OCTClient+Events.h"
#import "OCTClient+Gists.h"
#import "OCTClient+Git.h"
#import "OCTClient+Keys.h"
#import "OCTClient+Notifications.h"
#import "OCTClient+Organizations.h"
#import "OCTClient+Private.h"
#import "OCTClient+Repositories.h"
#import "OCTClient+User.h"
#import "OCTClient.h"
#import "OCTComment.h"
#import "OCTCommit.h"
#import "OCTCommitComment.h"
#import "OCTCommitCommentEvent.h"
#import "OCTCommitTreeEntry.h"
#import "OCTContent.h"
#import "OCTContentTreeEntry.h"
#import "OCTDirectoryContent.h"
#import "OCTEntity.h"
#import "OCTEvent.h"
#import "OCTFileContent.h"
#import "OCTGist.h"
#import "OCTGistFile.h"
#import "OCTGitCommit.h"
#import "OCTGitCommitFile.h"
#import "OCTIssue.h"
#import "OCTIssueComment.h"
#import "OCTIssueCommentEvent.h"
#import "OCTIssueEvent.h"
#import "OCTNotification.h"
#import "OCTObject+Private.h"
#import "OCTObject.h"
#import "OctoKit.h"
#import "OCTOrganization.h"
#import "OCTPlan.h"
#import "OCTPublicKey.h"
#import "OCTPullRequest.h"
#import "OCTPullRequestComment.h"
#import "OCTPullRequestCommentEvent.h"
#import "OCTPullRequestEvent.h"
#import "OCTPushEvent.h"
#import "OCTRef.h"
#import "OCTRefEvent.h"
#import "OCTRepository.h"
#import "OCTResponse.h"
#import "OCTReviewComment.h"
#import "OCTServer+Private.h"
#import "OCTServer.h"
#import "OCTServerMetadata.h"
#import "OCTSubmoduleContent.h"
#import "OCTSymlinkContent.h"
#import "OCTTeam.h"
#import "OCTTree.h"
#import "OCTTreeEntry.h"
#import "OCTUser.h"
#import "RACSignal+OCTClientAdditions.h"

FOUNDATION_EXPORT double OctoKitVersionNumber;
FOUNDATION_EXPORT const unsigned char OctoKitVersionString[];

