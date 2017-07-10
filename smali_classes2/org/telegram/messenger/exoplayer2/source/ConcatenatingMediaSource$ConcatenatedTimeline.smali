.class final Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final sourcePeriodOffsets:[I

.field private final sourceWindowOffsets:[I

.field private final timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public constructor <init>([Lorg/telegram/messenger/exoplayer2/Timeline;)V
    .registers 9
    .param p1, "timelines"    # [Lorg/telegram/messenger/exoplayer2/Timeline;

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    .line 152
    array-length v6, p1

    new-array v2, v6, [I

    .line 153
    .local v2, "sourcePeriodOffsets":[I
    array-length v6, p1

    new-array v3, v6, [I

    .line 154
    .local v3, "sourceWindowOffsets":[I
    const/4 v1, 0x0

    .line 155
    .local v1, "periodCount":I
    const/4 v5, 0x0

    .line 156
    .local v5, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v6, p1

    if-ge v0, v6, :cond_22

    .line 157
    aget-object v4, p1, v0

    .line 158
    .local v4, "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 159
    aput v1, v2, v0

    .line 160
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 161
    aput v5, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 163
    .end local v4    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    :cond_22
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 164
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    .line 165
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    .line 166
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    return v0
.end method

.method private getFirstPeriodIndexInSource(I)I
    .registers 4
    .param p1, "sourceIndex"    # I

    .prologue
    .line 228
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_3
.end method

.method private getFirstWindowIndexInSource(I)I
    .registers 4
    .param p1, "sourceIndex"    # I

    .prologue
    .line 236
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_3
.end method

.method private getSourceIndexForPeriod(I)I
    .registers 5
    .param p1, "periodIndex"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSourceIndexForWindow(I)I
    .registers 5
    .param p1, "windowIndex"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 8
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v5, -0x1

    .line 206
    instance-of v4, p1, Landroid/util/Pair;

    if-nez v4, :cond_6

    .line 219
    :cond_5
    :goto_5
    return v5

    :cond_6
    move-object v3, p1

    .line 209
    check-cast v3, Landroid/util/Pair;

    .line 210
    .local v3, "sourceIndexAndPeriodId":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 213
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 214
    .local v2, "sourceIndex":I
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 215
    .local v0, "periodId":Ljava/lang/Object;
    if-ltz v2, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 218
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 219
    .local v1, "periodIndexInSource":I
    if-ne v1, v5, :cond_2d

    move v4, v5

    :goto_2b
    move v5, v4

    goto :goto_5

    .line 220
    :cond_2d
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_2b
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .registers 9
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForPeriod(I)I

    move-result v2

    .line 194
    .local v2, "sourceIndex":I
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v1

    .line 195
    .local v1, "firstWindowIndexInSource":I
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v0

    .line 196
    .local v0, "firstPeriodIndexInSource":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v3, v3, v2

    sub-int v4, p1, v0

    invoke-virtual {v3, v4, p2, p3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 197
    iget v3, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v3, v1

    iput v3, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    .line 198
    if-eqz p3, :cond_28

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iput-object v3, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 201
    :cond_28
    return-object p2
.end method

.method public getPeriodCount()I
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourcePeriodOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .registers 16
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getSourceIndexForWindow(I)I

    move-result v8

    .line 177
    .local v8, "sourceIndex":I
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstWindowIndexInSource(I)I

    move-result v7

    .line 178
    .local v7, "firstWindowIndexInSource":I
    invoke-direct {p0, v8}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->getFirstPeriodIndexInSource(I)I

    move-result v6

    .line 179
    .local v6, "firstPeriodIndexInSource":I
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aget-object v0, v0, v8

    sub-int v1, p1, v7

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 181
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 182
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 183
    return-object p2
.end method

.method public getWindowCount()I
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->sourceWindowOffsets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method
