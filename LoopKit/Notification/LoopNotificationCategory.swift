//
//  LoopNotificationCategory.swift
//  LoopKit
//
//  Created by Pete Schwamb on 4/8/19.
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import Foundation

public enum LoopNotificationCategory: String {
    case bolusFailure
    case loopNotRunning
    case pumpBatteryLow
    case pumpReservoirEmpty
    case pumpReservoirLow
    case pumpExpirationWarning
    case pumpExpired
    case pumpFault
    case alert
    case remoteBolus
    case remoteBolusFailure
    case remoteCarbs
    case remoteCarbsFailure
    case missedMeal
    case presetReminder
    case requiredUpdate
    /// A service asking the person to approve a remote command before Loop acts on it.
    case remoteCommandApproval
}

/// The answers on a `remoteCommandApproval` alert. A service uses these identifiers for its alert's
/// `Alert.UserAlertAction`s and receives the person's choice in `AlertResponder.handleAlertAction`,
/// from the notification, Loop's in-app alert or the watch.
public enum RemoteCommandApprovalAction: String {
    case approve = "remoteCommandApprove"
    case decline = "remoteCommandDecline"
}
