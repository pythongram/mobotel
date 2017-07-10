.class public Lde/jurihock/voicesmith/io/pcm/PcmInDevice;
.super Lde/jurihock/voicesmith/io/pcm/PcmDevice;
.source "PcmInDevice.java"


# static fields
.field private static final BLUETOOTH_HEADSET_SOURCE:I = 0x0

.field private static final WIRED_HEADPHONES_SOURCE:I = 0x5

.field private static final WIRED_HEADSET_SOURCE:I


# instance fields
.field private input:Landroid/media/AudioRecord;


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
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/io/pcm/PcmDevice;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->input:Landroid/media/AudioRecord;

    .line 43
    sget-object v0, Lde/jurihock/voicesmith/io/pcm/PcmInDevice$1;->$SwitchMap$de$jurihock$voicesmith$HeadsetMode:[I

    invoke-virtual {p2}, Lde/jurihock/voicesmith/HeadsetMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 55
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown HeadsetMode!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_1a
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setAudioSource(I)V

    .line 58
    :goto_1e
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->init(Landroid/content/Context;)V

    .line 59
    return-void

    .line 48
    :pswitch_22
    invoke-virtual {p0, v2}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setAudioSource(I)V

    goto :goto_1e

    .line 51
    :pswitch_26
    const/16 v0, 0x1f40

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setSampleRate(I)V

    .line 52
    invoke-virtual {p0, v2}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setAudioSource(I)V

    goto :goto_1e

    .line 43
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setChannels(I)V

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setEncoding(I)V

    .line 64
    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->getSampleRate()I

    move-result v0

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->getChannels()I

    move-result v1

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->getEncoding()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setMinBufferSize(I)V

    .line 66
    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->getMinBufferSize()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2a

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->getMinBufferSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 67
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to determine the MinBufferSize for AudioRecord!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_32
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p1}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/jurihock/voicesmith/Preferences;->getPcmBufferSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->setBufferSize(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->input:Landroid/media/AudioRecord;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->input:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;->input:Landroid/media/AudioRecord;

    .line 85
    :cond_c
    return-void
.end method
