.class final Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "inputSize"    # I

    .prologue
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 665
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 666
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    .line 667
    return-void
.end method
