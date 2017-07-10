.class public abstract Lde/jurihock/voicesmith/io/pcm/PcmDevice;
.super Lde/jurihock/voicesmith/io/AudioDevice;
.source "PcmDevice.java"


# instance fields
.field private audioSource:I

.field private bufferSize:I

.field private channels:I

.field private encoding:I

.field private minBufferSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lde/jurihock/voicesmith/io/AudioDevice;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sampleRate"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lde/jurihock/voicesmith/io/AudioDevice;-><init>(Landroid/content/Context;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAudioSource()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->audioSource:I

    return v0
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->bufferSize:I

    return v0
.end method

.method public getChannels()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->channels:I

    return v0
.end method

.method public getEncoding()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->encoding:I

    return v0
.end method

.method public getMinBufferSize()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->minBufferSize:I

    return v0
.end method

.method protected setAudioSource(I)V
    .registers 2
    .param p1, "audioSource"    # I

    .prologue
    .line 46
    iput p1, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->audioSource:I

    .line 47
    return-void
.end method

.method protected setBufferSize(I)V
    .registers 2
    .param p1, "bufferSize"    # I

    .prologue
    .line 78
    iput p1, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->bufferSize:I

    .line 79
    return-void
.end method

.method protected setChannels(I)V
    .registers 2
    .param p1, "channels"    # I

    .prologue
    .line 54
    iput p1, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->channels:I

    .line 55
    return-void
.end method

.method protected setEncoding(I)V
    .registers 2
    .param p1, "encoding"    # I

    .prologue
    .line 62
    iput p1, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->encoding:I

    .line 63
    return-void
.end method

.method protected setMinBufferSize(I)V
    .registers 2
    .param p1, "minBufferSize"    # I

    .prologue
    .line 70
    iput p1, p0, Lde/jurihock/voicesmith/io/pcm/PcmDevice;->minBufferSize:I

    .line 71
    return-void
.end method
