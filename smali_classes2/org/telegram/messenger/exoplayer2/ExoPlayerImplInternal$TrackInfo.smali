.class public final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation


# instance fields
.field public final groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

.field public final info:Ljava/lang/Object;

.field public final selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;)V
    .registers 4
    .param p1, "groups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "selections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;
    .param p3, "info"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->groups:Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;

    .line 83
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->selections:Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .line 84
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$TrackInfo;->info:Ljava/lang/Object;

    .line 85
    return-void
.end method
