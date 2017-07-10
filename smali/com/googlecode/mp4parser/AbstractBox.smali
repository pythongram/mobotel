.class public abstract Lcom/googlecode/mp4parser/AbstractBox;
.super Ljava/lang/Object;
.source "AbstractBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Lcom/googlecode/mp4parser/util/Logger;


# instance fields
.field private content:Ljava/nio/ByteBuffer;

.field contentStartPosition:J

.field dataSource:Lcom/googlecode/mp4parser/DataSource;

.field private deadBytes:Ljava/nio/ByteBuffer;

.field isParsed:Z

.field isRead:Z

.field memMapSize:J

.field offset:J

.field private parent:Lcom/coremedia/iso/boxes/Container;

.field protected type:Ljava/lang/String;

.field private userType:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Lcom/googlecode/mp4parser/AbstractBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/AbstractBox;->$assertionsDisabled:Z

    .line 47
    const-class v0, Lcom/googlecode/mp4parser/AbstractBox;

    invoke-static {v0}, Lcom/googlecode/mp4parser/util/Logger;->getLogger(Ljava/lang/Class;)Lcom/googlecode/mp4parser/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    return-void

    .line 46
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    .line 83
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z

    .line 85
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userType"    # [B

    .prologue
    const/4 v2, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    .line 89
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/googlecode/mp4parser/AbstractBox;->userType:[B

    .line 91
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z

    .line 92
    iput-boolean v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    .line 93
    return-void
.end method

.method private getHeader(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isSmallBox()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 302
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 303
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 309
    :goto_18
    const-string v0, "uuid"

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 310
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getUserType()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    :cond_2b
    return-void

    .line 305
    :cond_2c
    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 306
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_18
.end method

.method private isSmallBox()Z
    .registers 11

    .prologue
    const-wide v8, 0x100000000L

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    const/16 v0, 0x8

    .line 286
    .local v0, "baseSize":I
    const-string v3, "uuid"

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 287
    add-int/lit8 v0, v0, 0x10

    .line 289
    :cond_17
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z

    if-eqz v3, :cond_48

    .line 290
    iget-boolean v3, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    if-eqz v3, :cond_3a

    .line 291
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J

    move-result-wide v4

    iget-object v3, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    :goto_2d
    int-to-long v6, v3

    add-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-gez v3, :cond_38

    .line 296
    :cond_35
    :goto_35
    return v1

    :cond_36
    move v3, v2

    .line 291
    goto :goto_2d

    :cond_38
    move v1, v2

    goto :goto_35

    .line 293
    :cond_3a
    iget-object v3, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v3, v0

    int-to-long v4, v3

    cmp-long v3, v4, v8

    if-ltz v3, :cond_35

    move v1, v2

    goto :goto_35

    .line 296
    :cond_48
    iget-wide v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-ltz v3, :cond_35

    move v1, v2

    goto :goto_35
.end method

.method private declared-synchronized readContent()V
    .registers 7

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-nez v1, :cond_2c

    .line 67
    :try_start_5
    sget-object v1, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mem mapping "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->contentStartPosition:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_29} :catch_2e
    .catchall {:try_start_5 .. :try_end_29} :catchall_35

    .line 72
    const/4 v1, 0x1

    :try_start_2a
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_35

    .line 74
    :cond_2c
    monitor-exit p0

    return-void

    .line 69
    :catch_2e
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    :try_start_2f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private verify(Ljava/nio/ByteBuffer;)Z
    .registers 15
    .param p1, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J

    move-result-wide v10

    iget-object v8, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_a2

    iget-object v8, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    :goto_e
    int-to-long v8, v8

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 249
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/AbstractBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 250
    iget-object v8, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_2c

    .line 251
    iget-object v8, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 252
    :goto_24
    iget-object v8, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_a5

    .line 256
    :cond_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-eq v8, v9, :cond_ac

    .line 261
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": remaining differs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 262
    sget-object v8, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": remaining differs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 263
    const/4 v8, 0x0

    .line 280
    :goto_a1
    return v8

    .line 248
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    :cond_a2
    const/4 v8, 0x0

    goto/16 :goto_e

    .line 253
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    :cond_a5
    iget-object v8, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_24

    .line 265
    :cond_ac
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 266
    .local v5, "p":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "j":I
    :goto_bc
    if-ge v3, v5, :cond_c0

    .line 280
    const/4 v8, 0x1

    goto :goto_a1

    .line 267
    :cond_c0
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    .line 268
    .local v6, "v1":B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    .line 269
    .local v7, "v2":B
    if-eq v6, v7, :cond_13b

    .line 270
    sget-object v8, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    const-string v9, "%s: buffers differ at %d: %2X/%2X"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/util/Logger;->logError(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    new-array v0, v8, [B

    .line 272
    .local v0, "b1":[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    new-array v1, v8, [B

    .line 273
    .local v1, "b2":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 274
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 275
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "original      : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/coremedia/iso/Hex;->encodeHex([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reconstructed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-static {v1, v10}, Lcom/coremedia/iso/Hex;->encodeHex([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    const/4 v8, 0x0

    goto/16 :goto_a1

    .line 266
    .end local v0    # "b1":[B
    .end local v1    # "b2":[B
    :cond_13b
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_bc
.end method


# virtual methods
.method protected abstract _parseDetails(Ljava/nio/ByteBuffer;)V
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 10
    .param p1, "os"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 138
    iget-boolean v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z

    if-eqz v4, :cond_73

    .line 139
    iget-boolean v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    if-eqz v4, :cond_40

    .line 140
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getHeader(Ljava/nio/ByteBuffer;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 143
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_30

    .line 144
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 145
    :goto_28
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_3a

    .line 149
    :cond_30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 163
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_39
    return-void

    .line 146
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3a
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_28

    .line 151
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_40
    invoke-direct {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isSmallBox()Z

    move-result v4

    if-eqz v4, :cond_6f

    :goto_46
    const-string v4, "uuid"

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    :goto_52
    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 152
    .local v7, "header":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v7}, Lcom/googlecode/mp4parser/AbstractBox;->getHeader(Ljava/nio/ByteBuffer;)V

    .line 153
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 154
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_39

    .end local v7    # "header":Ljava/nio/ByteBuffer;
    :cond_6f
    move v1, v2

    .line 151
    goto :goto_46

    :cond_71
    move v2, v3

    goto :goto_52

    .line 158
    :cond_73
    invoke-direct {p0}, Lcom/googlecode/mp4parser/AbstractBox;->isSmallBox()Z

    move-result v4

    if-eqz v4, :cond_a1

    :goto_79
    const-string v4, "uuid"

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    :goto_85
    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 159
    .restart local v7    # "header":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v7}, Lcom/googlecode/mp4parser/AbstractBox;->getHeader(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 161
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    iget-wide v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->contentStartPosition:J

    iget-wide v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/googlecode/mp4parser/DataSource;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    goto :goto_39

    .end local v7    # "header":Ljava/nio/ByteBuffer;
    :cond_a1
    move v1, v2

    .line 158
    goto :goto_79

    :cond_a3
    move v2, v3

    goto :goto_85
.end method

.method protected abstract getContent(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract getContentSize()J
.end method

.method public getOffset()J
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->offset:J

    return-wide v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/Container;
    .registers 2
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/Container;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 316
    invoke-static {p0}, Lcom/googlecode/mp4parser/util/Path;->createPath(Lcom/coremedia/iso/boxes/Box;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-boolean v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z

    if-eqz v2, :cond_40

    iget-boolean v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getContentSize()J

    move-result-wide v0

    .line 205
    .local v0, "size":J
    :goto_d
    const-wide v4, 0xfffffff8L

    cmp-long v2, v0, v4

    if-ltz v2, :cond_43

    const/16 v2, 0x8

    .line 204
    :goto_18
    add-int/lit8 v4, v2, 0x8

    .line 206
    const-string v2, "uuid"

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/16 v2, 0x10

    :goto_28
    add-int/2addr v2, v4

    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 207
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_47

    :goto_2f
    int-to-long v2, v3

    add-long/2addr v0, v2

    .line 208
    return-wide v0

    .line 203
    .end local v0    # "size":J
    :cond_32
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    :goto_3c
    int-to-long v0, v2

    goto :goto_d

    :cond_3e
    move v2, v3

    goto :goto_3c

    :cond_40
    iget-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    goto :goto_d

    .restart local v0    # "size":J
    :cond_43
    move v2, v3

    .line 205
    goto :goto_18

    :cond_45
    move v2, v3

    .line 206
    goto :goto_28

    .line 207
    :cond_47
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    goto :goto_2f
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()[B
    .registers 2
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->userType:[B

    return-object v0
.end method

.method public isParsed()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    return v0
.end method

.method public parse(Lcom/googlecode/mp4parser/DataSource;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .registers 11
    .param p1, "dataSource"    # Lcom/googlecode/mp4parser/DataSource;
    .param p2, "header"    # Ljava/nio/ByteBuffer;
    .param p3, "contentSize"    # J
    .param p5, "boxParser"    # Lcom/coremedia/iso/BoxParser;
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->contentStartPosition:J

    .line 127
    iget-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->contentStartPosition:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->offset:J

    .line 128
    iput-wide p3, p0, Lcom/googlecode/mp4parser/AbstractBox;->memMapSize:J

    .line 129
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->dataSource:Lcom/googlecode/mp4parser/DataSource;

    .line 131
    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->position()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/DataSource;->position(J)V

    .line 132
    iput-boolean v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->isRead:Z

    .line 133
    iput-boolean v4, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    .line 135
    return-void
.end method

.method public final declared-synchronized parseDetails()V
    .registers 5

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/AbstractBox;->readContent()V

    .line 172
    sget-object v1, Lcom/googlecode/mp4parser/AbstractBox;->LOG:Lcom/googlecode/mp4parser/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsing details of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4d

    .line 174
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    .line 175
    .local v0, "content":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->isParsed:Z

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->_parseDetails(Ljava/nio/ByteBuffer;)V

    .line 178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_37

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    .line 181
    :cond_37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/mp4parser/AbstractBox;->content:Ljava/nio/ByteBuffer;

    .line 182
    sget-boolean v1, Lcom/googlecode/mp4parser/AbstractBox;->$assertionsDisabled:Z

    if-nez v1, :cond_4d

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;->verify(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_4d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4a

    .line 171
    .end local v0    # "content":Ljava/nio/ByteBuffer;
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 184
    :cond_4d
    monitor-exit p0

    return-void
.end method

.method protected setDeadBytes(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "newDeadBytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->deadBytes:Ljava/nio/ByteBuffer;

    .line 194
    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/Container;)V
    .registers 2
    .param p1, "parent"    # Lcom/coremedia/iso/boxes/Container;
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractBox;->parent:Lcom/coremedia/iso/boxes/Container;

    .line 229
    return-void
.end method
