.class public final Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"


# instance fields
.field private final formats:[Lorg/telegram/messenger/exoplayer2/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/Format;)V
    .registers 3
    .param p1, "formats"    # [Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 49
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    .line 50
    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    .line 51
    return-void

    .line 48
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p0, p1, :cond_5

    .line 97
    :cond_4
    :goto_4
    return v1

    .line 93
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 94
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 96
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 97
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->length:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4
.end method

.method public getFormat(I)Lorg/telegram/messenger/exoplayer2/Format;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 80
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->hashCode:I

    if-nez v1, :cond_10

    .line 81
    const/16 v0, 0x11

    .line 82
    .local v0, "result":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 83
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->hashCode:I

    .line 85
    .end local v0    # "result":I
    :cond_10
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->hashCode:I

    return v1
.end method

.method public indexOf(Lorg/telegram/messenger/exoplayer2/Format;)I
    .registers 4
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 71
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroup;->formats:[Lorg/telegram/messenger/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_d

    .line 75
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 70
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method
