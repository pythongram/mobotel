.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;,
        Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUTODOWNLOAD_MASK_AUDIO:I = 0x2

.field public static final AUTODOWNLOAD_MASK_DOCUMENT:I = 0x8

.field public static final AUTODOWNLOAD_MASK_GIF:I = 0x20

.field public static final AUTODOWNLOAD_MASK_MUSIC:I = 0x10

.field public static final AUTODOWNLOAD_MASK_PHOTO:I = 0x1

.field public static final AUTODOWNLOAD_MASK_VIDEO:I = 0x4

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static broadcastPhotosRunnable:Ljava/lang/Runnable;

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field public static readArgs:[I


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private addLaterArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private allowStartRecord:Z

.field private audioDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioTrackPlayer:Landroid/media/AudioTrack;

.field private autoplayGifs:Z

.field private buffersWrited:I

.field private callInProgress:Z

.field private cancelCurrentVideoConversion:Z

.field private countLess:I

.field private currentPlaylistNum:I

.field private currentTotalPcmDuration:J

.field private customTabs:Z

.field private decodingFinished:Z

.field private deleteLaterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private directShare:Z

.field private documentDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueueKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingCurrentMessage:Z

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fSize:[F

.field public favMask:I

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private forceLoopCurrentPlaylist:Z

.field private freePlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private ignoreFirstProgress:I

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isPaused:Z

.field private kissFFT:Lde/jurihock/voicesmith/dsp/KissFFT;

.field private lastCheckMask:I

.field private lastMediaCheckTime:J

.field private lastPlayPcm:J

.field private lastProgress:I

.field private lastProximityValue:F

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastSecretChatEnterTime:J

.field private lastSecretChatLeaveTime:J

.field private lastSecretChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastTag:I

.field private lastTimestamp:J

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private listenerInProgress:Z

.field private loadingFileMessagesObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaProjections:[Ljava/lang/String;

.field public mobileDataDownloadMask:I

.field private musicDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private observersByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private playMusicAgain:Z

.field private playerBufferSize:I

.field private final playerObjectSync:Ljava/lang/Object;

.field private playerQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final playerSync:Ljava/lang/Object;

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private postprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

.field private preprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raiseToSpeak:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private refreshGalleryRunnable:Ljava/lang/Runnable;

.field private repeatMode:I

.field private resampleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;

.field private resumeAudioOnFocusGain:Z

.field public roamingDownloadMask:I

.field private samplesCount:J

.field private saveToGallery:Z

.field private sendAfterDone:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private sfSize:[F

.field private shuffleMusic:Z

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private teleRecordRunnable:Ljava/lang/Runnable;

.field private timeSinceRaise:J

.field private timescaleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;

.field private typingTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private useFrontSpeaker:Z

.field private usedPlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private videoConvertFirstWrite:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceBuffer:[F

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field public wifiDownloadMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 113
    new-array v0, v3, [I

    sput-object v0, Lorg/telegram/messenger/MediaController;->readArgs:[I

    .line 136
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_id"

    aput-object v1, v0, v5

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_id"

    aput-object v1, v0, v5

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    .line 580
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    .line 232
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    .line 248
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 251
    const/high16 v9, -0x3d380000    # -100.0f

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 258
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    .line 259
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    .line 260
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    .line 264
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 273
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    .line 274
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    .line 275
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 276
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 277
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    .line 289
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 290
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 291
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 292
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 293
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 294
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    .line 295
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    .line 296
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    .line 297
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    .line 298
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    .line 299
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    .line 301
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 302
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 303
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 304
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 305
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 313
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    .line 314
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    .line 315
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    .line 316
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 317
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    .line 318
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    .line 319
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    .line 321
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 322
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 323
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 324
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 326
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 327
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    .line 330
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 331
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 332
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    .line 334
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 335
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 342
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->favMask:I

    .line 345
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 346
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 347
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 354
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    .line 355
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    .line 356
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    .line 357
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    .line 358
    const/16 v9, 0x400

    new-array v9, v9, [S

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    .line 361
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    .line 363
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    .line 371
    new-instance v9, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    .line 542
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    .line 543
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    .line 544
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    .line 545
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    .line 546
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 547
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 548
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    .line 549
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 550
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 578
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 4210
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->preprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    .line 4211
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->postprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    .line 4212
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->timescaleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;

    .line 4213
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->resampleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;

    .line 4214
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->kissFFT:Lde/jurihock/voicesmith/dsp/KissFFT;

    .line 4217
    new-instance v9, Lorg/telegram/messenger/MediaController$26;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$26;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->teleRecordRunnable:Ljava/lang/Runnable;

    .line 597
    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    :try_start_167
    invoke-static {v9, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 598
    iget v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    if-gtz v9, :cond_175

    .line 599
    const/16 v9, 0x500

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 601
    :cond_175
    const v9, 0xbb80

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 602
    iget v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    if-gtz v9, :cond_188

    .line 603
    const/16 v9, 0xf00

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 605
    :cond_188
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_189
    const/4 v9, 0x5

    if-ge v0, v9, :cond_1a1

    .line 606
    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 607
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 608
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_189

    .line 610
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1a1
    const/4 v0, 0x0

    :goto_1a2
    const/4 v9, 0x3

    if-ge v0, v9, :cond_1b8

    .line 611
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/MediaController$AudioBuffer;

    iget v11, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    invoke-direct {v10, p0, v11}, Lorg/telegram/messenger/MediaController$AudioBuffer;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_1b1} :catch_1b4

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a2

    .line 613
    .end local v0    # "a":I
    :catch_1b4
    move-exception v2

    .line 614
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 617
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1b8
    :try_start_1b8
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "sensor"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    .line 618
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 619
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 620
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_1e0

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v9, :cond_1f4

    .line 621
    :cond_1e0
    const-string v9, "gravity or linear sensor not found"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 622
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 623
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 624
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 626
    :cond_1f4
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    .line 627
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 628
    .local v7, "powerManager":Landroid/os/PowerManager;
    const/16 v9, 0x20

    const-string v10, "proximity"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_212} :catch_34c

    .line 632
    .end local v7    # "powerManager":Landroid/os/PowerManager;
    :goto_212
    const/16 v9, 0x780

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    .line 633
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string v10, "recordQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 634
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 635
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string v10, "fileEncodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 636
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 637
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string v10, "playerQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 638
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string v10, "fileDecodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 640
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 641
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "mobileDataDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 642
    const-string v9, "wifiDownloadMask"

    const/16 v10, 0x33

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 643
    const-string v9, "roamingDownloadMask"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 644
    const-string v9, "save_gallery"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 645
    const-string v9, "autoplay_gif"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 646
    const-string v9, "raise_to_speak"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 647
    const-string v9, "custom_tabs"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 648
    const-string v9, "direct_share"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 649
    const-string v9, "shuffleMusic"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 650
    const-string v9, "repeatMode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 651
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "fav_download_mask"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->favMask:I

    .line 653
    new-instance v9, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 669
    new-instance v5, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 675
    .local v5, "networkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 676
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v9

    if-eqz v9, :cond_2e5

    .line 679
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 682
    :cond_2e5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_352

    .line 683
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "width"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "height"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 703
    :goto_313
    :try_start_313
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_324} :catch_371

    .line 708
    :goto_324
    :try_start_324
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_324 .. :try_end_335} :catch_376

    .line 714
    :goto_335
    :try_start_335
    new-instance v6, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 744
    .local v6, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 745
    .local v4, "mgr":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_34b

    .line 746
    const/16 v9, 0x20

    invoke-virtual {v4, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_34b
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_34b} :catch_37b

    .line 751
    .end local v4    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v6    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :cond_34b
    :goto_34b
    return-void

    .line 629
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :catch_34c
    move-exception v2

    .line 630
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_212

    .line 693
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_352
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "title"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    goto :goto_313

    .line 704
    :catch_371
    move-exception v2

    .line 705
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_324

    .line 709
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_376
    move-exception v2

    .line 710
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_335

    .line 748
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_37b
    move-exception v2

    .line 749
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34b
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Landroid/media/AudioRecord;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/MediaController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/MediaController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$InternalObserver;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$ExternalObserver;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_document;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/MediaController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/MediaController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return p1
.end method

.method static synthetic access$2610(Lorg/telegram/messenger/MediaController;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return v0
.end method

.method static synthetic access$2702(Lorg/telegram/messenger/MediaController;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/MediaController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MediaController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4008(Lorg/telegram/messenger/MediaController;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;F)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # F

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->openOpusFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide v0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide p1
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MediaController;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/MediaController;I)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->changeVoice(I)V

    return-void
.end method

.method static synthetic access$5800(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->teleRecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .registers 7
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/lang/Integer;
    .param p5, "x5"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "x6"    # I

    .prologue
    .line 99
    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$6302(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    sput-object p0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6502(Lorg/telegram/messenger/MediaController;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/messenger/MediaController;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)J
    .registers 3
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$7000(Lorg/telegram/messenger/MediaController;)[F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceBuffer:[F

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MediaController;J)J
    .registers 4
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide p1
.end method

.method static synthetic access$7100(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->preprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->postprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/messenger/MediaController;)[F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fSize:[F

    return-object v0
.end method

.method static synthetic access$7400(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->timescaleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/KissFFT;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->kissFFT:Lde/jurihock/voicesmith/dsp/KissFFT;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/messenger/MediaController;)[F
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sfSize:[F

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/messenger/MediaController;)Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->resampleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private static broadcastNewPhotos(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .registers 14
    .param p0, "guid"    # I
    .param p2, "cameraAlbumIdFinal"    # Ljava/lang/Integer;
    .param p4, "cameraAlbumVideoIdFinal"    # Ljava/lang/Integer;
    .param p5, "allPhotosAlbumFinal"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3411
    .local p1, "albumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    .local p3, "videoAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 3412
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3414
    :cond_9
    new-instance v0, Lorg/telegram/messenger/MediaController$24;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$24;-><init>(ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    int-to-long v2, p6

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3426
    return-void
.end method

.method private buildShuffledPlayList()V
    .registers 8

    .prologue
    .line 2081
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2097
    :cond_8
    return-void

    .line 2084
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2085
    .local v1, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2087
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2088
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2089
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2092
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2e
    if-ge v0, v2, :cond_8

    .line 2093
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    .line 2094
    .local v3, "index":I
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2092
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e
.end method

.method private changeVoice(I)V
    .registers 16
    .param p1, "fType"    # I

    .prologue
    .line 4167
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "mainconfig"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 4168
    .local v10, "telehPreferences":Landroid/content/SharedPreferences;
    new-instance v7, Lde/jurihock/voicesmith/Preferences;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lde/jurihock/voicesmith/Preferences;-><init>(Landroid/content/Context;)V

    .line 4169
    .local v7, "preferences":Lde/jurihock/voicesmith/Preferences;
    sget-object v3, Lde/jurihock/voicesmith/FrameType;->Small:Lde/jurihock/voicesmith/FrameType;

    .line 4170
    .local v3, "frameType":Lde/jurihock/voicesmith/FrameType;
    packed-switch p1, :pswitch_data_b4

    .line 4184
    :goto_15
    :try_start_15
    new-instance v5, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v12, Lde/jurihock/voicesmith/HeadsetMode;->WIRED_HEADPHONES:Lde/jurihock/voicesmith/HeadsetMode;

    invoke-direct {v5, v11, v12}, Lde/jurihock/voicesmith/io/pcm/PcmInDevice;-><init>(Landroid/content/Context;Lde/jurihock/voicesmith/HeadsetMode;)V

    .line 4185
    .local v5, "input":Lde/jurihock/voicesmith/io/AudioDevice;
    new-instance v6, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v12, Lde/jurihock/voicesmith/HeadsetMode;->WIRED_HEADPHONES:Lde/jurihock/voicesmith/HeadsetMode;

    invoke-direct {v6, v11, v12}, Lde/jurihock/voicesmith/io/pcm/PcmOutDevice;-><init>(Landroid/content/Context;Lde/jurihock/voicesmith/HeadsetMode;)V

    .line 4186
    .local v6, "output":Lde/jurihock/voicesmith/io/AudioDevice;
    invoke-virtual {v5}, Lde/jurihock/voicesmith/io/AudioDevice;->getSampleRate()I

    move-result v11

    invoke-virtual {v7, v3, v11}, Lde/jurihock/voicesmith/Preferences;->getFrameSize(Lde/jurihock/voicesmith/FrameType;I)I

    move-result v2

    .line 4187
    .local v2, "frameSize":I
    invoke-virtual {v5}, Lde/jurihock/voicesmith/io/AudioDevice;->getSampleRate()I

    move-result v11

    invoke-virtual {v7, v3, v11}, Lde/jurihock/voicesmith/Preferences;->getHopSize(Lde/jurihock/voicesmith/FrameType;I)I

    move-result v11

    mul-int/lit8 v4, v11, 0x2

    .line 4188
    .local v4, "hopSize":I
    new-array v11, v2, [F

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->voiceBuffer:[F

    .line 4189
    const/4 v11, 0x5

    if-ne p1, v11, :cond_94

    .line 4190
    const/high16 v11, 0x40000000    # 2.0f

    const-string v12, "transpose_semitone"

    const/4 v13, 0x5

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41400000    # 12.0f

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Lde/jurihock/voicesmith/dsp/Math;->pow(FF)F

    move-result v9

    .line 4191
    .local v9, "tau":F
    int-to-float v11, v4

    div-float/2addr v11, v9

    invoke-static {v11}, Lde/jurihock/voicesmith/dsp/Math;->round(F)I

    move-result v0

    .line 4192
    .local v0, "analysisHopSize":I
    int-to-float v11, v2

    div-float/2addr v11, v9

    invoke-static {v11}, Lde/jurihock/voicesmith/dsp/Math;->round(F)I

    move-result v8

    .line 4194
    .local v8, "synthesisFrameSize":I
    new-instance v11, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    const/4 v12, 0x1

    invoke-direct {v11, v5, v2, v0, v12}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;-><init>(Lde/jurihock/voicesmith/io/AudioDevice;IIZ)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->preprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    .line 4195
    new-instance v11, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;

    invoke-direct {v11, v2, v0, v4}, Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;-><init>(III)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->timescaleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeTimescaleProcessor;

    .line 4196
    new-instance v11, Lde/jurihock/voicesmith/dsp/KissFFT;

    invoke-direct {v11, v2}, Lde/jurihock/voicesmith/dsp/KissFFT;-><init>(I)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->kissFFT:Lde/jurihock/voicesmith/dsp/KissFFT;

    .line 4197
    new-instance v11, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;

    invoke-direct {v11, v2, v8}, Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;-><init>(II)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->resampleProcessor:Lde/jurihock/voicesmith/dsp/processors/NativeResampleProcessor;

    .line 4198
    new-instance v11, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    const/4 v12, 0x0

    invoke-direct {v11, v6, v8, v0, v12}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;-><init>(Lde/jurihock/voicesmith/io/AudioDevice;IIZ)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->postprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    .line 4199
    new-array v11, v2, [F

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->fSize:[F

    .line 4200
    new-array v11, v8, [F

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->sfSize:[F
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_8a} :catch_ae

    .line 4208
    .end local v0    # "analysisHopSize":I
    .end local v2    # "frameSize":I
    .end local v4    # "hopSize":I
    .end local v5    # "input":Lde/jurihock/voicesmith/io/AudioDevice;
    .end local v6    # "output":Lde/jurihock/voicesmith/io/AudioDevice;
    .end local v8    # "synthesisFrameSize":I
    .end local v9    # "tau":F
    :cond_8a
    :goto_8a
    return-void

    .line 4173
    :pswitch_8b
    sget-object v3, Lde/jurihock/voicesmith/FrameType;->Medium:Lde/jurihock/voicesmith/FrameType;

    .line 4174
    goto :goto_15

    .line 4176
    :pswitch_8e
    sget-object v3, Lde/jurihock/voicesmith/FrameType;->Small:Lde/jurihock/voicesmith/FrameType;

    .line 4177
    goto :goto_15

    .line 4179
    :pswitch_91
    sget-object v3, Lde/jurihock/voicesmith/FrameType;->Default:Lde/jurihock/voicesmith/FrameType;

    goto :goto_15

    .line 4201
    .restart local v2    # "frameSize":I
    .restart local v4    # "hopSize":I
    .restart local v5    # "input":Lde/jurihock/voicesmith/io/AudioDevice;
    .restart local v6    # "output":Lde/jurihock/voicesmith/io/AudioDevice;
    :cond_94
    const/4 v11, 0x2

    if-eq p1, v11, :cond_9d

    const/4 v11, 0x3

    if-eq p1, v11, :cond_9d

    const/4 v11, 0x4

    if-ne p1, v11, :cond_8a

    .line 4202
    :cond_9d
    :try_start_9d
    new-instance v11, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    const/4 v12, 0x1

    invoke-direct {v11, v5, v2, v4, v12}, Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;-><init>(Lde/jurihock/voicesmith/io/AudioDevice;IIZ)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->preprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPreprocessor;

    .line 4203
    new-instance v11, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;

    const/4 v12, 0x1

    invoke-direct {v11, v6, v2, v4, v12}, Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;-><init>(Lde/jurihock/voicesmith/io/AudioDevice;IIZ)V

    iput-object v11, p0, Lorg/telegram/messenger/MediaController;->postprocessor:Lde/jurihock/voicesmith/dsp/stft/StftPostprocessor;
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_ad} :catch_ae

    goto :goto_8a

    .line 4205
    .end local v2    # "frameSize":I
    .end local v4    # "hopSize":I
    .end local v5    # "input":Lde/jurihock/voicesmith/io/AudioDevice;
    .end local v6    # "output":Lde/jurihock/voicesmith/io/AudioDevice;
    :catch_ae
    move-exception v1

    .line 4206
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8a

    .line 4170
    nop

    :pswitch_data_b4
    .packed-switch 0x2
        :pswitch_8b
        :pswitch_8b
        :pswitch_8e
        :pswitch_91
    .end packed-switch
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .registers 9
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2276
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2277
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_26

    .line 2278
    const/4 v0, 0x3

    .line 2285
    .local v0, "neededAudioFocus":I
    :goto_e
    iget v2, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v2, v0, :cond_25

    .line 2286
    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 2288
    if-ne v0, v3, :cond_2a

    .line 2289
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 2293
    .local v1, "result":I
    :goto_21
    if-ne v1, v4, :cond_25

    .line 2294
    iput v6, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 2297
    .end local v1    # "result":I
    :cond_25
    return-void

    .line 2280
    .end local v0    # "neededAudioFocus":I
    :cond_26
    const/4 v0, 0x2

    .restart local v0    # "neededAudioFocus":I
    goto :goto_e

    .line 2283
    .end local v0    # "neededAudioFocus":I
    :cond_28
    const/4 v0, 0x1

    .restart local v0    # "neededAudioFocus":I
    goto :goto_e

    .line 2291
    :cond_2a
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne v0, v6, :cond_38

    move v2, v3

    :goto_33
    invoke-virtual {v5, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_21

    .end local v1    # "result":I
    :cond_38
    move v2, v4

    goto :goto_33
.end method

.method private checkConversionCanceled()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3713
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    .line 3714
    :try_start_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3715
    .local v0, "cancelConversion":Z
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    .line 3716
    if-eqz v0, :cond_13

    .line 3717
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "canceled conversion"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3715
    .end local v0    # "cancelConversion":Z
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1

    .line 3719
    .restart local v0    # "cancelConversion":Z
    :cond_13
    return-void
.end method

.method private checkDecoderQueue()V
    .registers 3

    .prologue
    .line 1527
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1576
    return-void
.end method

.method private checkDownloadFinished(Ljava/lang/String;I)V
    .registers 14
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1118
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    .line 1119
    .local v0, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    if-eqz v0, :cond_3a

    .line 1120
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    if-eqz p2, :cond_1a

    if-ne p2, v6, :cond_26

    .line 1122
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/DownloadObject;->id:J

    iget v4, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->removeFromDownloadQueue(JIZ)V

    .line 1124
    :cond_26
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v7, :cond_3b

    .line 1125
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1126
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1127
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1156
    :cond_3a
    :goto_3a
    return-void

    .line 1129
    :cond_3b
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v6, :cond_50

    .line 1130
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1131
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1132
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_3a

    .line 1134
    :cond_50
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v8, :cond_65

    .line 1135
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1136
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1137
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_3a

    .line 1139
    :cond_65
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v9, :cond_7a

    .line 1140
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1141
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1142
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_3a

    .line 1144
    :cond_7a
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v10, :cond_8f

    .line 1145
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1146
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1147
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_3a

    .line 1149
    :cond_8f
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3a

    .line 1150
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1151
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1152
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_3a
.end method

.method private checkIsNextMusicFileDownloaded()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 2236
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_a

    .line 2260
    :cond_9
    :goto_9
    return-void

    .line 2239
    :cond_a
    iget-boolean v7, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v7, :cond_73

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2240
    .local v1, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_10
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_9

    .line 2243
    iget v7, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v5, v7, 0x1

    .line 2244
    .local v5, "nextIndex":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_24

    .line 2245
    const/4 v5, 0x0

    .line 2247
    :cond_24
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2248
    .local v4, "nextAudio":Lorg/telegram/messenger/MessageObject;
    const/4 v3, 0x0

    .line 2249
    .local v3, "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_4b

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4b

    .line 2250
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2251
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 2252
    const/4 v3, 0x0

    .line 2255
    :cond_4b
    if-eqz v3, :cond_76

    move-object v0, v3

    .line 2256
    .local v0, "cacheFile":Ljava/io/File;
    :goto_4e
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7d

    const/4 v2, 0x1

    .line 2257
    .local v2, "exist":Z
    :goto_57
    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2258
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_9

    .line 2239
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "exist":Z
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "nextIndex":I
    :cond_73
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_10

    .line 2255
    .restart local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "nextIndex":I
    :cond_76
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_4e

    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_7d
    move v2, v6

    .line 2256
    goto :goto_57
.end method

.method private checkPlayerQueue()V
    .registers 3

    .prologue
    .line 1579
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1639
    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v10, 0x0

    .line 1242
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v4, :cond_1b

    .line 1262
    :cond_1a
    :goto_1a
    return-void

    .line 1245
    :cond_1b
    const-wide/16 v2, 0x7d0

    .line 1246
    .local v2, "dt":J
    const/4 v1, 0x0

    .line 1247
    .local v1, "send":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1248
    .local v0, "date":Ljava/lang/Long;
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_22

    .line 1252
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_22

    .line 1253
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_59

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    add-long/2addr v8, v2

    cmp-long v5, v6, v8

    if-gtz v5, :cond_22

    .line 1254
    :cond_59
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 1255
    const/4 v1, 0x1

    goto :goto_22

    .line 1259
    .end local v0    # "date":Ljava/lang/Long;
    :cond_67
    if-eqz v1, :cond_1a

    .line 1260
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1a
.end method

.method private native closeOpusFile()V
.end method

.method private convertVideo(Lorg/telegram/messenger/MessageObject;)Z
    .registers 92
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3723
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v84, v0

    .line 3724
    .local v84, "videoPath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v76, v0

    .line 3725
    .local v76, "startTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move-wide/from16 v18, v0

    .line 3726
    .local v18, "endTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move/from16 v72, v0

    .line 3727
    .local v72, "resultWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move/from16 v70, v0

    .line 3728
    .local v70, "resultHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move/from16 v74, v0

    .line 3729
    .local v74, "rotationValue":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move/from16 v61, v0

    .line 3730
    .local v61, "originalWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move/from16 v60, v0

    .line 3731
    .local v60, "originalHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v24, v0

    .line 3732
    .local v24, "bitrate":I
    const/16 v73, 0x0

    .line 3733
    .local v73, "rotateRender":I
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3735
    .local v20, "cacheFile":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_cb

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_cb

    move/from16 v0, v72

    move/from16 v1, v61

    if-eq v0, v1, :cond_cb

    move/from16 v0, v70

    move/from16 v1, v60

    if-eq v0, v1, :cond_cb

    .line 3736
    move/from16 v79, v70

    .line 3737
    .local v79, "temp":I
    move/from16 v70, v72

    .line 3738
    move/from16 v72, v79

    .line 3739
    const/16 v74, 0x5a

    .line 3740
    const/16 v73, 0x10e

    .line 3760
    .end local v79    # "temp":I
    :cond_79
    :goto_79
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "videoconvert"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v68

    .line 3761
    .local v68, "preferences":Landroid/content/SharedPreferences;
    new-instance v51, Ljava/io/File;

    move-object/from16 v0, v51

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3762
    .local v51, "inputFile":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_ff

    .line 3763
    const-string v6, "isPreviousOk"

    const/4 v10, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 3764
    .local v55, "isPreviousOk":Z
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v10, "isPreviousOk"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3765
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_b0

    if-nez v55, :cond_ff

    .line 3766
    :cond_b0
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3767
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3768
    const/4 v6, 0x0

    .line 4162
    .end local v55    # "isPreviousOk":Z
    :goto_ca
    return v6

    .line 3741
    .end local v51    # "inputFile":Ljava/io/File;
    .end local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_cb
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-le v6, v10, :cond_79

    .line 3742
    const/16 v6, 0x5a

    move/from16 v0, v74

    if-ne v0, v6, :cond_e2

    .line 3743
    move/from16 v79, v70

    .line 3744
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 3745
    move/from16 v72, v79

    .line 3746
    const/16 v74, 0x0

    .line 3747
    const/16 v73, 0x10e

    .line 3748
    goto :goto_79

    .end local v79    # "temp":I
    :cond_e2
    const/16 v6, 0xb4

    move/from16 v0, v74

    if-ne v0, v6, :cond_ed

    .line 3749
    const/16 v73, 0xb4

    .line 3750
    const/16 v74, 0x0

    goto :goto_79

    .line 3751
    :cond_ed
    const/16 v6, 0x10e

    move/from16 v0, v74

    if-ne v0, v6, :cond_79

    .line 3752
    move/from16 v79, v70

    .line 3753
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 3754
    move/from16 v72, v79

    .line 3755
    const/16 v74, 0x0

    .line 3756
    const/16 v73, 0x5a

    goto/16 :goto_79

    .line 3772
    .end local v79    # "temp":I
    .restart local v51    # "inputFile":Ljava/io/File;
    .restart local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_ff
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3773
    const/16 v43, 0x0

    .line 3774
    .local v43, "error":Z
    move-wide/from16 v86, v76

    .line 3776
    .local v86, "videoStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    .line 3778
    .local v80, "time":J
    if-eqz v72, :cond_861

    if-eqz v70, :cond_861

    .line 3779
    const/16 v57, 0x0

    .line 3780
    .local v57, "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    const/16 v45, 0x0

    .line 3783
    .local v45, "extractor":Landroid/media/MediaExtractor;
    :try_start_114
    new-instance v48, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v48 .. v48}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 3784
    .local v48, "info":Landroid/media/MediaCodec$BufferInfo;
    new-instance v58, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct/range {v58 .. v58}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 3785
    .local v58, "movie":Lorg/telegram/messenger/video/Mp4Movie;
    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 3786
    move-object/from16 v0, v58

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 3787
    move-object/from16 v0, v58

    move/from16 v1, v72

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 3788
    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v57

    .line 3789
    new-instance v46, Landroid/media/MediaExtractor;

    invoke-direct/range {v46 .. v46}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_145} :catch_823
    .catchall {:try_start_114 .. :try_end_145} :catchall_87d

    .line 3790
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .local v46, "extractor":Landroid/media/MediaExtractor;
    :try_start_145
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 3792
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3794
    move/from16 v0, v72

    move/from16 v1, v61

    if-ne v0, v1, :cond_15f

    move/from16 v0, v70

    move/from16 v1, v60

    if-ne v0, v1, :cond_15f

    if-eqz v73, :cond_801

    .line 3796
    :cond_15f
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_167} :catch_88a
    .catchall {:try_start_145 .. :try_end_167} :catchall_4ae

    move-result v83

    .line 3797
    .local v83, "videoIndex":I
    if-ltz v83, :cond_899

    .line 3798
    const/4 v4, 0x0

    .line 3799
    .local v4, "decoder":Landroid/media/MediaCodec;
    const/16 v37, 0x0

    .line 3800
    .local v37, "encoder":Landroid/media/MediaCodec;
    const/16 v53, 0x0

    .line 3801
    .local v53, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    const/16 v64, 0x0

    .line 3804
    .local v64, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    const-wide/16 v88, -0x1

    .line 3805
    .local v88, "videoTime":J
    const/16 v62, 0x0

    .line 3806
    .local v62, "outputDone":Z
    const/16 v50, 0x0

    .line 3807
    .local v50, "inputDone":Z
    const/16 v30, 0x0

    .line 3808
    .local v30, "decoderDone":Z
    const/16 v78, 0x0

    .line 3809
    .local v78, "swapUV":I
    const/16 v85, -0x5

    .line 3812
    .local v85, "videoTrackIndex":I
    const/16 v69, 0x0

    .line 3813
    .local v69, "processorType":I
    :try_start_17f
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v56

    .line 3814
    .local v56, "manufacturer":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_458

    .line 3815
    const-string v6, "video/avc"

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v26

    .line 3816
    .local v26, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string v6, "video/avc"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v28

    .line 3817
    .local v28, "colorFormat":I
    if-nez v28, :cond_22d

    .line 3818
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v10, "no supported color format"

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_1a3} :catch_1a3
    .catchall {:try_start_17f .. :try_end_1a3} :catchall_4ae

    .line 4106
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "colorFormat":I
    .end local v56    # "manufacturer":Ljava/lang/String;
    :catch_1a3
    move-exception v35

    .line 4107
    .local v35, "e":Ljava/lang/Exception;
    :goto_1a4
    :try_start_1a4
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1a7} :catch_88a
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_4ae

    .line 4108
    const/16 v43, 0x1

    move-wide/from16 v16, v86

    .line 4111
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v86    # "videoStartTime":J
    .local v16, "videoStartTime":J
    :goto_1ab
    :try_start_1ab
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 4113
    if-eqz v64, :cond_1b7

    .line 4114
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    .line 4116
    :cond_1b7
    if-eqz v53, :cond_1bc

    .line 4117
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->release()V

    .line 4119
    :cond_1bc
    if-eqz v4, :cond_1c4

    .line 4120
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 4121
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 4123
    :cond_1c4
    if-eqz v37, :cond_1cc

    .line 4124
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->stop()V

    .line 4125
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->release()V

    .line 4128
    :cond_1cc
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4136
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v69    # "processorType":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :goto_1cf
    if-nez v43, :cond_1e5

    const/4 v6, -0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_1e5

    .line 4137
    const/16 v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1e5} :catch_890
    .catchall {:try_start_1ab .. :try_end_1e5} :catchall_882

    .line 4143
    :cond_1e5
    if-eqz v46, :cond_1ea

    .line 4144
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->release()V

    .line 4146
    :cond_1ea
    if-eqz v57, :cond_1f2

    .line 4148
    const/4 v6, 0x0

    :try_start_1ed
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1f2} :catch_81d

    .line 4153
    :cond_1f2
    :goto_1f2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v80

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v45, v46

    .line 4160
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    :goto_210
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4161
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4162
    const/4 v6, 0x1

    goto/16 :goto_ca

    .line 3820
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v69    # "processorType":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_22d
    :try_start_22d
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v27

    .line 3821
    .local v27, "codecName":Ljava/lang/String;
    const-string v6, "OMX.qcom."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_41e

    .line 3822
    const/16 v69, 0x1

    .line 3823
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ne v6, v10, :cond_259

    .line 3824
    const-string v6, "lge"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_257

    const-string v6, "nokia"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_259

    .line 3825
    :cond_257
    const/16 v78, 0x1

    .line 3838
    :cond_259
    :goto_259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "codec = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " manufacturer = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "device = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3842
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    :goto_28b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorFormat = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3844
    move/from16 v71, v70

    .line 3845
    .local v71, "resultHeightAligned":I
    const/16 v66, 0x0

    .line 3846
    .local v66, "padding":I
    mul-int v6, v72, v70

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v25, v6, 0x2

    .line 3847
    .local v25, "bufferSize":I
    if-nez v69, :cond_45d

    .line 3848
    rem-int/lit8 v6, v70, 0x10

    if-eqz v6, :cond_2c3

    .line 3849
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 3850
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 3851
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    .line 3873
    :cond_2c3
    :goto_2c3
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3874
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_4a4

    .line 3875
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3879
    :goto_2d8
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v52

    .line 3881
    .local v52, "inputFormat":Landroid/media/MediaFormat;
    const-string v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v63

    .line 3882
    .local v63, "outputFormat":Landroid/media/MediaFormat;
    const-string v6, "color-format"

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3883
    const-string v10, "bitrate"

    if-lez v24, :cond_4dd

    move/from16 v6, v24

    :goto_2f9
    move-object/from16 v0, v63

    invoke-virtual {v0, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3884
    const-string v6, "frame-rate"

    const/16 v10, 0x19

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3885
    const-string v6, "i-frame-interval"

    const/16 v10, 0xa

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3886
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_328

    .line 3887
    const-string v6, "stride"

    add-int/lit8 v10, v72, 0x20

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3888
    const-string v6, "slice-height"

    move-object/from16 v0, v63

    move/from16 v1, v70

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 3891
    :cond_328
    const-string v6, "video/avc"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v37

    .line 3892
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3893
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_34e

    .line 3894
    new-instance v54, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_349
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_349} :catch_1a3
    .catchall {:try_start_22d .. :try_end_349} :catchall_4ae

    .line 3895
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .local v54, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :try_start_349
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_34c} :catch_894
    .catchall {:try_start_349 .. :try_end_34c} :catchall_4ae

    move-object/from16 v53, v54

    .line 3897
    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :cond_34e
    :try_start_34e
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->start()V

    .line 3899
    const-string v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 3900
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_4e2

    .line 3901
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    invoke-direct/range {v65 .. v65}, Lorg/telegram/messenger/video/OutputSurface;-><init>()V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .local v65, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .line 3905
    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    :goto_36a
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 3906
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 3908
    const/16 v22, 0x9c4

    .line 3909
    .local v22, "TIMEOUT_USEC":I
    const/16 v31, 0x0

    .line 3910
    .local v31, "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v40, 0x0

    .line 3911
    .local v40, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v38, 0x0

    .line 3912
    .local v38, "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_398

    .line 3913
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 3914
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    .line 3915
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_398

    .line 3916
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    .line 3920
    :cond_398
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3922
    :cond_39b
    if-nez v62, :cond_7f7

    .line 3923
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3924
    if-nez v50, :cond_3e9

    .line 3925
    const/16 v42, 0x0

    .line 3926
    .local v42, "eof":Z
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v47

    .line 3927
    .local v47, "index":I
    move/from16 v0, v47

    move/from16 v1, v83

    if-ne v0, v1, :cond_507

    .line 3928
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3929
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_3d3

    .line 3931
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_4f3

    .line 3932
    aget-object v49, v31, v5

    .line 3936
    .local v49, "inputBuf":Ljava/nio/ByteBuffer;
    :goto_3be
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 3937
    .local v7, "chunkSize":I
    if-gez v7, :cond_4f9

    .line 3938
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3939
    .end local v7    # "chunkSize":I
    const/16 v50, 0x1

    .line 3948
    .end local v5    # "inputBufIndex":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_3d3
    :goto_3d3
    if-eqz v42, :cond_3e9

    .line 3949
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 3950
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_3e9

    .line 3951
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move-object v8, v4

    move v9, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3952
    const/16 v50, 0x1

    .line 3957
    .end local v5    # "inputBufIndex":I
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_3e9
    if-nez v30, :cond_510

    const/16 v32, 0x1

    .line 3958
    .local v32, "decoderOutputAvailable":Z
    :goto_3ed
    const/16 v39, 0x1

    .line 3959
    .local v39, "encoderOutputAvailable":Z
    :cond_3ef
    :goto_3ef
    if-nez v32, :cond_3f3

    if-eqz v39, :cond_39b

    .line 3960
    :cond_3f3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3961
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v41

    .line 3962
    .local v41, "encoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_514

    .line 3963
    const/16 v39, 0x0

    .line 4022
    :cond_407
    :goto_407
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_3ef

    .line 4026
    if-nez v30, :cond_3ef

    .line 4027
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v33

    .line 4028
    .local v33, "decoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v33

    if-ne v0, v6, :cond_686

    .line 4029
    const/16 v32, 0x0

    goto :goto_3ef

    .line 3828
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v39    # "encoderOutputAvailable":Z
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v41    # "encoderStatus":I
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v66    # "padding":I
    .end local v71    # "resultHeightAligned":I
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v27    # "codecName":Ljava/lang/String;
    :cond_41e
    const-string v6, "OMX.Intel."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42c

    .line 3829
    const/16 v69, 0x2

    goto/16 :goto_259

    .line 3830
    :cond_42c
    const-string v6, "OMX.MTK.VIDEO.ENCODER.AVC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43a

    .line 3831
    const/16 v69, 0x3

    goto/16 :goto_259

    .line 3832
    :cond_43a
    const-string v6, "OMX.SEC.AVC.Encoder"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44a

    .line 3833
    const/16 v69, 0x4

    .line 3834
    const/16 v78, 0x1

    goto/16 :goto_259

    .line 3835
    :cond_44a
    const-string v6, "OMX.TI.DUCATI1.VIDEO.H264E"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_259

    .line 3836
    const/16 v69, 0x5

    goto/16 :goto_259

    .line 3840
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    .end local v28    # "colorFormat":I
    :cond_458
    const v28, 0x7f000789

    .restart local v28    # "colorFormat":I
    goto/16 :goto_28b

    .line 3853
    .restart local v25    # "bufferSize":I
    .restart local v66    # "padding":I
    .restart local v71    # "resultHeightAligned":I
    :cond_45d
    const/4 v6, 0x1

    move/from16 v0, v69

    if-ne v0, v6, :cond_47e

    .line 3854
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v10, "lge"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c3

    .line 3855
    mul-int v6, v72, v70

    add-int/lit16 v6, v6, 0x7ff

    and-int/lit16 v0, v6, -0x800

    move/from16 v82, v0

    .line 3856
    .local v82, "uvoffset":I
    mul-int v6, v72, v70

    sub-int v66, v82, v6

    .line 3857
    add-int v25, v25, v66

    .line 3858
    goto/16 :goto_2c3

    .line 3859
    .end local v82    # "uvoffset":I
    :cond_47e
    const/4 v6, 0x5

    move/from16 v0, v69

    if-eq v0, v6, :cond_2c3

    .line 3865
    const/4 v6, 0x3

    move/from16 v0, v69

    if-ne v0, v6, :cond_2c3

    .line 3866
    const-string v6, "baidu"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c3

    .line 3867
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 3868
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 3869
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    goto/16 :goto_2c3

    .line 3877
    :cond_4a4
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v10, v11, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_4ac
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_4ac} :catch_1a3
    .catchall {:try_start_34e .. :try_end_4ac} :catchall_4ae

    goto/16 :goto_2d8

    .line 4143
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :catchall_4ae
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    :goto_4b3
    if-eqz v45, :cond_4b8

    .line 4144
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 4146
    :cond_4b8
    if-eqz v57, :cond_4c0

    .line 4148
    const/4 v10, 0x0

    :try_start_4bb
    move-object/from16 v0, v57

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_4c0
    .catch Ljava/lang/Exception; {:try_start_4bb .. :try_end_4c0} :catch_85b

    .line 4153
    :cond_4c0
    :goto_4c0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    throw v6

    .line 3883
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_4dd
    const v6, 0xe1000

    goto/16 :goto_2f9

    .line 3903
    :cond_4e2
    :try_start_4e2
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    move-object/from16 v0, v65

    move/from16 v1, v72

    move/from16 v2, v70

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/video/OutputSurface;-><init>(III)V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    goto/16 :goto_36a

    .line 3934
    .restart local v5    # "inputBufIndex":I
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v42    # "eof":Z
    .restart local v47    # "index":I
    :cond_4f3
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v49

    .restart local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    goto/16 :goto_3be

    .line 3941
    .restart local v7    # "chunkSize":I
    :cond_4f9
    const/4 v6, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 3942
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_3d3

    .line 3945
    .end local v5    # "inputBufIndex":I
    .end local v7    # "chunkSize":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_507
    const/4 v6, -0x1

    move/from16 v0, v47

    if-ne v0, v6, :cond_3d3

    .line 3946
    const/16 v42, 0x1

    goto/16 :goto_3d3

    .line 3957
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_510
    const/16 v32, 0x0

    goto/16 :goto_3ed

    .line 3964
    .restart local v32    # "decoderOutputAvailable":Z
    .restart local v39    # "encoderOutputAvailable":Z
    .restart local v41    # "encoderStatus":I
    :cond_514
    const/4 v6, -0x3

    move/from16 v0, v41

    if-ne v0, v6, :cond_525

    .line 3965
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_407

    .line 3966
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    goto/16 :goto_407

    .line 3968
    :cond_525
    const/4 v6, -0x2

    move/from16 v0, v41

    if-ne v0, v6, :cond_53e

    .line 3969
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 3970
    .local v59, "newFormat":Landroid/media/MediaFormat;
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_407

    .line 3971
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_407

    .line 3973
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_53e
    if-gez v41, :cond_55b

    .line 3974
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3977
    :cond_55b
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_586

    .line 3978
    aget-object v36, v40, v41

    .line 3982
    .local v36, "encodedData":Ljava/nio/ByteBuffer;
    :goto_563
    if-nez v36, :cond_58f

    .line 3983
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3980
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_586
    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    .restart local v36    # "encodedData":Ljava/nio/ByteBuffer;
    goto :goto_563

    .line 3985
    :cond_58f
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    if-le v6, v10, :cond_5b8

    .line 3986
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_5cc

    .line 3987
    const/4 v6, 0x1

    move-object/from16 v0, v57

    move/from16 v1, v85

    move-object/from16 v2, v36

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_5b8

    .line 3988
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4019
    :cond_5b8
    :goto_5b8
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_682

    const/16 v62, 0x1

    .line 4020
    :goto_5c2
    const/4 v6, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_407

    .line 3990
    :cond_5cc
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_5b8

    .line 3991
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    move-object/from16 v29, v0

    .line 3992
    .local v29, "csd":[B
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3993
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3994
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 3995
    const/16 v75, 0x0

    .line 3996
    .local v75, "sps":Ljava/nio/ByteBuffer;
    const/16 v67, 0x0

    .line 3997
    .local v67, "pps":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v23, v6, -0x1

    .local v23, "a":I
    :goto_601
    if-ltz v23, :cond_654

    .line 3998
    const/4 v6, 0x3

    move/from16 v0, v23

    if-le v0, v6, :cond_654

    .line 3999
    aget-byte v6, v29, v23

    const/4 v10, 0x1

    if-ne v6, v10, :cond_67f

    add-int/lit8 v6, v23, -0x1

    aget-byte v6, v29, v6

    if-nez v6, :cond_67f

    add-int/lit8 v6, v23, -0x2

    aget-byte v6, v29, v6

    if-nez v6, :cond_67f

    add-int/lit8 v6, v23, -0x3

    aget-byte v6, v29, v6

    if-nez v6, :cond_67f

    .line 4000
    add-int/lit8 v6, v23, -0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v75

    .line 4001
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v10, v23, -0x3

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v67

    .line 4002
    const/4 v6, 0x0

    add-int/lit8 v10, v23, -0x3

    move-object/from16 v0, v75

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4003
    add-int/lit8 v6, v23, -0x3

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v11, v23, -0x3

    sub-int/2addr v10, v11

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4011
    :cond_654
    const-string v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v59

    .line 4012
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    if-eqz v75, :cond_674

    if-eqz v67, :cond_674

    .line 4013
    const-string v6, "csd-0"

    move-object/from16 v0, v59

    move-object/from16 v1, v75

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 4014
    const-string v6, "csd-1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 4016
    :cond_674
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_5b8

    .line 3997
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_67f
    add-int/lit8 v23, v23, -0x1

    goto :goto_601

    .line 4019
    .end local v23    # "a":I
    .end local v29    # "csd":[B
    .end local v67    # "pps":Ljava/nio/ByteBuffer;
    .end local v75    # "sps":Ljava/nio/ByteBuffer;
    :cond_682
    const/16 v62, 0x0

    goto/16 :goto_5c2

    .line 4030
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    .restart local v33    # "decoderStatus":I
    :cond_686
    const/4 v6, -0x3

    move/from16 v0, v33

    if-eq v0, v6, :cond_3ef

    .line 4032
    const/4 v6, -0x2

    move/from16 v0, v33

    if-ne v0, v6, :cond_6ae

    .line 4033
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 4034
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newFormat = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_3ef

    .line 4035
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_6ae
    if-gez v33, :cond_6cb

    .line 4036
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4039
    :cond_6cb
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_77c

    .line 4040
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_778

    const/16 v34, 0x1

    .line 4044
    .local v34, "doRender":Z
    :goto_6d9
    const-wide/16 v10, 0x0

    cmp-long v6, v18, v10

    if-lez v6, :cond_6f7

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v18

    if-ltz v6, :cond_6f7

    .line 4045
    const/16 v50, 0x1

    .line 4046
    const/16 v30, 0x1

    .line 4047
    const/16 v34, 0x0

    .line 4048
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v48

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 4050
    :cond_6f7
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_733

    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-nez v6, :cond_733

    .line 4051
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v76

    if-gez v6, :cond_793

    .line 4052
    const/16 v34, 0x0

    .line 4053
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drop frame startTime = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v76

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " present time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4058
    :cond_733
    :goto_733
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_73a
    .catch Ljava/lang/Exception; {:try_start_4e2 .. :try_end_73a} :catch_1a3
    .catchall {:try_start_4e2 .. :try_end_73a} :catchall_4ae

    .line 4059
    if-eqz v34, :cond_75e

    .line 4060
    const/16 v44, 0x0

    .line 4062
    .local v44, "errorWait":Z
    :try_start_73e
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_741
    .catch Ljava/lang/Exception; {:try_start_73e .. :try_end_741} :catch_79a
    .catchall {:try_start_73e .. :try_end_741} :catchall_4ae

    .line 4067
    :goto_741
    if-nez v44, :cond_75e

    .line 4068
    :try_start_743
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_7a1

    .line 4069
    const/4 v6, 0x0

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 4070
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 4071
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    .line 4087
    .end local v44    # "errorWait":Z
    :cond_75e
    :goto_75e
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3ef

    .line 4088
    const/16 v32, 0x0

    .line 4089
    const-string v6, "decoder stream end"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4090
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_7dd

    .line 4091
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_3ef

    .line 4040
    .end local v34    # "doRender":Z
    :cond_778
    const/16 v34, 0x0

    goto/16 :goto_6d9

    .line 4042
    :cond_77c
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_78c

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_790

    :cond_78c
    const/16 v34, 0x1

    .restart local v34    # "doRender":Z
    :goto_78e
    goto/16 :goto_6d9

    .end local v34    # "doRender":Z
    :cond_790
    const/16 v34, 0x0

    goto :goto_78e

    .line 4055
    .restart local v34    # "doRender":Z
    :cond_793
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v88, v0

    goto :goto_733

    .line 4063
    .restart local v44    # "errorWait":Z
    :catch_79a
    move-exception v35

    .line 4064
    .restart local v35    # "e":Ljava/lang/Exception;
    const/16 v44, 0x1

    .line 4065
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_741

    .line 4073
    .end local v35    # "e":Ljava/lang/Exception;
    :cond_7a1
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4074
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_7d7

    .line 4075
    const/4 v6, 0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 4076
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getFrame()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 4077
    .local v8, "rgbBuf":Ljava/nio/ByteBuffer;
    aget-object v9, v38, v5

    .line 4078
    .local v9, "yuvBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v10, v28

    move/from16 v11, v72

    move/from16 v12, v70

    move/from16 v13, v66

    move/from16 v14, v78

    .line 4079
    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    .line 4080
    const/4 v12, 0x0

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x0

    move-object/from16 v10, v37

    move v11, v5

    move/from16 v13, v25

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_75e

    .line 4082
    .end local v8    # "rgbBuf":Ljava/nio/ByteBuffer;
    .end local v9    # "yuvBuf":Ljava/nio/ByteBuffer;
    :cond_7d7
    const-string v6, "input buffer not available"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_75e

    .line 4093
    .end local v5    # "inputBufIndex":I
    .end local v44    # "errorWait":Z
    :cond_7dd
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4094
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_3ef

    .line 4095
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x4

    move-object/from16 v10, v37

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_7f5
    .catch Ljava/lang/Exception; {:try_start_743 .. :try_end_7f5} :catch_1a3
    .catchall {:try_start_743 .. :try_end_7f5} :catchall_4ae

    goto/16 :goto_3ef

    .line 4103
    .end local v5    # "inputBufIndex":I
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v34    # "doRender":Z
    .end local v39    # "encoderOutputAvailable":Z
    .end local v41    # "encoderStatus":I
    :cond_7f7
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_89d

    .line 4104
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_1ab

    .line 4131
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v16    # "videoStartTime":J
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    .restart local v86    # "videoStartTime":J
    :cond_801
    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    move-wide/from16 v16, v76

    :try_start_80f
    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_812
    .catch Ljava/lang/Exception; {:try_start_80f .. :try_end_812} :catch_88a
    .catchall {:try_start_80f .. :try_end_812} :catchall_4ae

    move-result-wide v88

    .line 4132
    .restart local v88    # "videoTime":J
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_899

    .line 4133
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_1cf

    .line 4149
    .end local v88    # "videoTime":J
    :catch_81d
    move-exception v35

    .line 4150
    .restart local v35    # "e":Ljava/lang/Exception;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1f2

    .line 4139
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v86    # "videoStartTime":J
    :catch_823
    move-exception v35

    move-wide/from16 v16, v86

    .line 4140
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    .restart local v35    # "e":Ljava/lang/Exception;
    :goto_826
    const/16 v43, 0x1

    .line 4141
    :try_start_828
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_82b
    .catchall {:try_start_828 .. :try_end_82b} :catchall_887

    .line 4143
    if-eqz v45, :cond_830

    .line 4144
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 4146
    :cond_830
    if-eqz v57, :cond_838

    .line 4148
    const/4 v6, 0x0

    :try_start_833
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie(Z)V
    :try_end_838
    .catch Ljava/lang/Exception; {:try_start_833 .. :try_end_838} :catch_856

    .line 4153
    :cond_838
    :goto_838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v80

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_210

    .line 4149
    :catch_856
    move-exception v35

    .line 4150
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_838

    .line 4149
    .end local v35    # "e":Ljava/lang/Exception;
    :catch_85b
    move-exception v35

    .line 4150
    .restart local v35    # "e":Ljava/lang/Exception;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_4c0

    .line 4156
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .end local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    .restart local v86    # "videoStartTime":J
    :cond_861
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4157
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4158
    const/4 v6, 0x0

    goto/16 :goto_ca

    .line 4143
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    :catchall_87d
    move-exception v6

    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4b3

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    :catchall_882
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_4b3

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v35    # "e":Ljava/lang/Exception;
    :catchall_887
    move-exception v6

    goto/16 :goto_4b3

    .line 4139
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v86    # "videoStartTime":J
    :catch_88a
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto :goto_826

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    :catch_890
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto :goto_826

    .line 4106
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :catch_894
    move-exception v35

    move-object/from16 v53, v54

    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    goto/16 :goto_1a4

    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :cond_899
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_1cf

    .end local v16    # "videoStartTime":J
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_89d
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_1ab
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 3135
    const/4 v5, 0x0

    .line 3136
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 3138
    .local v8, "output":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 3139
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_29

    .line 3140
    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3141
    .local v4, "id":I
    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v10, v10, -0x1

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3142
    const/4 v10, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3143
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%d.%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3145
    .end local v4    # "id":I
    :cond_29
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 3146
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3147
    .local v3, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_a4
    .catchall {:try_start_2 .. :try_end_46} :catchall_8b

    .line 3148
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .local v9, "output":Ljava/io/FileOutputStream;
    const/16 v10, 0x5000

    :try_start_48
    new-array v0, v10, [B

    .line 3150
    .local v0, "buffer":[B
    :goto_4a
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_67

    .line 3151
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_55} :catch_56
    .catchall {:try_start_48 .. :try_end_55} :catchall_a1

    goto :goto_4a

    .line 3154
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    :catch_56
    move-exception v1

    move-object v8, v9

    .line 3155
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :goto_58
    :try_start_58
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_8b

    .line 3158
    if-eqz v5, :cond_60

    .line 3159
    :try_start_5d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_81

    .line 3165
    :cond_60
    :goto_60
    if-eqz v8, :cond_65

    .line 3166
    :try_start_62
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_86

    .line 3172
    :cond_65
    :goto_65
    const/4 v10, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_66
    return-object v10

    .line 3153
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "len":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :cond_67
    :try_start_67
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_56
    .catchall {:try_start_67 .. :try_end_6a} :catchall_a1

    move-result-object v10

    .line 3158
    if-eqz v5, :cond_70

    .line 3159
    :try_start_6d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_77

    .line 3165
    :cond_70
    :goto_70
    if-eqz v9, :cond_75

    .line 3166
    :try_start_72
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_7c

    :cond_75
    :goto_75
    move-object v8, v9

    .line 3153
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_66

    .line 3161
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_77
    move-exception v2

    .line 3162
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_70

    .line 3168
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_7c
    move-exception v2

    .line 3169
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_75

    .line 3161
    .end local v0    # "buffer":[B
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "len":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :catch_81
    move-exception v2

    .line 3162
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_60

    .line 3168
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_86
    move-exception v2

    .line 3169
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_65

    .line 3157
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_8b
    move-exception v10

    .line 3158
    :goto_8c
    if-eqz v5, :cond_91

    .line 3159
    :try_start_8e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_97

    .line 3165
    :cond_91
    :goto_91
    if-eqz v8, :cond_96

    .line 3166
    :try_start_93
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_96} :catch_9c

    .line 3170
    :cond_96
    :goto_96
    throw v10

    .line 3161
    :catch_97
    move-exception v2

    .line 3162
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_91

    .line 3168
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_9c
    move-exception v2

    .line 3169
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_96

    .line 3157
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catchall_a1
    move-exception v10

    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_8c

    .line 3154
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_a4
    move-exception v1

    goto :goto_58
.end method

.method private didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
    .registers 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "last"    # Z
    .param p4, "error"    # Z

    .prologue
    .line 3562
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3563
    .local v6, "firstWrite":Z
    if-eqz v6, :cond_7

    .line 3564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3566
    :cond_7
    new-instance v0, Lorg/telegram/messenger/MediaController$25;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$25;-><init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MessageObject;Ljava/io/File;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3586
    return-void
.end method

.method private getCurrentDownloadMask()I
    .registers 2

    .prologue
    .line 1039
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedToWiFi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1040
    iget v0, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 1044
    :goto_8
    return v0

    .line 1041
    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1042
    iget v0, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_8

    .line 1044
    :cond_12
    iget v0, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    goto :goto_8
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3108
    const/4 v9, 0x0

    .line 3109
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3110
    const/4 v6, 0x0

    .line 3112
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_e
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3114
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_33} :catch_4f
    .catchall {:try_start_e .. :try_end_33} :catchall_59

    move-result-object v9

    .line 3119
    :cond_34
    if-eqz v6, :cond_39

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3124
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_39
    :goto_39
    if-nez v9, :cond_4e

    .line 3125
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3126
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3127
    .local v7, "cut":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_4e

    .line 3128
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3131
    .end local v7    # "cut":I
    :cond_4e
    return-object v9

    .line 3116
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_4f
    move-exception v8

    .line 3117
    .local v8, "e":Ljava/lang/Exception;
    :try_start_50
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_59

    .line 3119
    if-eqz v6, :cond_39

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_39

    .line 3119
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_59
    move-exception v0

    if-eqz v6, :cond_5f

    .line 3120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .registers 4

    .prologue
    .line 583
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 584
    .local v0, "localInstance":Lorg/telegram/messenger/MediaController;
    if-nez v0, :cond_14

    .line 585
    const-class v3, Lorg/telegram/messenger/MediaController;

    monitor-enter v3

    .line 586
    :try_start_7
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 587
    if-nez v0, :cond_13

    .line 588
    new-instance v1, Lorg/telegram/messenger/MediaController;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController;-><init>()V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_15

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .local v1, "localInstance":Lorg/telegram/messenger/MediaController;
    :try_start_10
    sput-object v1, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_18

    move-object v0, v1

    .line 590
    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    :cond_13
    :try_start_13
    monitor-exit v3

    .line 592
    :cond_14
    return-object v0

    .line 590
    :catchall_15
    move-exception v2

    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    :catchall_18
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    goto :goto_16
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .registers 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 3083
    const/4 v3, 0x0

    .line 3085
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_3
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3086
    const/4 v6, 0x3

    new-array v2, v6, [B

    .line 3087
    .local v2, "header":[B
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_33

    .line 3088
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 3089
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_33

    const-string v6, "gif"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_3e
    .catchall {:try_start_3 .. :try_end_24} :catchall_4d

    move-result v6

    if-eqz v6, :cond_33

    .line 3090
    const/4 v5, 0x1

    .line 3097
    if-eqz v3, :cond_2d

    .line 3098
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 3104
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return v5

    .line 3100
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 3101
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 3097
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_33
    if-eqz v3, :cond_2d

    .line 3098
    :try_start_35
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_2d

    .line 3100
    :catch_39
    move-exception v1

    .line 3101
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 3093
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_3e
    move-exception v0

    .line 3094
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4d

    .line 3097
    if-eqz v3, :cond_2d

    .line 3098
    :try_start_44
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_2d

    .line 3100
    :catch_48
    move-exception v1

    .line 3101
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 3096
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_4d
    move-exception v5

    .line 3097
    if-eqz v3, :cond_53

    .line 3098
    :try_start_50
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    .line 3102
    :cond_53
    :goto_53
    throw v5

    .line 3100
    :catch_54
    move-exception v1

    .line 3101
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_53
.end method

.method private isNearToSensor(F)Z
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 1646
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .registers 2
    .param p0, "colorFormat"    # I

    .prologue
    .line 3514
    sparse-switch p0, :sswitch_data_8

    .line 3522
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 3520
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3514
    nop

    :sswitch_data_8
    .sparse-switch
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x27 -> :sswitch_5
        0x7f000100 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .registers 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xc

    .line 3055
    const/4 v3, 0x0

    .line 3057
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_4
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3058
    const/16 v6, 0xc

    new-array v2, v6, [B

    .line 3059
    .local v2, "header":[B
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_42

    .line 3060
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 3061
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_42

    .line 3062
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 3063
    const-string v6, "riff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    const-string v6, "webp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_4d
    .catchall {:try_start_4 .. :try_end_33} :catchall_5c

    move-result v6

    if-eqz v6, :cond_42

    .line 3064
    const/4 v5, 0x1

    .line 3072
    if-eqz v3, :cond_3c

    .line 3073
    :try_start_39
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 3079
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_3c
    :goto_3c
    return v5

    .line 3075
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_3d
    move-exception v1

    .line 3076
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 3072
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_42
    if-eqz v3, :cond_3c

    .line 3073
    :try_start_44
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_3c

    .line 3075
    :catch_48
    move-exception v1

    .line 3076
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 3068
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_4d
    move-exception v0

    .line 3069
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5c

    .line 3072
    if-eqz v3, :cond_3c

    .line 3073
    :try_start_53
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_3c

    .line 3075
    :catch_57
    move-exception v1

    .line 3076
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 3071
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_5c
    move-exception v5

    .line 3072
    if-eqz v3, :cond_62

    .line 3073
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    .line 3077
    :cond_62
    :goto_62
    throw v5

    .line 3075
    :catch_63
    move-exception v1

    .line 3076
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_62
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .registers 3
    .param p0, "guid"    # I

    .prologue
    .line 3265
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$23;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$23;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3406
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3407
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3408
    return-void
.end method

.method private native openOpusFile(Ljava/lang/String;)I
.end method

.method private playNextMessage(Z)V
    .registers 10
    .param p1, "byStop"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2149
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2151
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_9
    if-eqz p1, :cond_25

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-ne v2, v4, :cond_25

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_25

    .line 2152
    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2153
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2211
    :cond_21
    :goto_21
    return-void

    .line 2149
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_22
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_9

    .line 2156
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_25
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2157
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_dc

    .line 2158
    iput v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2159
    if-eqz p1, :cond_dc

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-nez v2, :cond_dc

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_dc

    .line 2160
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_47

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_21

    .line 2161
    :cond_47
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_b4

    .line 2163
    :try_start_4b
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_a5

    .line 2168
    :goto_50
    :try_start_50
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_aa

    .line 2173
    :goto_55
    :try_start_55
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2174
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_af

    .line 2194
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2195
    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2196
    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 2197
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2198
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2199
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v6, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2200
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 2164
    :catch_a5
    move-exception v1

    .line 2165
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_50

    .line 2169
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_aa
    move-exception v1

    .line 2170
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_55

    .line 2175
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_af
    move-exception v1

    .line 2176
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5d

    .line 2178
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_5d

    .line 2179
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2181
    :try_start_bb
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2182
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c5} :catch_d2
    .catchall {:try_start_bb .. :try_end_c5} :catchall_cf

    .line 2187
    :goto_c5
    :try_start_c5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2188
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cd} :catch_d7
    .catchall {:try_start_c5 .. :try_end_cd} :catchall_cf

    .line 2192
    :goto_cd
    :try_start_cd
    monitor-exit v3

    goto :goto_5d

    :catchall_cf
    move-exception v2

    monitor-exit v3
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_cf

    throw v2

    .line 2183
    :catch_d2
    move-exception v1

    .line 2184
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_d3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c5

    .line 2189
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_d7
    move-exception v1

    .line 2190
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_cf

    goto :goto_cd

    .line 2206
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_dc
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_21

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 2209
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2210
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_21
.end method

.method private processLaterArrays()V
    .registers 6

    .prologue
    .line 1355
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1356
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_a

    .line 1358
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_26
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1359
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .line 1360
    .local v0, "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_31

    .line 1362
    .end local v0    # "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    :cond_41
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1363
    return-void
.end method

.method private readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .registers 38
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "extractor"    # Landroid/media/MediaExtractor;
    .param p3, "mediaMuxer"    # Lorg/telegram/messenger/video/MP4Builder;
    .param p4, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "file"    # Ljava/io/File;
    .param p10, "isAudio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3590
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v22

    .line 3591
    .local v22, "trackIndex":I
    if-ltz v22, :cond_1b3

    .line 3592
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3593
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v19

    .line 3594
    .local v19, "trackFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v17

    .line 3595
    .local v17, "muxerTrackIndex":I
    const-string v24, "max-input-size"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v16

    .line 3596
    .local v16, "maxBufferSize":I
    const/4 v11, 0x0

    .line 3597
    .local v11, "inputDone":Z
    const-wide/16 v24, 0x0

    cmp-long v24, p5, v24

    if-lez v24, :cond_103

    .line 3598
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3602
    :goto_41
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 3603
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v20, -0x1

    .line 3605
    .local v20, "startTime":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3606
    const-wide/16 v14, -0x64

    .line 3608
    .local v14, "lastTimestamp":J
    :cond_4c
    :goto_4c
    if-nez v11, :cond_1ab

    .line 3609
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3611
    const/4 v9, 0x0

    .line 3612
    .local v9, "eof":Z
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    .line 3613
    .local v10, "index":I
    move/from16 v0, v22

    if-ne v10, v0, :cond_19f

    .line 3614
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3615
    sget v24, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v25, 0x15

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_86

    .line 3616
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3617
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3619
    :cond_86
    if-nez p10, :cond_118

    .line 3620
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 3621
    .local v7, "array":[B
    if-eqz v7, :cond_118

    .line 3622
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v18

    .line 3623
    .local v18, "offset":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    add-int v13, v18, v24

    .line 3624
    .local v13, "len":I
    const/16 v23, -0x1

    .line 3625
    .local v23, "writeStart":I
    move/from16 v6, v18

    .local v6, "a":I
    :goto_9c
    add-int/lit8 v24, v13, -0x4

    move/from16 v0, v24

    if-gt v6, v0, :cond_118

    .line 3626
    aget-byte v24, v7, v6

    if-nez v24, :cond_be

    add-int/lit8 v24, v6, 0x1

    aget-byte v24, v7, v24

    if-nez v24, :cond_be

    add-int/lit8 v24, v6, 0x2

    aget-byte v24, v7, v24

    if-nez v24, :cond_be

    add-int/lit8 v24, v6, 0x3

    aget-byte v24, v7, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c4

    :cond_be
    add-int/lit8 v24, v13, -0x4

    move/from16 v0, v24

    if-ne v6, v0, :cond_100

    .line 3627
    :cond_c4
    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_115

    .line 3628
    sub-int v25, v6, v23

    add-int/lit8 v24, v13, -0x4

    move/from16 v0, v24

    if-eq v6, v0, :cond_112

    const/16 v24, 0x4

    :goto_d6
    sub-int v12, v25, v24

    .line 3629
    .local v12, "l":I
    shr-int/lit8 v24, v12, 0x18

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v7, v23

    .line 3630
    add-int/lit8 v24, v23, 0x1

    shr-int/lit8 v25, v12, 0x10

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v7, v24

    .line 3631
    add-int/lit8 v24, v23, 0x2

    shr-int/lit8 v25, v12, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v7, v24

    .line 3632
    add-int/lit8 v24, v23, 0x3

    int-to-byte v0, v12

    move/from16 v25, v0

    aput-byte v25, v7, v24

    .line 3633
    move/from16 v23, v6

    .line 3625
    .end local v12    # "l":I
    :cond_100
    :goto_100
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 3600
    .end local v6    # "a":I
    .end local v7    # "array":[B
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "eof":Z
    .end local v10    # "index":I
    .end local v13    # "len":I
    .end local v14    # "lastTimestamp":J
    .end local v18    # "offset":I
    .end local v20    # "startTime":J
    .end local v23    # "writeStart":I
    :cond_103
    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_41

    .line 3628
    .restart local v6    # "a":I
    .restart local v7    # "array":[B
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "eof":Z
    .restart local v10    # "index":I
    .restart local v13    # "len":I
    .restart local v14    # "lastTimestamp":J
    .restart local v18    # "offset":I
    .restart local v20    # "startTime":J
    .restart local v23    # "writeStart":I
    :cond_112
    const/16 v24, 0x0

    goto :goto_d6

    .line 3635
    :cond_115
    move/from16 v23, v6

    goto :goto_100

    .line 3641
    .end local v6    # "a":I
    .end local v7    # "array":[B
    .end local v13    # "len":I
    .end local v18    # "offset":I
    .end local v23    # "writeStart":I
    :cond_118
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v24, v0

    if-ltz v24, :cond_193

    .line 3642
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 3648
    :goto_12a
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v24, v0

    if-lez v24, :cond_189

    if-nez v9, :cond_189

    .line 3649
    const-wide/16 v24, 0x0

    cmp-long v24, p5, v24

    if-lez v24, :cond_146

    const-wide/16 v24, -0x1

    cmp-long v24, v20, v24

    if-nez v24, :cond_146

    .line 3650
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v0

    .line 3652
    :cond_146
    const-wide/16 v24, 0x0

    cmp-long v24, p7, v24

    if-ltz v24, :cond_156

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v24, v0

    cmp-long v24, v24, p7

    if-gez v24, :cond_19d

    .line 3653
    :cond_156
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3654
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 3655
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    move-object/from16 v2, p4

    move/from16 v3, v24

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v24

    if-eqz v24, :cond_189

    .line 3656
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 3662
    :cond_189
    :goto_189
    if-nez v9, :cond_18e

    .line 3663
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    .line 3670
    :cond_18e
    :goto_18e
    if-eqz v9, :cond_4c

    .line 3671
    const/4 v11, 0x1

    goto/16 :goto_4c

    .line 3644
    :cond_193
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3645
    const/4 v9, 0x1

    goto :goto_12a

    .line 3659
    :cond_19d
    const/4 v9, 0x1

    goto :goto_189

    .line 3665
    :cond_19f
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_1a7

    .line 3666
    const/4 v9, 0x1

    goto :goto_18e

    .line 3668
    :cond_1a7
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_18e

    .line 3675
    .end local v9    # "eof":Z
    .end local v10    # "index":I
    :cond_1ab
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 3678
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "inputDone":Z
    .end local v14    # "lastTimestamp":J
    .end local v16    # "maxBufferSize":I
    .end local v17    # "muxerTrackIndex":I
    .end local v19    # "trackFormat":Landroid/media/MediaFormat;
    .end local v20    # "startTime":J
    :goto_1b2
    return-wide v20

    :cond_1b3
    const-wide/16 v20, -0x1

    goto :goto_1b2
.end method

.method private native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p0, "fullPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;

    .prologue
    .line 2895
    if-nez p0, :cond_3

    .line 3052
    :cond_2
    :goto_2
    return-void

    .line 2899
    :cond_3
    const/4 v8, 0x0

    .line 2900
    .local v8, "file":Ljava/io/File;
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    .line 2901
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2902
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2903
    const/4 v8, 0x0

    .line 2907
    :cond_18
    if-eqz v8, :cond_2

    .line 2911
    move-object v3, v8

    .line 2912
    .local v3, "sourceFile":Ljava/io/File;
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 2913
    .local v4, "cancelled":[Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2914
    const/4 v9, 0x0

    .line 2915
    .local v9, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    if-eqz p1, :cond_4d

    .line 2917
    :try_start_27
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x2

    invoke-direct {v10, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_60

    .line 2918
    .end local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .local v10, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_start_2d
    const-string v0, "Loading"

    const v1, 0x7f0702eb

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2919
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2920
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 2921
    new-instance v0, Lorg/telegram/messenger/MediaController$21;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MediaController$21;-><init>([Z)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2927
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_65

    move-object v9, v10

    .line 2933
    .end local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :cond_4d
    :goto_4d
    move-object v5, v9

    .line 2935
    .local v5, "finalProgress":Lorg/telegram/ui/ActionBar/AlertDialog;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/MediaController$22;

    move v1, p2

    move-object v2, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$22;-><init>(ILjava/lang/String;Ljava/io/File;[ZLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3050
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 2928
    .end local v5    # "finalProgress":Lorg/telegram/ui/ActionBar/AlertDialog;
    :catch_60
    move-exception v7

    .line 2929
    .local v7, "e":Ljava/lang/Exception;
    :goto_61
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4d

    .line 2928
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :catch_65
    move-exception v7

    move-object v9, v10

    .end local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    goto :goto_61
.end method

.method private native seekOpusFile(F)I
.end method

.method private seekOpusPlayer(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 2020
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 2051
    :goto_6
    return-void

    .line 2023
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_10

    .line 2024
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 2026
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2027
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 12
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3491
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    .line 3492
    .local v4, "numCodecs":I
    const/4 v2, 0x0

    .line 3493
    .local v2, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v4, :cond_45

    .line 3494
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 3495
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_15

    .line 3493
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3498
    :cond_15
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 3499
    .local v6, "types":[Ljava/lang/String;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v8, :cond_12

    aget-object v5, v6, v7

    .line 3500
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 3501
    move-object v2, v0

    .line 3502
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OMX.SEC.avc.enc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    move-object v3, v2

    .line 3510
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/String;
    .local v3, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :goto_33
    return-object v3

    .line 3504
    .end local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "types":[Ljava/lang/String;
    :cond_34
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    move-object v3, v2

    .line 3505
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_33

    .line 3499
    .end local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_45
    move-object v3, v2

    .line 3510
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_33
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .registers 8
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3528
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 3529
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v3, 0x0

    .line 3530
    .local v3, "lastColorFormat":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2a

    .line 3531
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v4, v2

    .line 3532
    .local v1, "colorFormat":I
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3533
    move v3, v1

    .line 3534
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/16 v4, 0x13

    if-eq v1, v4, :cond_27

    .line 3539
    .end local v1    # "colorFormat":I
    :cond_26
    :goto_26
    return v1

    .line 3530
    .restart local v1    # "colorFormat":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v1    # "colorFormat":I
    :cond_2a
    move v1, v3

    .line 3539
    goto :goto_26
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .registers 8
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "audio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3544
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 3545
    .local v3, "numTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v3, :cond_27

    .line 3546
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 3547
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3548
    .local v2, "mime":Ljava/lang/String;
    if-eqz p2, :cond_1c

    .line 3549
    const-string v4, "audio/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 3558
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :cond_1b
    :goto_1b
    return v1

    .line 3553
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_1c
    const-string v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 3545
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3558
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_27
    const/4 v1, -0x5

    goto :goto_1b
.end method

.method private setPlayerVolume()V
    .registers 5

    .prologue
    .line 784
    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 785
    const/high16 v1, 0x3f800000    # 1.0f

    .line 789
    .local v1, "volume":F
    :goto_7
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_15

    .line 790
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 797
    .end local v1    # "volume":F
    :cond_10
    :goto_10
    return-void

    .line 787
    :cond_11
    const v1, 0x3e4ccccd

    .restart local v1    # "volume":F
    goto :goto_7

    .line 791
    :cond_15
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_10

    .line 792
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 794
    .end local v1    # "volume":F
    :catch_1f
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private startAudioAgain(Z)V
    .registers 11
    .param p1, "paused"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1820
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_7

    .line 1842
    :cond_6
    :goto_6
    return-void

    .line 1823
    :cond_7
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_3c

    move v1, v3

    .line 1824
    .local v1, "post":Z
    :goto_c
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    new-array v7, v3, [Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1825
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1826
    .local v0, "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1827
    .local v2, "progress":F
    invoke-virtual {p0, v4, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1828
    iput v2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1829
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1830
    if-eqz p1, :cond_6

    .line 1831
    if-eqz v1, :cond_3e

    .line 1832
    new-instance v3, Lorg/telegram/messenger/MediaController$9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v4, 0x64

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .end local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "post":Z
    .end local v2    # "progress":F
    :cond_3c
    move v1, v4

    .line 1823
    goto :goto_c

    .line 1839
    .restart local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "post":Z
    .restart local v2    # "progress":F
    :cond_3e
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_6
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .registers 10
    .param p1, "currentPlayingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 800
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v7

    .line 801
    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-eqz v0, :cond_f

    .line 803
    :try_start_7
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_26
    .catchall {:try_start_7 .. :try_end_f} :catchall_2b

    .line 809
    :cond_f
    :goto_f
    :try_start_f
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 810
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 851
    monitor-exit v7

    .line 852
    return-void

    .line 805
    :catch_26
    move-exception v6

    .line 806
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 851
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_2b
    move-exception v0

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private native startRecord(Ljava/lang/String;)I
.end method

.method private startVideoConvertFromQueue()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3464
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 3465
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v6

    .line 3466
    const/4 v7, 0x0

    :try_start_e
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3467
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_68

    .line 3468
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3469
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v6, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3470
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "path"

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3471
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_59

    .line 3472
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_34
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_59

    .line 3473
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3474
    .local v1, "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_6b

    .line 3475
    const-string v5, "gif"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3480
    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_59
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-eqz v5, :cond_64

    .line 3481
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3483
    :cond_64
    invoke-static {v3}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V

    .line 3486
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_67
    return v4

    .line 3467
    :catchall_68
    move-exception v4

    :try_start_69
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v4

    .line 3472
    .restart local v0    # "a":I
    .restart local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6e
    move v4, v5

    .line 3486
    goto :goto_67
.end method

.method private stopProgressTimer()V
    .registers 4

    .prologue
    .line 855
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v2

    .line 856
    :try_start_3
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v1, :cond_f

    .line 858
    :try_start_7
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 859
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_11
    .catchall {:try_start_7 .. :try_end_f} :catchall_16

    .line 864
    :cond_f
    :goto_f
    :try_start_f
    monitor-exit v2

    .line 865
    return-void

    .line 860
    :catch_11
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(I)V
    .registers 8
    .param p1, "send"    # I

    .prologue
    const/4 v5, 0x0

    .line 2809
    if-eqz p1, :cond_11

    .line 2810
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2811
    .local v0, "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 2812
    .local v2, "recordingAudioFileToSend":Ljava/io/File;
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$19;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/messenger/MediaController$19;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2844
    .end local v0    # "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v2    # "recordingAudioFileToSend":Ljava/io/File;
    :cond_11
    :try_start_11
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1d

    .line 2845
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 2846
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_22

    .line 2851
    :cond_1d
    :goto_1d
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2852
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 2853
    return-void

    .line 2848
    :catch_22
    move-exception v1

    .line 2849
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1277
    return-void
.end method

.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1280
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_a

    .line 1281
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    :goto_9
    return-void

    .line 1284
    :cond_a
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1286
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1287
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-nez v0, :cond_21

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    :cond_21
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    if-eqz p2, :cond_42

    .line 1293
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1294
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_3f

    .line 1295
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    :cond_3f
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_42
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1306
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_a

    .line 1307
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :goto_9
    return-void

    .line 1310
    :cond_a
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1312
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1313
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-nez v0, :cond_21

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    :cond_21
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    if-eqz p2, :cond_42

    .line 1319
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1320
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_3f

    .line 1321
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :cond_3f
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_42
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public canAutoplayGifs()Z
    .registers 2

    .prologue
    .line 3249
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    return v0
.end method

.method public canCustomTabs()Z
    .registers 2

    .prologue
    .line 3257
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    return v0
.end method

.method public canDirectShare()Z
    .registers 2

    .prologue
    .line 3261
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    return v0
.end method

.method public canDownloadMedia(I)Z
    .registers 10
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1014
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1015
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "fav_auto_download"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1016
    .local v0, "fav_autoDownload":Z
    if-eqz v0, :cond_1c

    .line 1017
    const-string v5, "selected_tab"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1018
    .local v2, "selectedTab":I
    if-ne v2, v7, :cond_1c

    .line 1022
    .end local v2    # "selectedTab":I
    :cond_1b
    :goto_1b
    return v3

    :cond_1c
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v5

    and-int/2addr v5, p1

    if-nez v5, :cond_1b

    move v3, v4

    goto :goto_1b
.end method

.method public canDownloadMedia(IZI)Z
    .registers 6
    .param p1, "type"    # I
    .param p2, "fav"    # Z
    .param p3, "mask"    # I

    .prologue
    .line 1025
    const/4 v0, 0x1

    .line 1026
    .local v0, "z":Z
    if-nez p2, :cond_e

    .line 1027
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    xor-int/2addr v1, p3

    and-int/2addr v1, p1

    if-nez v1, :cond_c

    .line 1028
    const/4 v0, 0x0

    :cond_c
    move v1, v0

    .line 1034
    :goto_d
    return v1

    .line 1031
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    xor-int/2addr v1, p3

    and-int/2addr v1, p1

    if-nez v1, :cond_1d

    iget v1, p0, Lorg/telegram/messenger/MediaController;->favMask:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1d

    .line 1032
    const/4 v1, 0x0

    goto :goto_d

    .line 1034
    :cond_1d
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public canRaiseToSpeak()Z
    .registers 2

    .prologue
    .line 3253
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    return v0
.end method

.method public canSaveToGallery()Z
    .registers 2

    .prologue
    .line 3245
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    return v0
.end method

.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3446
    if-nez p1, :cond_d

    .line 3447
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3448
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3449
    monitor-exit v1

    .line 3461
    :cond_9
    :goto_9
    return-void

    .line 3449
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0

    .line 3451
    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3452
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_29

    .line 3453
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3454
    const/4 v0, 0x1

    :try_start_22
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3455
    monitor-exit v1

    goto :goto_9

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    throw v0

    .line 3457
    :cond_29
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public checkAutodownloadSettings()V
    .registers 13

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 912
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    .line 913
    .local v1, "currentMask":I
    iget v5, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    if-ne v1, v5, :cond_10

    .line 1010
    :cond_f
    :goto_f
    return-void

    .line 916
    :cond_10
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 917
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_7d

    .line 918
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 919
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 928
    :cond_21
    :goto_21
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_a2

    .line 929
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 930
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 939
    :cond_30
    :goto_30
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_c8

    .line 940
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 941
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 951
    :cond_3f
    :goto_3f
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_ee

    .line 952
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 953
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 962
    :cond_4e
    :goto_4e
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_114

    .line 963
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 964
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 974
    :cond_5d
    :goto_5d
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_13a

    .line 975
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 976
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 987
    :cond_6e
    :goto_6e
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v4

    .line 988
    .local v4, "mask":I
    if-nez v4, :cond_160

    .line 989
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto :goto_f

    .line 922
    .end local v4    # "mask":I
    :cond_7d
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_7e
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_9c

    .line 923
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 924
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 922
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 926
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_9c
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_21

    .line 933
    .end local v0    # "a":I
    :cond_a2
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a3
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c1

    .line 934
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 935
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 937
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_c1
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_30

    .line 944
    .end local v0    # "a":I
    :cond_c8
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_c9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_e7

    .line 945
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 946
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 947
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 944
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    .line 949
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_e7
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3f

    .line 956
    .end local v0    # "a":I
    :cond_ee
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_ef
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_10d

    .line 957
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 958
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    .line 960
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_10d
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4e

    .line 967
    .end local v0    # "a":I
    :cond_114
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_115
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_133

    .line 968
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 969
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 970
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    .line 972
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_133
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5d

    .line 979
    .end local v0    # "a":I
    :cond_13a
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_13b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_159

    .line 980
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 981
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 982
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_13b

    .line 984
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_159
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6e

    .line 991
    .end local v0    # "a":I
    .restart local v4    # "mask":I
    :cond_160
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_16b

    .line 992
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 994
    :cond_16b
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_176

    .line 995
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 997
    :cond_176
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_181

    .line 998
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1000
    :cond_181
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_18c

    .line 1001
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1003
    :cond_18c
    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_197

    .line 1004
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1006
    :cond_197
    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_f

    .line 1007
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto/16 :goto_f
.end method

.method public checkSaveToGalleryFiles()V
    .registers 7

    .prologue
    .line 3218
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "Telegram"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3219
    .local v2, "telegramPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "Telegram Images"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3220
    .local v1, "imagePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3221
    new-instance v3, Ljava/io/File;

    const-string v4, "Telegram Video"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3222
    .local v3, "videoPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 3224
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-eqz v4, :cond_44

    .line 3225
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3226
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3228
    :cond_33
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3229
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3242
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :cond_43
    :goto_43
    return-void

    .line 3232
    .restart local v1    # "imagePath":Ljava/io/File;
    .restart local v2    # "telegramPath":Ljava/io/File;
    .restart local v3    # "videoPath":Ljava/io/File;
    :cond_44
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3233
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 3235
    :cond_54
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3236
    new-instance v4, Ljava/io/File;

    const-string v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_43

    .line 3239
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :catch_65
    move-exception v0

    .line 3240
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public cleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 868
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 869
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 870
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 871
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 873
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 874
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 875
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 877
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 878
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 879
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 880
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 881
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 882
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 883
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 884
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 885
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 886
    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .registers 4
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z

    .prologue
    .line 1929
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    .line 1930
    return-void
.end method

.method public cleanupPlayer(ZZZ)V
    .registers 15
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z
    .param p3, "byVoiceEnd"    # Z

    .prologue
    .line 1933
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_ed

    .line 1935
    :try_start_4
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_db

    .line 1940
    :goto_9
    :try_start_9
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_e1

    .line 1945
    :goto_e
    :try_start_e
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    .line 1946
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_e7

    .line 1966
    :cond_16
    :goto_16
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 1967
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 1968
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 1969
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 1970
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_c9

    .line 1971
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v6, :cond_37

    .line 1972
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1974
    :cond_37
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1975
    .local v3, "lastFile":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1976
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1977
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1978
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1979
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 1980
    if-eqz p1, :cond_b9

    .line 1981
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1982
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 1983
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_a8

    .line 1984
    if-eqz p3, :cond_116

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_116

    .line 1985
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1986
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 1988
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1989
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 1996
    :cond_a8
    :goto_a8
    const/4 v4, 0x0

    .line 1997
    .local v4, "next":Z
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_11d

    .line 1998
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 1999
    .local v5, "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2007
    .end local v4    # "next":Z
    .end local v5    # "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    :cond_b9
    :goto_b9
    if-eqz p2, :cond_c9

    .line 2008
    new-instance v2, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2009
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2012
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_c9
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v6, :cond_da

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v6, :cond_da

    .line 2013
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2014
    .local v0, "chat":Lorg/telegram/ui/ChatActivity;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2015
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2017
    .end local v0    # "chat":Lorg/telegram/ui/ChatActivity;
    :cond_da
    return-void

    .line 1936
    :catch_db
    move-exception v1

    .line 1937
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1941
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e1
    move-exception v1

    .line 1942
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1947
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_e7
    move-exception v1

    .line 1948
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1950
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ed
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v6, :cond_16

    .line 1951
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1953
    :try_start_f4
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    .line 1954
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->flush()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fe} :catch_10c
    .catchall {:try_start_f4 .. :try_end_fe} :catchall_109

    .line 1959
    :goto_fe
    :try_start_fe
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V

    .line 1960
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_106} :catch_111
    .catchall {:try_start_fe .. :try_end_106} :catchall_109

    .line 1964
    :goto_106
    :try_start_106
    monitor-exit v7

    goto/16 :goto_16

    :catchall_109
    move-exception v6

    monitor-exit v7
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_109

    throw v6

    .line 1955
    :catch_10c
    move-exception v1

    .line 1956
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_10d
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_fe

    .line 1961
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_111
    move-exception v1

    .line 1962
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_115
    .catchall {:try_start_10d .. :try_end_115} :catchall_109

    goto :goto_106

    .line 1992
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_116
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1993
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    goto :goto_a8

    .line 2001
    .restart local v4    # "next":Z
    :cond_11d
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-eqz v6, :cond_12c

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_12c

    .line 2002
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    .line 2004
    :cond_12c
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_b9
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 33
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1368
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_9c

    .line 1369
    :cond_10
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1370
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1371
    .local v18, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1372
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_7d

    .line 1373
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_31
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_70

    .line 1374
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1375
    .local v24, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_6d

    .line 1376
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onFailedDownload(Ljava/lang/String;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1380
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    .end local v4    # "a":I
    :cond_7d
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1383
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1384
    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    .line 1524
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_9b
    :goto_9b
    return-void

    .line 1385
    :cond_9c
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_ac

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a5

    .line 1386
    :cond_ac
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1387
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1388
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f3

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v17

    .line 1390
    .local v17, "file":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f3

    .line 1391
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 1395
    .end local v17    # "file":Ljava/lang/String;
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 1396
    .local v22, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v22, :cond_12e

    .line 1397
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_106
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_121

    .line 1398
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1399
    .local v21, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 1397
    add-int/lit8 v4, v4, 0x1

    goto :goto_106

    .line 1401
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    .end local v4    # "a":I
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1404
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_18d

    .line 1405
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_141
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_180

    .line 1406
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1407
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_17d

    .line 1408
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onSuccessDownload(Ljava/lang/String;)V

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    :cond_17d
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    .line 1412
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .end local v4    # "a":I
    :cond_18d
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1415
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1416
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    goto/16 :goto_9b

    .line 1417
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v22    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1a5
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_20a

    .line 1418
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1419
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1420
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1421
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_1fd

    .line 1422
    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    .line 1423
    .local v23, "progress":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1d7
    :goto_1d7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1fd

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1424
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_1d7

    .line 1425
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressDownload(Ljava/lang/String;F)V

    goto :goto_1d7

    .line 1429
    .end local v23    # "progress":Ljava/lang/Float;
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_1fd
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1430
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    goto/16 :goto_9b

    .line 1431
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_20a
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_32f

    .line 1432
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1433
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1434
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1435
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_26e

    .line 1436
    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    .line 1437
    .restart local v23    # "progress":Ljava/lang/Float;
    const/16 v25, 0x2

    aget-object v16, p2, v25

    check-cast v16, Ljava/lang/Boolean;

    .line 1438
    .local v16, "enc":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_242
    :goto_242
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_26e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1439
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_242

    .line 1440
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressUpload(Ljava/lang/String;FZ)V

    goto :goto_242

    .line 1444
    .end local v16    # "enc":Ljava/lang/Boolean;
    .end local v23    # "progress":Ljava/lang/Float;
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_26e
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1445
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1447
    :try_start_279
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1448
    .local v10, "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v10, :cond_9b

    .line 1449
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_288
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_9b

    .line 1450
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 1451
    .local v9, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v25, v0

    if-nez v25, :cond_2f6

    .line 1452
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 1453
    .local v12, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 1454
    .local v19, "lastTime":Ljava/lang/Long;
    if-eqz v19, :cond_2c6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0xfa0

    add-long v26, v26, v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-gez v25, :cond_2f6

    .line 1455
    :cond_2c6
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v25

    if-eqz v25, :cond_2f9

    .line 1456
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x5

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 1462
    :cond_2e1
    :goto_2e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    .end local v12    # "dialog_id":J
    .end local v19    # "lastTime":Ljava/lang/Long;
    :cond_2f6
    add-int/lit8 v4, v4, 0x1

    goto :goto_288

    .line 1457
    .restart local v12    # "dialog_id":J
    .restart local v19    # "lastTime":Ljava/lang/Long;
    :cond_2f9
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    if-eqz v25, :cond_317

    .line 1458
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_310} :catch_311

    goto :goto_2e1

    .line 1467
    .end local v4    # "a":I
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v19    # "lastTime":Ljava/lang/Long;
    :catch_311
    move-exception v11

    .line 1468
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9b

    .line 1459
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "a":I
    .restart local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .restart local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v12    # "dialog_id":J
    .restart local v19    # "lastTime":Ljava/lang/Long;
    :cond_317
    :try_start_317
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2e1

    .line 1460
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_32e} :catch_311

    goto :goto_2e1

    .line 1470
    .end local v4    # "a":I
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v19    # "lastTime":Ljava/lang/Long;
    :cond_32f
    sget v25, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_3f5

    .line 1471
    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1472
    .local v8, "channelId":I
    const/16 v25, 0x0

    aget-object v20, p2, v25

    check-cast v20, Ljava/util/ArrayList;

    .line 1473
    .local v20, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_390

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_390

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_390

    .line 1476
    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1480
    :cond_390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_9b

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1482
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_9b

    .line 1483
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_3c9
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_9b

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1485
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_3f2

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1483
    :cond_3f2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c9

    .line 1491
    .end local v4    # "a":I
    .end local v8    # "channelId":I
    .end local v20    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3f5
    sget v25, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_42c

    .line 1492
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1493
    .local v14, "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_9b

    .line 1494
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_9b

    .line 1496
    .end local v14    # "did":J
    :cond_42c
    sget v25, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_49e

    .line 1497
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1498
    .restart local v14    # "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v25

    if-eqz v25, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_9b

    .line 1499
    const/16 v25, 0x1

    aget-object v7, p2, v25

    check-cast v7, Ljava/util/ArrayList;

    .line 1500
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_48a

    .line 1502
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 1503
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_9b

    .line 1505
    :cond_48a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    move/from16 v25, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_9b

    .line 1508
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "did":J
    :cond_49e
    sget v25, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_9b

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_9b

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1511
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1512
    .restart local v14    # "did":J
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v14, v26

    if-nez v25, :cond_9b

    .line 1513
    const/16 v25, 0x1

    aget-object v5, p2, v25

    check-cast v5, Ljava/util/ArrayList;

    .line 1514
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_4e1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_9b

    .line 1515
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1516
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v25

    if-eqz v25, :cond_52d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    move/from16 v25, v0

    if-eqz v25, :cond_509

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v25

    if-eqz v25, :cond_52d

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v25

    if-nez v25, :cond_52d

    .line 1517
    :cond_509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :cond_52d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e1
.end method

.method public generateObserverTag()I
    .registers 3

    .prologue
    .line 1272
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    return v0
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .registers 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2770
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2771
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2806
    :goto_31
    return-void

    .line 2774
    :cond_32
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$18;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/MediaController$18;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_31
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .registers 2

    .prologue
    .line 2545
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method protected getAutodownloadMask()I
    .registers 3

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "mask":I
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_13

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_13

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    .line 891
    :cond_13
    or-int/lit8 v0, v0, 0x1

    .line 893
    :cond_15
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_27

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_27

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_29

    .line 894
    :cond_27
    or-int/lit8 v0, v0, 0x2

    .line 896
    :cond_29
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_3b

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_3b

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3d

    .line 897
    :cond_3b
    or-int/lit8 v0, v0, 0x4

    .line 899
    :cond_3d
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4f

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4f

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_51

    .line 900
    :cond_4f
    or-int/lit8 v0, v0, 0x8

    .line 902
    :cond_51
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_63

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_63

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_65

    .line 903
    :cond_63
    or-int/lit8 v0, v0, 0x10

    .line 905
    :cond_65
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_77

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_77

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_79

    .line 906
    :cond_77
    or-int/lit8 v0, v0, 0x20

    .line 908
    :cond_79
    return v0
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 2073
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .registers 2

    .prologue
    .line 2077
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 2553
    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public isAudioPaused()Z
    .registers 2

    .prologue
    .line 2637
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDownloadingCurrentMessage()Z
    .registers 2

    .prologue
    .line 2641
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z
    .registers 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2633
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_24

    :cond_8
    if-eqz p1, :cond_24

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-nez v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method protected isRecordingAudio()Z
    .registers 2

    .prologue
    .line 1642
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isShuffleMusic()Z
    .registers 2

    .prologue
    .line 2549
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    return v0
.end method

.method protected newDownloadObjectsAvailable(I)V
    .registers 5
    .param p1, "downloadMask"    # I

    .prologue
    .line 1096
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    .line 1097
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1c

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1098
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1100
    :cond_1c
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_34

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_34

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1101
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1103
    :cond_34
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4c

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1104
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1106
    :cond_4c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_65

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_65

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 1107
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1109
    :cond_65
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_7e

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1110
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1112
    :cond_7e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_97

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_97

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1113
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1115
    :cond_97
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1847
    return-void
.end method

.method public onAudioFocusChange(I)V
    .registers 5
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 755
    const/4 v0, -0x1

    if-ne p1, v0, :cond_24

    .line 756
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 757
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 759
    :cond_1c
    iput v1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 760
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 778
    :cond_20
    :goto_20
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 779
    return-void

    .line 761
    :cond_24
    if-ne p1, v2, :cond_47

    .line 762
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 763
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_20

    .line 764
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 765
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 766
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_20

    .line 769
    :cond_47
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4d

    .line 770
    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_20

    .line 771
    :cond_4d
    const/4 v0, -0x2

    if-ne p1, v0, :cond_20

    .line 772
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 773
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v0

    if-nez v0, :cond_20

    .line 774
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 775
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    goto :goto_20
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1651
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v9, :cond_7

    .line 1808
    :cond_6
    :goto_6
    return-void

    .line 1654
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1656
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_23f

    .line 1657
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "proximity changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v10, -0x3d380000    # -100.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_229

    .line 1659
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 1663
    :cond_49
    :goto_49
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_60

    .line 1664
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1690
    :cond_60
    :goto_60
    const/high16 v7, 0x41700000    # 15.0f

    .line 1691
    .local v7, "minDist":F
    const/4 v6, 0x6

    .line 1692
    .local v6, "minCount":I
    const/16 v5, 0xa

    .line 1693
    .local v5, "countLessMax":I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eq v9, v10, :cond_83

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v9, v10, :cond_83

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_12f

    .line 1694
    :cond_83
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    mul-float/2addr v10, v11

    add-float v8, v9, v10

    .line 1695
    .local v8, "val":F
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_f7

    .line 1696
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_43b

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_43b

    .line 1697
    const/high16 v9, 0x41700000    # 15.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_405

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-nez v9, :cond_405

    .line 1698
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ge v9, v10, :cond_f7

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v9, :cond_f7

    .line 1699
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1700
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_f7

    .line 1701
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1737
    :cond_f7
    :goto_f7
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1738
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/high16 v10, 0x40200000    # 2.5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4b8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4b8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3fc00000    # 1.5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4b8

    const/4 v9, 0x1

    :goto_12b
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1741
    .end local v8    # "val":F
    :cond_12f
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_505

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v9, :cond_505

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v9, :cond_505

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    if-nez v9, :cond_505

    .line 1742
    const-string v9, "sensor values reached"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v9, :cond_4bb

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v9, :cond_4bb

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v9, :cond_4bb

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v9

    if-nez v9, :cond_4bb

    sget-boolean v9, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v9, :cond_4bb

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v9, :cond_4bb

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v9, :cond_4bb

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_4bb

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v9, :cond_4bb

    .line 1744
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v9, :cond_1df

    .line 1745
    const-string v9, "start record"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1746
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1747
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v9

    if-nez v9, :cond_1bd

    .line 1748
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1749
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1750
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v9}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1752
    :cond_1bd
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1753
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_1df

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_1df

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_1df

    .line 1754
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1768
    :cond_1df
    :goto_1df
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1769
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1770
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1802
    :cond_1ee
    :goto_1ee
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v9, v10, v12

    if-lez v9, :cond_6

    .line 1803
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1804
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1805
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1806
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_6

    .line 1660
    .end local v5    # "countLessMax":I
    .end local v6    # "minCount":I
    .end local v7    # "minDist":F
    :cond_229
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_49

    .line 1661
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    goto/16 :goto_49

    .line 1666
    :cond_23f
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_384

    .line 1668
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_367

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    .line 1669
    .local v2, "alpha":D
    :goto_258
    const v4, 0x3f4ccccd

    .line 1670
    .local v4, "alphaFast":F
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1671
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 1672
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 1673
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    float-to-double v12, v11

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v11, v11, v16

    float-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 1674
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    const v11, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1675
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    const v11, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1676
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    const v11, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccc

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1678
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 1679
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    .line 1680
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    sub-float/2addr v11, v12

    aput v11, v9, v10

    goto/16 :goto_60

    .line 1668
    .end local v2    # "alpha":D
    .end local v4    # "alphaFast":F
    :cond_367
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    div-double v14, v14, v16

    add-double/2addr v12, v14

    div-double v2, v10, v12

    goto/16 :goto_258

    .line 1681
    :cond_384
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_3ba

    .line 1682
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    .line 1683
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 1684
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v10, 0x2

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    aput v11, v9, v10

    goto/16 :goto_60

    .line 1685
    :cond_3ba
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v9, v10, :cond_60

    .line 1686
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1687
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1688
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    aput v13, v11, v12

    aput v13, v9, v10

    goto/16 :goto_60

    .line 1705
    .restart local v5    # "countLessMax":I
    .restart local v6    # "minCount":I
    .restart local v7    # "minDist":F
    .restart local v8    # "val":F
    :cond_405
    const/high16 v9, 0x41700000    # 15.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_415

    .line 1706
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1708
    :cond_415
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_42a

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_42a

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v9, :cond_f7

    .line 1709
    :cond_42a
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1710
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1711
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_f7

    .line 1714
    :cond_43b
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_f7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_f7

    .line 1715
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_482

    const/high16 v9, -0x3e900000    # -15.0f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_482

    .line 1716
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ge v9, v10, :cond_f7

    .line 1717
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1718
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_f7

    .line 1719
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1720
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_f7

    .line 1726
    :cond_482
    const/high16 v9, -0x3e900000    # -15.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_492

    .line 1727
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1729
    :cond_492
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v10, 0xa

    if-eq v9, v10, :cond_4a7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_4a7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v9, :cond_f7

    .line 1730
    :cond_4a7
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1731
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1732
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_f7

    .line 1738
    :cond_4b8
    const/4 v9, 0x0

    goto/16 :goto_12b

    .line 1757
    .end local v8    # "val":F
    :cond_4bb
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_1df

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_1df

    .line 1758
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v9, :cond_1df

    .line 1759
    const-string v9, "start listen"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_4f3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_4f3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_4f3

    .line 1761
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1763
    :cond_4f3
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1764
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1765
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_1df

    .line 1771
    :cond_505
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v9, :cond_555

    .line 1772
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v9, :cond_1ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-eqz v9, :cond_1ee

    .line 1773
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v9, :cond_1ee

    .line 1774
    const-string v9, "start listen by proximity only"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1775
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_543

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_543

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_543

    .line 1776
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1778
    :cond_543
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1779
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1780
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_1ee

    .line 1783
    :cond_555
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v9, :cond_1ee

    .line 1784
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v9, :cond_595

    .line 1785
    const-string v9, "stop record"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1786
    const/4 v9, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1787
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1788
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1789
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_1ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_1ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_1ee

    .line 1790
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1ee

    .line 1792
    :cond_595
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v9, :cond_1ee

    .line 1793
    const-string v9, "stop listen"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1794
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1795
    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1796
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1797
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v9, :cond_1ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_1ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_1ee

    .line 1798
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1ee
.end method

.method public pauseAudio(Lorg/telegram/messenger/MessageObject;)Z
    .registers 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2589
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_20

    :cond_a
    if-eqz p1, :cond_20

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 2606
    :cond_20
    :goto_20
    return v1

    .line 2592
    :cond_21
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2594
    :try_start_24
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4b

    .line 2595
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 2599
    :cond_2d
    :goto_2d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2600
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2606
    goto :goto_20

    .line 2596
    :cond_4b
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_2d

    .line 2597
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_54} :catch_55

    goto :goto_2d

    .line 2601
    :catch_55
    move-exception v0

    .line 2602
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2603
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    goto :goto_20
.end method

.method public playAudio(Lorg/telegram/messenger/MessageObject;)Z
    .registers 21
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2300
    if-nez p1, :cond_4

    .line 2301
    const/4 v2, 0x0

    .line 2500
    :goto_3
    return v2

    .line 2303
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3e

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3e

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3e

    .line 2304
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v2, :cond_2d

    .line 2305
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2307
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_3c

    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2310
    :cond_3c
    const/4 v2, 0x1

    goto :goto_3

    .line 2312
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_5d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_5d

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_5d

    .line 2313
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 2315
    :cond_5d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    if-nez v2, :cond_113

    const/4 v14, 0x1

    .line 2316
    .local v14, "notify":Z
    :goto_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6b

    .line 2317
    const/4 v14, 0x0

    .line 2319
    :cond_6b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2320
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2321
    const/4 v12, 0x0

    .line 2322
    .local v12, "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_9d

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9d

    .line 2323
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2324
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 2325
    const/4 v12, 0x0

    .line 2328
    :cond_9d
    if-eqz v12, :cond_116

    move-object v9, v12

    .line 2329
    .local v9, "cacheFile":Ljava/io/File;
    :goto_a0
    if-eqz v9, :cond_12e

    if-eq v9, v12, :cond_12e

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12e

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 2330
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2331
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2332
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2333
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2334
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2335
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2336
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_11f

    .line 2338
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2339
    .local v13, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2344
    :goto_f5
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2345
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 2315
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "notify":Z
    :cond_113
    const/4 v14, 0x0

    goto/16 :goto_64

    .line 2328
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "notify":Z
    :cond_116
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    goto :goto_a0

    .line 2341
    .restart local v9    # "cacheFile":Ljava/io/File;
    :cond_11f
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2342
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_f5

    .line 2347
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_12e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2349
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 2350
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded()V

    .line 2353
    :cond_13c
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->isOpusFile(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28b

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2358
    const/4 v2, 0x3

    :try_start_15f
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 2359
    new-instance v17, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2360
    .local v17, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Boolean;

    .line 2361
    .local v15, "result":[Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v15, v9, v1}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2368
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2370
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_187} :catch_262
    .catchall {:try_start_15f .. :try_end_187} :catchall_18e

    move-result v2

    if-nez v2, :cond_191

    .line 2371
    const/4 v2, 0x0

    :try_start_18b
    monitor-exit v18

    goto/16 :goto_3

    .line 2400
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_18e
    move-exception v2

    monitor-exit v18
    :try_end_190
    .catchall {:try_start_18b .. :try_end_190} :catchall_18e

    throw v2

    .line 2373
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_191
    :try_start_191
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->getTotalPcmDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    .line 2375
    new-instance v2, Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_25f

    const/4 v3, 0x0

    :goto_1a2
    const v4, 0xbb80

    const/4 v5, 0x4

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    new-instance v3, Lorg/telegram/messenger/MediaController$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_1d3} :catch_262
    .catchall {:try_start_191 .. :try_end_1d3} :catchall_18e

    .line 2400
    :try_start_1d3
    monitor-exit v18
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_18e

    .line 2442
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :goto_1d4
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2443
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 2445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2447
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2448
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2449
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_1ff

    .line 2450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2452
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2453
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidStarted:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_37b

    .line 2457
    :try_start_21d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_244

    .line 2458
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 2459
    .local v16, "seekTo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_244} :catch_344

    .line 2492
    .end local v16    # "seekTo":I
    :cond_244
    :goto_244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_3a4

    .line 2493
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2494
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2500
    :goto_25c
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 2375
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_25f
    const/4 v3, 0x3

    goto/16 :goto_1a2

    .line 2389
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_262
    move-exception v10

    .line 2390
    .local v10, "e":Ljava/lang/Exception;
    :try_start_263
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_287

    .line 2392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2393
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2396
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2398
    :cond_287
    const/4 v2, 0x0

    monitor-exit v18
    :try_end_289
    .catchall {:try_start_263 .. :try_end_289} :catchall_18e

    goto/16 :goto_3

    .line 2403
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_28b
    :try_start_28b
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2404
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_32f

    const/4 v2, 0x0

    :goto_29f
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/MediaController$15;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2418
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_332

    .line 2419
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2e4
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_2e4} :catch_2e6

    goto/16 :goto_1d4

    .line 2429
    :catch_2e6
    move-exception v10

    .line 2430
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2431
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_342

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_32c

    .line 2433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2434
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2435
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2436
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2437
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2439
    :cond_32c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2404
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_32f
    const/4 v2, 0x3

    goto/16 :goto_29f

    .line 2424
    :cond_332
    :try_start_332
    invoke-static {v9}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_332 .. :try_end_33a} :catch_33c

    goto/16 :goto_1d4

    .line 2425
    :catch_33c
    move-exception v10

    .line 2426
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_33d
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_340
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_340} :catch_2e6

    goto/16 :goto_1d4

    .line 2431
    :cond_342
    const/4 v2, 0x0

    goto :goto_302

    .line 2461
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_344
    move-exception v11

    .line 2462
    .local v11, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2464
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2465
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_244

    .line 2467
    .end local v11    # "e2":Ljava/lang/Exception;
    :cond_37b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_244

    .line 2468
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_394

    .line 2469
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2471
    :cond_394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$16;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_244

    .line 2496
    :cond_3a4
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2497
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_25c
.end method

.method public playMessageAtIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 2140
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_e

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    .line 2146
    :cond_e
    :goto_e
    return-void

    .line 2143
    :cond_f
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2145
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_e
.end method

.method public playNextMessage()V
    .registers 2

    .prologue
    .line 2136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    .line 2137
    return-void
.end method

.method public playPreviousMessage()V
    .registers 5

    .prologue
    .line 2214
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2215
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2233
    :cond_c
    :goto_c
    return-void

    .line 2214
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_6

    .line 2218
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_10
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2219
    .local v1, "currentSong":Lorg/telegram/messenger/MessageObject;
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_27

    .line 2220
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_c

    .line 2224
    :cond_27
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2225
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v2, :cond_39

    .line 2226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2228
    :cond_39
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_c

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 2231
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2232
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_c
.end method

.method protected processDownloadObjects(ILjava/util/ArrayList;)V
    .registers 13
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v9, 0x0

    .line 1049
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1093
    :cond_7
    return-void

    .line 1052
    :cond_8
    const/4 v5, 0x0

    .line 1053
    .local v5, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v6, 0x1

    if-ne p1, v6, :cond_34

    .line 1054
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 1066
    :cond_e
    :goto_e
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1067
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1069
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_55

    .line 1070
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1071
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 1075
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .local v4, "path":Ljava/lang/String;
    :goto_29
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1066
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1055
    .end local v0    # "a":I
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .end local v4    # "path":Ljava/lang/String;
    :cond_34
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3a

    .line 1056
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    goto :goto_e

    .line 1057
    :cond_3a
    const/4 v6, 0x4

    if-ne p1, v6, :cond_40

    .line 1058
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    goto :goto_e

    .line 1059
    :cond_40
    const/16 v6, 0x8

    if-ne p1, v6, :cond_47

    .line 1060
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    goto :goto_e

    .line 1061
    :cond_47
    const/16 v6, 0x10

    if-ne p1, v6, :cond_4e

    .line 1062
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    goto :goto_e

    .line 1063
    :cond_4e
    const/16 v6, 0x20

    if-ne p1, v6, :cond_e

    .line 1064
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    goto :goto_e

    .line 1073
    .restart local v0    # "a":I
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_55
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "path":Ljava/lang/String;
    goto :goto_29

    .line 1079
    :cond_5c
    const/4 v1, 0x1

    .line 1080
    .local v1, "added":Z
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v6, :cond_7a

    .line 1081
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;Z)V

    .line 1088
    :goto_6f
    if-eqz v1, :cond_31

    .line 1089
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 1082
    :cond_7a
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_8c

    .line 1083
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1084
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_6f

    .line 1086
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_8c
    const/4 v1, 0x0

    goto :goto_6f
.end method

.method public processMediaObserver(Landroid/net/Uri;)V
    .registers 24
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1187
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v19

    .line 1189
    .local v19, "size":Landroid/graphics/Point;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date_added DESC LIMIT 1"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1190
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v18, "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v10, :cond_e6

    .line 1192
    :cond_1f
    :goto_1f
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1193
    const-string v21, ""

    .line 1194
    .local v21, "val":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1195
    .local v11, "data":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1196
    .local v14, "display_name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1197
    .local v8, "album_name":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1198
    .local v12, "date":J
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1199
    .local v20, "title":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1200
    .local v17, "photoW":I
    const/16 v16, 0x0

    .line 1201
    .local v16, "photoH":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_54

    .line 1202
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1203
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1205
    :cond_54
    if-eqz v11, :cond_62

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    :cond_62
    if-eqz v14, :cond_70

    .line 1206
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    :cond_70
    if-eqz v8, :cond_7e

    .line 1207
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    :cond_7e
    if-eqz v20, :cond_1f

    .line 1208
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_de

    move-result v2

    if-eqz v2, :cond_1f

    .line 1210
    :cond_8c
    if-eqz v17, :cond_90

    if-nez v16, :cond_a3

    .line 1211
    :cond_90
    :try_start_90
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1212
    .local v9, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1213
    invoke-static {v11, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1214
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 1215
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 1217
    .end local v9    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_a3
    if-lez v17, :cond_c7

    if-lez v16, :cond_c7

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_b7

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_c7

    :cond_b7
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_1f

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_1f

    .line 1218
    :cond_c7
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_d0} :catch_d2

    goto/16 :goto_1f

    .line 1220
    :catch_d2
    move-exception v15

    .line 1221
    .local v15, "e":Ljava/lang/Exception;
    :try_start_d3
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_dc} :catch_de

    goto/16 :goto_1f

    .line 1236
    .end local v8    # "album_name":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v14    # "display_name":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "photoH":I
    .end local v17    # "photoW":I
    .end local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "size":Landroid/graphics/Point;
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/String;
    :catch_de
    move-exception v15

    .line 1237
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1239
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e2
    :goto_e2
    return-void

    .line 1225
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "size":Landroid/graphics/Point;
    :cond_e3
    :try_start_e3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1227
    :cond_e6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e2

    .line 1228
    new-instance v2, Lorg/telegram/messenger/MediaController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f8} :catch_de

    goto :goto_e2
.end method

.method public recordTimeCount()J
    .registers 3

    .prologue
    .line 4339
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method public removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .registers 8
    .param p1, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1331
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v4, :cond_a

    .line 1332
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_9
    :goto_9
    return-void

    .line 1335
    :cond_a
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1336
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1337
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1338
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v1, :cond_52

    .line 1339
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_47

    .line 1340
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1341
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_44

    .line 1342
    :cond_3f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1343
    add-int/lit8 v0, v0, -0x1

    .line 1339
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1346
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_47
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1347
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    .end local v0    # "a":I
    :cond_52
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .registers 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2610
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_20

    :cond_a
    if-eqz p1, :cond_20

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_21

    .line 2629
    :cond_20
    :goto_20
    return v1

    .line 2615
    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2616
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4e

    .line 2617
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 2622
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2623
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2624
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2629
    goto :goto_20

    .line 2618
    :cond_4e
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_2d

    .line 2619
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 2620
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5a} :catch_5b

    goto :goto_2d

    .line 2625
    :catch_5b
    move-exception v0

    .line 2626
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .registers 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 3430
    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "isEmpty"    # Z

    .prologue
    const/4 v0, 0x1

    .line 3433
    if-eqz p2, :cond_d

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3434
    const/4 v0, 0x0

    .line 3442
    :cond_c
    :goto_c
    return v0

    .line 3435
    :cond_d
    if-eqz p2, :cond_1b

    .line 3436
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3438
    :cond_1b
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3439
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 3440
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    goto :goto_c
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .registers 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "progress"    # F

    .prologue
    const/4 v2, 0x0

    .line 2054
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1f

    :cond_9
    if-eqz p1, :cond_1f

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_20

    .line 2069
    :cond_1f
    :goto_1f
    return v2

    .line 2058
    :cond_20
    :try_start_20
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_36

    .line 2059
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .line 2060
    .local v1, "seekTo":I
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2061
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:I

    .line 2069
    .end local v1    # "seekTo":I
    :cond_34
    :goto_34
    const/4 v2, 0x1

    goto :goto_1f

    .line 2062
    :cond_36
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_34

    .line 2063
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->seekOpusPlayer(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3d} :catch_3e

    goto :goto_34

    .line 2065
    :catch_3e
    move-exception v0

    .line 2066
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public setAllowStartRecord(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 1854
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    .line 1855
    return-void
.end method

.method public setInputFieldHasText(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 1850
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    .line 1851
    return-void
.end method

.method public setLastEncryptedChatParams(JJLorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "enterTime"    # J
    .param p3, "leaveTime"    # J
    .param p5, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p6, "visibleMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatEnterTime:J

    .line 1266
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatLeaveTime:J

    .line 1267
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1268
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChatVisibleMessages:Ljava/util/ArrayList;

    .line 1269
    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z
    .registers 4
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2100
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z
    .registers 12
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "loadMusic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2104
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, p2, :cond_b

    .line 2105
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 2132
    :goto_a
    return v2

    .line 2107
    :cond_b
    if-nez p3, :cond_3b

    move v2, v3

    :goto_e
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    .line 2108
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    :goto_18
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2109
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "a":I
    :goto_25
    if-ltz v0, :cond_3f

    .line 2111
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2112
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2113
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2110
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3b
    move v2, v4

    .line 2107
    goto :goto_e

    :cond_3d
    move v3, v4

    .line 2108
    goto :goto_18

    .line 2116
    .restart local v0    # "a":I
    :cond_3f
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2117
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_63

    .line 2118
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2119
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2120
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2121
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    :cond_63
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 2124
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_72

    .line 2125
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2126
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2128
    :cond_72
    if-eqz p3, :cond_87

    .line 2129
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V

    .line 2132
    :cond_87
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    goto/16 :goto_a
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .registers 7
    .param p2, "unread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2263
    .local p1, "playlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2264
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    .line 2265
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    .line 2266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 2267
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_10
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 2268
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2269
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2272
    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_30
    return-void
.end method

.method public startMediaObserver()V
    .registers 6

    .prologue
    .line 1159
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1160
    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 1162
    :try_start_d
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_24

    .line 1163
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_3c

    .line 1169
    :cond_24
    :goto_24
    :try_start_24
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_3b

    .line 1170
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_3b} :catch_41

    .line 1175
    :cond_3b
    :goto_3b
    return-void

    .line 1165
    :catch_3c
    move-exception v0

    .line 1166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 1172
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_41
    move-exception v0

    .line 1173
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .registers 9
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1858
    if-eqz p1, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_16

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_17

    .line 1891
    :cond_16
    :goto_16
    return-void

    .line 1861
    :cond_17
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1862
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1865
    :cond_29
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_16

    .line 1866
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1867
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1868
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1870
    iput v4, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1871
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1872
    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1873
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1874
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1889
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    goto :goto_16
.end method

.method public startRecording(JLorg/telegram/messenger/MessageObject;)V
    .registers 13
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const-wide/16 v4, 0x32

    .line 2645
    const/4 v1, 0x0

    .line 2646
    .local v1, "paused":Z
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2647
    const/4 v1, 0x1

    .line 2648
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2652
    :cond_1b
    :try_start_1b
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 2653
    .local v2, "v":Landroid/os/Vibrator;
    const-wide/16 v6, 0x32

    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_3b

    .line 2659
    .end local v2    # "v":Landroid/os/Vibrator;
    :goto_2a
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MediaController$17;

    invoke-direct {v6, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$17;-><init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_37

    const-wide/16 v4, 0x1f4

    :cond_37
    invoke-virtual {v3, v6, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 2766
    return-void

    .line 2655
    :catch_3b
    move-exception v0

    .line 2656
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method public startRecordingIfFromSpeaker()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1811
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-nez v0, :cond_e

    .line 1817
    :cond_d
    :goto_d
    return-void

    .line 1814
    :cond_e
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1815
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1816
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_d
.end method

.method public stopAudio()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2504
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_e

    :cond_a
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_f

    .line 2542
    :cond_e
    :goto_e
    return-void

    .line 2508
    :cond_f
    :try_start_f
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_11} :catch_46

    if-eqz v2, :cond_4b

    .line 2510
    :try_start_13
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_41

    .line 2514
    :goto_18
    :try_start_18
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_46

    .line 2523
    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5a

    .line 2524
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2525
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_6e

    .line 2535
    :cond_29
    :goto_29
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2536
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2537
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2538
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2540
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2541
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_e

    .line 2511
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_41
    move-exception v0

    .line 2512
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_18

    .line 2519
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_46
    move-exception v0

    .line 2520
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 2515
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1d

    .line 2516
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2517
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_46

    goto :goto_1d

    .line 2526
    :cond_5a
    :try_start_5a
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_29

    .line 2527
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_6e

    .line 2528
    :try_start_61
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2529
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2530
    monitor-exit v3

    goto :goto_29

    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v2
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6e} :catch_6e

    .line 2532
    :catch_6e
    move-exception v0

    .line 2533
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public stopMediaObserver()V
    .registers 5

    .prologue
    .line 1178
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_c

    .line 1179
    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 1181
    :cond_c
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    .line 1182
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1183
    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .registers 4
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v1, 0x0

    .line 1894
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-eqz v0, :cond_8

    .line 1895
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1926
    :cond_7
    :goto_7
    return-void

    .line 1898
    :cond_8
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_7

    :cond_1c
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-ne v0, p1, :cond_7

    .line 1901
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1902
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1903
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    .line 1904
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1905
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1906
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1907
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1908
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1923
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1924
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7
.end method

.method public stopRecording(I)V
    .registers 4
    .param p1, "send"    # I

    .prologue
    .line 2856
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 2857
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2858
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 2860
    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$20;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2892
    return-void
.end method

.method public toggleAutoplayGifs()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3185
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 3186
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3187
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3188
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "autoplay_gif"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3190
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1f
    move v2, v3

    .line 3185
    goto :goto_6
.end method

.method public toggleCustomTabs()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3201
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 3202
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3203
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "custom_tabs"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3206
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1f
    move v2, v3

    .line 3201
    goto :goto_6
.end method

.method public toggleDirectShare()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3209
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 3210
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3211
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "direct_share"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3214
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1f
    move v2, v3

    .line 3209
    goto :goto_6
.end method

.method public toggleRepeatMode()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2578
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2579
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_e

    .line 2580
    iput v4, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2582
    :cond_e
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2583
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2584
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "repeatMode"

    iget v3, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2585
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2586
    return-void
.end method

.method public toggleSaveToGallery()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3176
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 3177
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3178
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "save_gallery"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3181
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V

    .line 3182
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_22
    move v2, v3

    .line 3176
    goto :goto_6
.end method

.method public toggleShuffleMusic()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2557
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-nez v2, :cond_29

    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 2558
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2559
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2560
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "shuffleMusic"

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2562
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_2b

    .line 2563
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2564
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2575
    :cond_28
    :goto_28
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_29
    move v2, v4

    .line 2557
    goto :goto_7

    .line 2566
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2b
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_28

    .line 2567
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2568
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    .line 2569
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2570
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2571
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto :goto_28
.end method

.method public toogleRaiseToSpeak()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3193
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 3194
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3195
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3196
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "raise_to_speak"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3198
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1f
    move v2, v3

    .line 3193
    goto :goto_6
.end method
