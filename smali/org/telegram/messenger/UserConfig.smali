.class public Lorg/telegram/messenger/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# static fields
.field public static allowScreenCapture:Z

.field public static appLocked:Z

.field public static autoLockIn:I

.field public static blockedUsersLoaded:Z

.field public static contactsHash:Ljava/lang/String;

.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public static draftsLoaded:Z

.field public static isWaitingForPasscodeEnter:Z

.field public static lastBroadcastId:I

.field public static lastContactsSyncTime:I

.field public static lastHintsSyncTime:I

.field public static lastLocalId:I

.field public static lastPauseTime:I

.field public static lastSendMessageId:I

.field public static lastUpdateVersion:Ljava/lang/String;

.field public static migrateOffsetAccess:J

.field public static migrateOffsetChannelId:I

.field public static migrateOffsetChatId:I

.field public static migrateOffsetDate:I

.field public static migrateOffsetId:I

.field public static migrateOffsetUserId:I

.field public static notificationsConverted:Z

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static pinnedDialogsLoaded:Z

.field public static pushString:Ljava/lang/String;

.field public static registeredForPush:Z

.field public static saveIncomingPhotos:Z

.field private static final sync:Ljava/lang/Object;

.field public static tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

.field public static useFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const v3, -0x33450

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 26
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 27
    sput v3, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 28
    sput v3, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 29
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 30
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    .line 34
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 38
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 42
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 47
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 48
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 51
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 52
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 53
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 54
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 55
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 56
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .registers 10
    .param p0, "passcode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 368
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-nez v5, :cond_5b

    .line 369
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 370
    .local v4, "result":Z
    if-eqz v4, :cond_55

    .line 372
    const/16 v5, 0x10

    :try_start_14
    new-array v5, v5, [B

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 373
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 374
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 375
    .local v3, "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 376
    .local v0, "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 380
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_55} :catch_56

    .line 399
    .end local v0    # "bytes":[B
    .end local v3    # "passcodeBytes":[B
    .end local v4    # "result":Z
    :cond_55
    :goto_55
    return v4

    .line 381
    .restart local v4    # "result":Z
    :catch_56
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_55

    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Z
    :cond_5b
    :try_start_5b
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 389
    .restart local v3    # "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 390
    .restart local v0    # "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "hash":Ljava/lang/String;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_90} :catch_92

    move-result v4

    goto :goto_55

    .line 395
    .end local v0    # "bytes":[B
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "passcodeBytes":[B
    :catch_92
    move-exception v1

    .line 396
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_55
.end method

.method public static clearConfig()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 403
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 404
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 405
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 406
    const v0, -0x33450

    sput v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 407
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 408
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 409
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 410
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 411
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 412
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 413
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 414
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 415
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 416
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 417
    sput v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 418
    const-string v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 419
    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 420
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 421
    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 422
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 423
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 424
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 425
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 426
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 427
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 428
    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x14370

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 431
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 432
    return-void
.end method

.method public static getClientUserId()I
    .registers 2

    .prologue
    .line 146
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_d

    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_b
    monitor-exit v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 148
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .registers 2

    .prologue
    .line 152
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    .line 154
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getNewMessageId()I
    .registers 3

    .prologue
    .line 60
    sget-object v2, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_3
    sget v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 62
    .local v0, "id":I
    sget v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 63
    monitor-exit v2

    .line 64
    return v0

    .line 63
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static isClientActivated()Z
    .registers 2

    .prologue
    .line 140
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 142
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static loadConfig()V
    .registers 36

    .prologue
    .line 164
    sget-object v30, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v30

    .line 165
    :try_start_3
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v29

    const-string v31, "user.dat"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .local v7, "configFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b1

    move-result v29

    if-eqz v29, :cond_1b4

    .line 168
    :try_start_18
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v7}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    .line 169
    .local v10, "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v28

    .line 170
    .local v28, "ver":I
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11d

    .line 171
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 172
    .local v8, "constructor":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v8, v0}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 173
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 174
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 175
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 176
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 177
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 178
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 179
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 180
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 181
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    .line 182
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 183
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 184
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 185
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    .line 186
    .local v26, "val":I
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_ce

    .line 187
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 189
    :cond_ce
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 190
    sget-object v29, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v31, Lorg/telegram/messenger/UserConfig$1;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lorg/telegram/messenger/UserConfig$1;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 208
    .end local v8    # "constructor":I
    .end local v26    # "val":I
    :cond_e8
    :goto_e8
    sget v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const v31, -0x33450

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_f8

    .line 209
    const v29, -0x33450

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 211
    :cond_f8
    sget v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const v31, -0x33450

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_108

    .line 212
    const v29, -0x33450

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 214
    :cond_108
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 215
    sget-object v29, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v31, Lorg/telegram/messenger/UserConfig$2;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lorg/telegram/messenger/UserConfig$2;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_11b} :catch_1ab
    .catchall {:try_start_18 .. :try_end_11b} :catchall_1b1

    .line 364
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v28    # "ver":I
    :cond_11b
    :goto_11b
    :try_start_11b
    monitor-exit v30
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_1b1

    .line 365
    return-void

    .line 196
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .restart local v28    # "ver":I
    :cond_11d
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e8

    .line 197
    const/16 v29, 0x0

    :try_start_127
    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 198
    .restart local v8    # "constructor":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v8, v0}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 200
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v31, "userconfing"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 201
    .local v24, "preferences":Landroid/content/SharedPreferences;
    const-string v29, "registeredForPush"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 202
    const-string v29, "pushString2"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 203
    const-string v29, "lastSendMessageId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 204
    const-string v29, "lastLocalId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 205
    const-string v29, "contactsHash"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 206
    const-string v29, "saveIncomingPhotos"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_1a9} :catch_1ab
    .catchall {:try_start_127 .. :try_end_1a9} :catchall_1b1

    goto/16 :goto_e8

    .line 221
    .end local v8    # "constructor":I
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v24    # "preferences":Landroid/content/SharedPreferences;
    .end local v28    # "ver":I
    :catch_1ab
    move-exception v17

    .line 222
    .local v17, "e":Ljava/lang/Exception;
    :try_start_1ac
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_11b

    .line 364
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_1b1
    move-exception v29

    monitor-exit v30
    :try_end_1b3
    .catchall {:try_start_1ac .. :try_end_1b3} :catchall_1b1

    throw v29

    .line 225
    :cond_1b4
    :try_start_1b4
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v31, "userconfing"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 226
    .restart local v24    # "preferences":Landroid/content/SharedPreferences;
    const-string v29, "registeredForPush"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 227
    const-string v29, "pushString2"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 228
    const-string v29, "lastSendMessageId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 229
    const-string v29, "lastLocalId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 230
    const-string v29, "contactsHash"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 231
    const-string v29, "saveIncomingPhotos"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 232
    const-string v29, "lastBroadcastId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 233
    const-string v29, "blockedUsersLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 234
    const-string v29, "passcodeHash1"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 235
    const-string v29, "appLocked"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 236
    const-string v29, "passcodeType"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 237
    const-string v29, "autoLockIn"

    const/16 v31, 0xe10

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 238
    const-string v29, "lastPauseTime"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 239
    const-string v29, "useFingerprint"

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 240
    const-string v29, "lastUpdateVersion2"

    const-string v31, "3.5"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 241
    const-string v29, "lastContactsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    const v32, 0x14370

    sub-int v31, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 242
    const-string v29, "lastHintsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    const v32, 0x15f90

    sub-int v31, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 243
    const-string v29, "draftsLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 244
    const-string v29, "notificationsConverted"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 245
    const-string v29, "allowScreenCapture"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 246
    const-string v29, "pinnedDialogsLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 248
    sget-object v29, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_355

    sget v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-nez v29, :cond_355

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    const-wide/16 v34, 0x258

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v29, v0

    sput v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 252
    :cond_355
    const-string v29, "migrateOffsetId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 253
    sget v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_3bf

    .line 254
    const-string v29, "migrateOffsetDate"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 255
    const-string v29, "migrateOffsetUserId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 256
    const-string v29, "migrateOffsetChatId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 257
    const-string v29, "migrateOffsetChannelId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 258
    const-string v29, "migrateOffsetAccess"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 261
    :cond_3bf
    const-string v29, "tmpPassword"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 262
    .local v25, "string":Ljava/lang/String;
    if-eqz v25, :cond_3f7

    .line 263
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 264
    .local v6, "bytes":[B
    if-eqz v6, :cond_3f7

    .line 265
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 266
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 267
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 271
    .end local v6    # "bytes":[B
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    :cond_3f7
    const-string v29, "user"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 272
    if-eqz v25, :cond_42f

    .line 273
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 274
    .restart local v6    # "bytes":[B
    if-eqz v6, :cond_42f

    .line 275
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 276
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 277
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 280
    .end local v6    # "bytes":[B
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    :cond_42f
    const-string v29, "passcodeSalt"

    const-string v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 281
    .local v23, "passcodeSaltString":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_4e1

    .line 282
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 287
    :goto_44f
    sget-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z
    :try_end_451
    .catchall {:try_start_1b4 .. :try_end_451} :catchall_1b1

    if-nez v29, :cond_11b

    .line 289
    :try_start_453
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v9, "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v31, "Notifications"

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 291
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 292
    .local v5, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v29, "SoundDefault"

    const v31, 0x7f07051c

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, "defaultSound":Ljava/lang/String;
    const/16 v16, 0x0

    .line 294
    .local v16, "defaultVibrate":I
    const/4 v14, 0x0

    .line 295
    .local v14, "defaultPriority":I
    const/4 v11, 0x0

    .line 296
    .local v11, "defaultColor":I
    const/4 v12, 0x2

    .line 297
    .local v12, "defaultMaxCount":I
    const/16 v13, 0xb4

    .line 298
    .local v13, "defaultMaxDelay":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_488
    :goto_488
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_60c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 299
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 300
    .local v22, "key":Ljava/lang/String;
    const-string v31, "sound_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_4ed

    .line 301
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 302
    .local v27, "value":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 303
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 304
    .local v18, "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 305
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d1
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_4d1} :catch_4d2
    .catchall {:try_start_453 .. :try_end_4d1} :catchall_1b1

    goto :goto_488

    .line 357
    .end local v5    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v9    # "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "defaultColor":I
    .end local v12    # "defaultMaxCount":I
    .end local v13    # "defaultMaxDelay":I
    .end local v14    # "defaultPriority":I
    .end local v15    # "defaultSound":Ljava/lang/String;
    .end local v16    # "defaultVibrate":I
    .end local v18    # "dialogId":J
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :catch_4d2
    move-exception v17

    .line 358
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_4d3
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 360
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_4d6
    :goto_4d6
    const/16 v29, 0x1

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 361
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_11b

    .line 284
    :cond_4e1
    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B
    :try_end_4eb
    .catchall {:try_start_4d3 .. :try_end_4eb} :catchall_1b1

    goto/16 :goto_44f

    .line 308
    .restart local v5    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v9    # "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11    # "defaultColor":I
    .restart local v12    # "defaultMaxCount":I
    .restart local v13    # "defaultMaxDelay":I
    .restart local v14    # "defaultPriority":I
    .restart local v15    # "defaultSound":Ljava/lang/String;
    .restart local v16    # "defaultVibrate":I
    .restart local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v22    # "key":Ljava/lang/String;
    :cond_4ed
    :try_start_4ed
    const-string v31, "vibrate_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_528

    .line 309
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 310
    .local v27, "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-eq v0, v1, :cond_488

    .line 311
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 312
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 313
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_488

    .line 316
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_528
    const-string v31, "priority_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_561

    .line 317
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 318
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v14, :cond_488

    .line 319
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 320
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 321
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_488

    .line 324
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_561
    const-string v31, "color_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_59a

    .line 325
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 326
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v11, :cond_488

    .line 327
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 328
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 329
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_488

    .line 332
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_59a
    const-string v31, "smart_max_count_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_5d3

    .line 333
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 334
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v12, :cond_488

    .line 335
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 336
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 337
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_488

    .line 340
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_5d3
    const-string v31, "smart_delay_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_488

    .line 341
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 342
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v13, :cond_488

    .line 343
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 344
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_488

    .line 345
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_488

    .line 350
    .end local v18    # "dialogId":J
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_60c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_4d6

    .line 351
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 352
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_617
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_64c

    .line 353
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "custom_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_617

    .line 355
    :cond_64c
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_64f
    .catch Ljava/lang/Exception; {:try_start_4ed .. :try_end_64f} :catch_4d2
    .catchall {:try_start_4ed .. :try_end_64f} :catchall_1b1

    goto/16 :goto_4d6
