.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;
.super Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiSegmentRepresentation"
.end annotation


# instance fields
.field private final segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;)V
    .registers 15
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # J
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p5, "baseUrl"    # Ljava/lang/String;
    .param p6, "segmentBase"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    .prologue
    .line 241
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;-><init>(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$1;)V

    .line 242
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    .line 243
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDurationUs(IJ)J
    .registers 6
    .param p1, "segmentIndex"    # I
    .param p2, "periodDurationUs"    # J

    .prologue
    .line 279
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstSegmentNum()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()I

    move-result v0

    return v0
.end method

.method public getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
    .registers 1

    .prologue
    .line 252
    return-object p0
.end method

.method public getIndexUri()Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastSegmentNum(J)I
    .registers 4
    .param p1, "periodDurationUs"    # J

    .prologue
    .line 289
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getLastSegmentNum(J)I

    move-result v0

    return v0
.end method

.method public getSegmentNum(JJ)I
    .registers 6
    .param p1, "timeUs"    # J
    .param p3, "periodDurationUs"    # J

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)I

    move-result v0

    return v0
.end method

.method public getSegmentUrl(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .registers 3
    .param p1, "segmentIndex"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentUrl(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUs(I)J
    .registers 4
    .param p1, "segmentIndex"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExplicit()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->isExplicit()Z

    move-result v0

    return v0
.end method
