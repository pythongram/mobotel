.class public final Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# instance fields
.field public final factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I


# direct methods
.method public varargs constructor <init>(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;I[I)V
    .registers 5
    .param p1, "factory"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;
    .param p2, "groupIndex"    # I
    .param p3, "tracks"    # [I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

    .line 53
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    .line 54
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    .line 55
    array-length v0, p3

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->length:I

    .line 56
    return-void
.end method


# virtual methods
.method public containsTrack(I)Z
    .registers 7
    .param p1, "track"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_c

    aget v0, v3, v2

    .line 73
    .local v0, "overrideTrack":I
    if-ne v0, p1, :cond_d

    .line 74
    const/4 v1, 0x1

    .line 77
    .end local v0    # "overrideTrack":I
    :cond_c
    return v1

    .line 72
    .restart local v0    # "overrideTrack":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .registers 5
    .param p1, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->factory:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;->get(I)Lorg/telegram/messenger/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lorg/telegram/messenger/exoplayer2/source/TrackGroup;[I)Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    return-object v0
.end method