.end method

.method public static saveConfig(Z)V
    .registers 2
    .param p0, "withFile"    # Z

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    .line 69
    return-void
.end method

.method public static saveConfig(ZLjava/io/File;)V
    .registers 12
    .param p0, "withFile"    # Z
    .param p1, "oldFile"    # Ljava/io/File;

    .prologue
    .line 72
    sget-object v6, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 74
    :try_start_3
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "userconfing"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 75
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 76
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "registeredForPush"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v5, "pushString2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v5, "lastSendMessageId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v5, "lastLocalId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v5, "contactsHash"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v5, "saveIncomingPhotos"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v5, "lastBroadcastId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v5, "blockedUsersLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v5, "passcodeHash1"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v7, "passcodeSalt"

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-lez v5, :cond_12d

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_5d
    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v5, "appLocked"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string v5, "passcodeType"

    sget v7, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string v5, "autoLockIn"

    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v5, "lastPauseTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v5, "lastUpdateVersion2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v5, "lastContactsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v5, "useFingerprint"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v5, "lastHintsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v5, "draftsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v5, "notificationsConverted"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v5, "allowScreenCapture"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v5, "pinnedDialogsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v5, "migrateOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_e3

    .line 101
    const-string v5, "migrateOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v5, "migrateOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v5, "migrateOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v5, "migrateOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string v5, "migrateOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    :cond_e3
    sget-object v5, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v5, :cond_131

    .line 108
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 109
    .local v0, "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 110
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "string":Ljava/lang/String;
    const-string v5, "tmpPassword"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 117
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "string":Ljava/lang/String;
    :goto_102
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_13f

    .line 118
    if-eqz p0, :cond_123

    .line 119
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 120
    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 121
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 122
    .restart local v4    # "string":Ljava/lang/String;
    const-string v5, "user"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 129
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "string":Ljava/lang/String;
    :cond_123
    :goto_123
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    if-eqz p1, :cond_12b

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12b} :catch_137
    .catchall {:try_start_3 .. :try_end_12b} :catchall_13c

    .line 136
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_12b
    :goto_12b
    :try_start_12b
    monitor-exit v6
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_13c

    .line 137
    return-void

    .line 85
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_12d
    :try_start_12d
    const-string v5, ""

    goto/16 :goto_5d

    .line 114
    :cond_131
    const-string v5, "tmpPassword"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_136} :catch_137
    .catchall {:try_start_12d .. :try_end_136} :catchall_13c

    goto :goto_102

    .line 133
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_137
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_138
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_12b

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_13c
    move-exception v5

    monitor-exit v6
    :try_end_13e
    .catchall {:try_start_138 .. :try_end_13e} :catchall_13c

    throw v5

    .line 126
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_13f
    :try_start_13f
    const-string v5, "user"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_144} :catch_137
    .catchall {:try_start_13f .. :try_end_144} :catchall_13c

    goto :goto_123
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .registers 3
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 158
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_3
    sput-object p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
