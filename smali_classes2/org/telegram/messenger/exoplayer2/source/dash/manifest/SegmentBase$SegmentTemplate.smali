.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
.super Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegmentTemplate"
.end annotation


# instance fields
.field final initializationTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

.field final mediaTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)V
    .registers 12
    .param p1, "initialization"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .param p10, "initializationTemplate"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p11, "mediaTemplate"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p9, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    invoke-direct/range {p0 .. p9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;)V

    .line 296
    iput-object p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 297
    iput-object p11, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 298
    return-void
.end method


# virtual methods
.method public getInitialization(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .registers 10
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    if-eqz v0, :cond_1d

    .line 303
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v3, v6, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "urlString":Ljava/lang/String;
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 307
    .end local v3    # "urlString":Ljava/lang/String;
    :goto_1c
    return-object v2

    :cond_1d
    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getInitialization(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    goto :goto_1c
.end method

.method public getLastSegmentNum(J)I
    .registers 10
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 326
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_10

    .line 327
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 332
    :goto_f
    return v2

    .line 328
    :cond_10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-nez v2, :cond_1b

    .line 329
    const/4 v2, -0x1

    goto :goto_f

    .line 331
    :cond_1b
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    div-long v0, v2, v4

    .line 332
    .local v0, "durationUs":J
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:I

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->ceilDivide(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_f
.end method

.method public getSegmentUrl(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .registers 15
    .param p1, "representation"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .param p2, "sequenceNumber"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 315
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 319
    .local v4, "time":J
    :goto_12
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget v3, v2, Lorg/telegram/messenger/exoplayer2/Format;->bitrate:I

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "uriString":Ljava/lang/String;
    new-instance v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6

    .line 317
    .end local v4    # "time":J
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_2b
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    mul-long v4, v0, v2

    .restart local v4    # "time":J
    goto :goto_12
.end method
