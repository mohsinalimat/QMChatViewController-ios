//
//  QMChatContactRequestCell.m
//  Q-municate
//
//  Created by Andrey Ivanov on 14.05.15.
//  Copyright (c) 2015 Quickblox. All rights reserved.
//

#import "QMChatContactRequestCell.h"
#import "QMChatCellLayoutAttributes.h"

@implementation QMChatContactRequestCell

#pragma mark - Actions

- (IBAction)pressRejectRequestBtn:(id)sender {
    
    [self.actionsHandler chatContactRequestDidAccept:NO sender:self];
}

- (IBAction)pressAcceptBtn:(id)sender {
    
    [self.actionsHandler chatContactRequestDidAccept:YES sender:self];
}

+ (QMChatCellLayoutModel)layoutModel {
    
    QMChatCellLayoutModel contactRequestModel = {
        .staticContainerSize = CGSizeMake(225, 130)
    };
    
    return contactRequestModel;
}

@end
