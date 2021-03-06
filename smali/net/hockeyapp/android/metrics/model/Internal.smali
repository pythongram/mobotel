.class public Lnet/hockeyapp/android/metrics/model/Internal;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lnet/hockeyapp/android/metrics/model/IJsonSerializable;
.implements Ljava/io/Serializable;


# instance fields
.field private accountId:Ljava/lang/String;

.field private agentVersion:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private applicationType:Ljava/lang/String;

.field private dataCollectorReceivedTime:Ljava/lang/String;

.field private flowType:Ljava/lang/String;

.field private instrumentationKey:Ljava/lang/String;

.field private isAudit:Ljava/lang/String;

.field private profileClassId:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private requestSource:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private telemetryItemId:Ljava/lang/String;

.field private trackingSourceId:Ljava/lang/String;

.field private trackingType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/Internal;->InitializeFields()V

    .line 94
    return-void
.end method


# virtual methods
.method protected InitializeFields()V
    .registers 1

    .prologue
    .line 482
    return-void
.end method

.method public addToHashMap(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 314
    const-string v0, "ai.internal.sdkVersion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_b
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 317
    const-string v0, "ai.internal.agentVersion"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_16
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 320
    const-string v0, "ai.internal.dataCollectorReceivedTime"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_21
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 323
    const-string v0, "ai.internal.profileId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_2c
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 326
    const-string v0, "ai.internal.profileClassId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_37
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 329
    const-string v0, "ai.internal.accountId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_42
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 332
    const-string v0, "ai.internal.applicationName"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_4d
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 335
    const-string v0, "ai.internal.instrumentationKey"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_58
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 338
    const-string v0, "ai.internal.telemetryItemId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_63
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    if-eqz v0, :cond_6e

    .line 341
    const-string v0, "ai.internal.applicationType"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_6e
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    if-eqz v0, :cond_79

    .line 344
    const-string v0, "ai.internal.requestSource"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_79
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 347
    const-string v0, "ai.internal.flowType"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_84
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 350
    const-string v0, "ai.internal.isAudit"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_8f
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    if-eqz v0, :cond_9a

    .line 353
    const-string v0, "ai.internal.trackingSourceId"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_9a
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    if-eqz v0, :cond_a5

    .line 356
    const-string v0, "ai.internal.trackingType"

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_a5
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataCollectorReceivedTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentationKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAudit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileClassId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTelemetryItemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Ljava/io/Writer;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    if-nez p1, :cond_a

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_a
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 373
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/model/Internal;->serializeContent(Ljava/io/Writer;)Ljava/lang/String;

    .line 374
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 375
    return-void
.end method

.method protected serializeContent(Ljava/io/Writer;)Ljava/lang/String;
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const-string v0, ""

    .line 384
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.sdkVersion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 387
    const-string v0, ","

    .line 390
    :cond_27
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.agentVersion\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 393
    const-string v0, ","

    .line 396
    :cond_4c
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.dataCollectorReceivedTime\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 399
    const-string v0, ","

    .line 402
    :cond_71
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_96

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.profileId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 405
    const-string v0, ","

    .line 408
    :cond_96
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    if-eqz v1, :cond_bb

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.profileClassId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    const-string v0, ","

    .line 414
    :cond_bb
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    if-eqz v1, :cond_e0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.accountId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 417
    const-string v0, ","

    .line 420
    :cond_e0
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    if-eqz v1, :cond_105

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.applicationName\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    const-string v0, ","

    .line 426
    :cond_105
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    if-eqz v1, :cond_12a

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.instrumentationKey\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    const-string v0, ","

    .line 432
    :cond_12a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    if-eqz v1, :cond_14f

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.telemetryItemId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v0, ","

    .line 438
    :cond_14f
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    if-eqz v1, :cond_174

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.applicationType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    const-string v0, ","

    .line 444
    :cond_174
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    if-eqz v1, :cond_199

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.requestSource\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 447
    const-string v0, ","

    .line 450
    :cond_199
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    if-eqz v1, :cond_1be

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.flowType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 453
    const-string v0, ","

    .line 456
    :cond_1be
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    if-eqz v1, :cond_1e3

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.isAudit\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    const-string v0, ","

    .line 462
    :cond_1e3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    if-eqz v1, :cond_208

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.trackingSourceId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 465
    const-string v0, ","

    .line 468
    :cond_208
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    if-eqz v1, :cond_22d

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"ai.internal.trackingType\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    invoke-static {v1}, Lnet/hockeyapp/android/metrics/JsonHelper;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 471
    const-string v0, ","

    .line 474
    :cond_22d
    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->accountId:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setAgentVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->agentVersion:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationName:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setApplicationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->applicationType:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setDataCollectorReceivedTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->dataCollectorReceivedTime:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setFlowType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->flowType:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setInstrumentationKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->instrumentationKey:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setIsAudit(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->isAudit:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setProfileClassId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileClassId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->profileId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setRequestSource(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->requestSource:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->sdkVersion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTelemetryItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->telemetryItemId:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setTrackingSourceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingSourceId:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setTrackingType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/model/Internal;->trackingType:Ljava/lang/String;

    .line 304
    return-void
.end method
