.class public final Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final maxSegmentsPerLoad:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3
    .param p1, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;I)V
    .registers 3
    .param p1, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p2, "maxSegmentsPerLoad"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 66
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    .line 67
    return-void
.end method


# virtual methods
.method public createDashChunkSource(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;J)Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource;
    .registers 20
    .param p1, "manifestLoaderErrorThrower"    # Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;
    .param p2, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .param p3, "periodIndex"    # I
    .param p4, "adaptationSetIndex"    # I
    .param p5, "trackSelection"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;
    .param p6, "elapsedRealtimeOffsetMs"    # J

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v7

    .line 74
    .local v7, "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;

    iget v10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/LoaderErrorThrower;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;IILorg/telegram/messenger/exoplayer2/trackselection/TrackSelection;Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JI)V

    return-object v1
.end method
