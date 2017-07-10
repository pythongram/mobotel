.class final Lde/jurihock/voicesmith/io/pcm/PcmOutDevice$WrappedAudioTrack;
.super Landroid/media/AudioTrack;
.source "PcmOutDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WrappedAudioTrack"
.end annotation


# instance fields
.field final synthetic this$0:Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;


# direct methods
.method public constructor <init>(Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;IIIIII)V
    .registers 15
    .param p2, "streamType"    # I
    .param p3, "sampleRateInHz"    # I
    .param p4, "channelConfig"    # I
    .param p5, "audioFormat"    # I
    .param p6, "bufferSizeInBytes"    # I
    .param p7, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice$WrappedAudioTrack;->this$0:Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 87
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 88
    return-void
.end method
