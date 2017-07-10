.class public Lorg/telegram/messenger/voip/AudioRecordJNI;
.super Ljava/lang/Object;
.source "AudioRecordJNI.java"


# instance fields
.field private aec:Landroid/media/audiofx/AcousticEchoCanceler;

.field private agc:Landroid/media/audiofx/AutomaticGainControl;

.field private audioRecord:Landroid/media/AudioRecord;

.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferSize:I

.field private nativeInst:J

.field private ns:Landroid/media/audiofx/NoiseSuppressor;

.field private running:Z

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "nativeInst"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeInst:J

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/voip/AudioRecordJNI;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/voip/AudioRecordJNI;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/voip/AudioRecordJNI;)Landroid/media/AudioRecord;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/voip/AudioRecordJNI;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/voip/AudioRecordJNI;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/AudioRecordJNI;->nativeCallback(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private getBufferSize(I)I
    .registers 5
    .param p1, "min"    # I

    .prologue
    .line 41
    const v0, 0xbb80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private native nativeCallback(Ljava/nio/ByteBuffer;)V
.end method

.method private startThread()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "thread already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/voip/AudioRecordJNI$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/AudioRecordJNI$1;-><init>(Lorg/telegram/messenger/voip/AudioRecordJNI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    .line 166
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method


# virtual methods
.method public init(IIII)V
    .registers 12
    .param p1, "sampleRate"    # I
    .param p2, "bitsPerSample"    # I
    .param p3, "channels"    # I
    .param p4, "bufferSize"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_c

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already inited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_c
    invoke-direct {p0, p4}, Lorg/telegram/messenger/voip/AudioRecordJNI;->getBufferSize(I)I

    move-result v5

    .line 49
    .local v5, "size":I
    iput p4, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->bufferSize:I

    .line 51
    :try_start_12
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne p3, v2, :cond_28

    const/16 v3, 0x10

    :goto_1a
    const/4 v4, 0x2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_2b

    .line 55
    :goto_21
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->buffer:Ljava/nio/ByteBuffer;

    .line 56
    return-void

    .line 51
    :cond_28
    const/16 v3, 0xc

    goto :goto_1a

    .line 52
    :catch_2b
    move-exception v6

    .line 53
    .local v6, "x":Ljava/lang/Exception;
    const-string v0, "AudioRecord init failed!"

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->running:Z

    .line 65
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_f

    .line 67
    :try_start_8
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_3c

    .line 71
    :goto_d
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    .line 73
    :cond_f
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1a

    .line 74
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 75
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    .line 77
    :cond_1a
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v1, :cond_25

    .line 78
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v1}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 79
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 81
    :cond_25
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v1, :cond_30

    .line 82
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v1}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 83
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 85
    :cond_30
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_3b

    .line 86
    iget-object v1, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 87
    iput-object v2, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 89
    :cond_3b
    return-void

    .line 68
    :catch_3c
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public start()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_aa

    .line 94
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-nez v3, :cond_b

    .line 140
    :goto_a
    return v1

    .line 96
    :cond_b
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 97
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_88

    const/16 v4, 0x10

    if-lt v3, v4, :cond_76

    .line 99
    :try_start_16
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 100
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    .line 101
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v3, :cond_32

    .line 102
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->agc:Landroid/media/audiofx/AutomaticGainControl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_32} :catch_81
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_88

    .line 110
    :cond_32
    :goto_32
    :try_start_32
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 111
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    .line 112
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v3, :cond_54

    .line 113
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->ns:Landroid/media/audiofx/NoiseSuppressor;

    const-string v4, "user_system_ns"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_54} :catch_96
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_54} :catch_88

    .line 121
    :cond_54
    :goto_54
    :try_start_54
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 122
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v3

    invoke-static {v3}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 123
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v3, :cond_76

    .line 124
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->aec:Landroid/media/audiofx/AcousticEchoCanceler;

    const-string v4, "use_system_aec"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_76} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_76} :catch_88

    .line 132
    :cond_76
    :goto_76
    :try_start_76
    invoke-direct {p0}, Lorg/telegram/messenger/voip/AudioRecordJNI;->startThread()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_88

    :goto_79
    move v1, v2

    .line 136
    goto :goto_a

    .line 104
    :cond_7b
    :try_start_7b
    const-string v3, "AutomaticGainControl is not available on this device :("

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_80} :catch_81
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_88

    goto :goto_32

    .line 106
    :catch_81
    move-exception v0

    .line 107
    .local v0, "x":Ljava/lang/Throwable;
    :try_start_82
    const-string v3, "error creating AutomaticGainControl"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_32

    .line 137
    .end local v0    # "x":Ljava/lang/Throwable;
    :catch_88
    move-exception v0

    .line 138
    .local v0, "x":Ljava/lang/Exception;
    const-string v2, "Error initializing AudioRecord"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 115
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_90
    :try_start_90
    const-string v3, "NoiseSuppressor is not available on this device :("

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_95} :catch_96
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_95} :catch_88

    goto :goto_54

    .line 117
    :catch_96
    move-exception v0

    .line 118
    .local v0, "x":Ljava/lang/Throwable;
    :try_start_97
    const-string v3, "error creating NoiseSuppressor"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9c} :catch_88

    goto :goto_54

    .line 126
    .end local v0    # "x":Ljava/lang/Throwable;
    :cond_9d
    :try_start_9d
    const-string v3, "AcousticEchoCanceler is not available on this device"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a2} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_88

    goto :goto_76

    .line 128
    :catch_a3
    move-exception v0

    .line 129
    .restart local v0    # "x":Ljava/lang/Throwable;
    :try_start_a4
    const-string v3, "error creating AcousticEchoCanceler"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_76

    .line 134
    .end local v0    # "x":Ljava/lang/Throwable;
    :cond_aa
    iget-object v3, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_af} :catch_88

    goto :goto_79
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lorg/telegram/messenger/voip/AudioRecordJNI;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 61
    :cond_9
    return-void
.end method
