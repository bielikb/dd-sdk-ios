/*
 * Unless explicitly stated otherwise all files in this repository are licensed under the Apache License Version 2.0.
 * This product includes software developed at Datadog (https://www.datadoghq.com/).
 * Copyright 2019-Present Datadog, Inc.
 */

#if os(iOS)
import Foundation
import DatadogInternal

internal class ResourcesFeature: DatadogRemoteFeature {
    static var name = "session-replay-resources"

    let messageReceiver: FeatureMessageReceiver = NOPFeatureMessageReceiver()

    let requestBuilder: FeatureRequestBuilder

    init(
        core: DatadogCoreProtocol,
        configuration: SessionReplay.Configuration
    ) {
        self.requestBuilder = ResourceRequestBuilder(
            customUploadURL: configuration.customEndpoint,
            telemetry: core.telemetry
        )
    }
}
#endif
