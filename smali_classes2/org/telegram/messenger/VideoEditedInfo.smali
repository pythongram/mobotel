.class public Lorg/telegram/messenger/VideoEditedInfo;
.super Ljava/lang/Object;
.source "VideoEditedInfo.java"


# instance fields
.field public bitrate:I

.field public endTime:J

.field public estimatedDuration:J

.field public estimatedSize:J

.field public originalHeight:I

.field public originalPath:Ljava/lang/String;

.field public originalWidth:I

.field public resultHeight:I

.field public resultWidth:I

.field public rotationValue:I

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "-1_%d_%d_%d_%d_%d_%d_%d_%d_%s"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseString(Ljava/lang/String;)Z
    .registers 10
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_a

    .line 57
    :goto_9
    return v3

    .line 35
    :cond_a
    :try_start_a
    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "args":[Ljava/lang/String;
    array-length v5, v1

    const/16 v6, 0xa

    if-lt v5, v6, :cond_92

    .line 37
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 38
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 39
    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 40
    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 41
    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 42
    const/4 v5, 0x6

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 43
    const/4 v5, 0x7

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 44
    const/16 v5, 0x8

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 45
    const/16 v0, 0x9

    .local v0, "a":I
    :goto_60
    array-length v5, v1

    if-ge v0, v5, :cond_92

    .line 46
    iget-object v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    if-nez v5, :cond_6e

    .line 47
    aget-object v5, v1, v0

    iput-object v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 45
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 49
    :cond_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_8b} :catch_8c

    goto :goto_6b

    .line 54
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :catch_8c
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":[Ljava/lang/String;
    :cond_92
    move v3, v4

    .line 53
    goto/16 :goto_9
.end method
