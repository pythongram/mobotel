.class public final Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"


# static fields
.field public static final EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;-><init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->EMPTY:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)V
    .registers 3
    .param p1, "trackGroups"    # [Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .line 46
    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_5

    .line 91
    :cond_4
    :goto_4
    return v1

    .line 87
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 88
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 90
    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 91
    .local v0, "other":Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    iget v4, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4
.end method

.method public get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_c

    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->hashCode:I

    .line 79
    :cond_c
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;)I
    .registers 4
    .param p1, "group"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_f

    .line 67
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->trackGroups:[Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 71
    .end local v0    # "i":I
    :goto_b
    return v0

    .line 66
    .restart local v0    # "i":I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_f
    const/4 v0, -0x1

    goto :goto_b
.end method
