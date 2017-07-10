.class public abstract Lde/jurihock/voicesmith/io/AudioDevice;
.super Ljava/lang/Object;
.source "AudioDevice.java"


# instance fields
.field protected final context:Landroid/content/Context;

.field private sampleRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lde/jurihock/voicesmith/Preferences;

    invoke-direct {v0, p1}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/jurihock/voicesmith/Preferences;->getSampleRate()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lde/jurihock/voicesmith/io/AudioDevice;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sampleRate"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lde/jurihock/voicesmith/io/AudioDevice;->context:Landroid/content/Context;

    .line 49
    iput p2, p0, Lde/jurihock/voicesmith/io/AudioDevice;->sampleRate:I

    .line 50
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 53
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lde/jurihock/voicesmith/io/AudioDevice;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lde/jurihock/voicesmith/io/AudioDevice;->sampleRate:I

    return v0
.end method

.method protected setSampleRate(I)V
    .registers 2
    .param p1, "sampleRate"    # I

    .prologue
    .line 40
    iput p1, p0, Lde/jurihock/voicesmith/io/AudioDevice;->sampleRate:I

    .line 41
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method
