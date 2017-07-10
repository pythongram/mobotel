.class public final Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;
.super Lde/jurihock/voicesmith/io/pcm/PcmDevice;
.source "PcmOutDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/jurihock/voicesmith/io/pcm/PcmOutDevice$WrappedAudioTrack;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_HEADSET_SOURCE:I = 0x0

.field private static final WIRED_HEADPHONES_SOURCE:I = 0x3

.field private static final WIRED_HEADSET_SOURCE:I = 0x3


# instance fields
.field private output:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/jurihock/voicesmith/HeadsetMode;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "headsetMode"    # Lde/jurihock/voicesmith/HeadsetMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 38
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/io/pcm/PcmDevice;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->output:Landroid/media/AudioTrack;

    .line 40
    sget-object v0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice$1;->$SwitchMap$de$jurihock$voicesmith$HeadsetMode:[I

    invoke-virtual {p2}, Lde/jurihock/voicesmith/HeadsetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown HeadsetMode!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_1a
    invoke-virtual {p0, v2}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setAudioSource(I)V

    .line 55
    :goto_1d
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->init(Landroid/content/Context;)V

    .line 56
    return-void

    .line 45
    :pswitch_21
    invoke-virtual {p0, v2}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setAudioSource(I)V

    goto :goto_1d

    .line 48
    :pswitch_25
    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setSampleRate(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setAudioSource(I)V

    goto :goto_1d

    .line 40
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 59
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setChannels(I)V

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setEncoding(I)V

    .line 61
    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getSampleRate()I

    move-result v0

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getChannels()I

    move-result v1

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getEncoding()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setMinBufferSize(I)V

    .line 63
    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getMinBufferSize()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2a

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getMinBufferSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 64
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to determine the MinBufferSize for AudioTrack!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_32
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p1}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/Preferences;->getPcmBufferSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->setBufferSize(I)V

    .line 69
    new-instance v0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice$WrappedAudioTrack;

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getAudioSource()I

    move-result v2

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getSampleRate()I

    move-result v3

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getChannels()I

    move-result v4

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getEncoding()I

    move-result v5

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->getBufferSize()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice$WrappedAudioTrack;-><init>(Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;IIIIII)V

    iput-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->output:Landroid/media/AudioTrack;

    .line 71
    iget-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->output:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v7, :cond_71

    .line 72
    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->dispose()V

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to initialize an AudioTrack instance!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_71
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->output:Landroid/media/AudioTrack;

    if-eqz v0, :cond_c

    .line 80
    iget-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->output:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;->output:Landroid/media/AudioTrack;

    .line 83
    :cond_c
    return-void
.end method
