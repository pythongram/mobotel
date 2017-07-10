.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field public defaultSampleValues:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

.field public final fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

.field public final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

.field public track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .registers 3
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    .line 1159
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 1160
    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;)V
    .registers 5
    .param p1, "track"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;
    .param p2, "defaultSampleValues"    # Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    .prologue
    .line 1163
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    .line 1164
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1165
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 1166
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 1167
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1170
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/TrackFragment;->reset()V

    .line 1171
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1172
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1173
    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1174
    return-void
.end method

.method public updateDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)V
    .registers 4
    .param p1, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Track;->format:Lorg/telegram/messenger/exoplayer2/Format;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 1178
    return-void
.end method
