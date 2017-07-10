.class public Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
.implements Lorg/telegram/messenger/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
        "<TT;>;",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"


# instance fields
.field final callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playbackLooper:Landroid/os/Looper;

.field private postRequestHandler:Landroid/os/Handler;

.field postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)V
    .registers 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;, "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 175
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    .line 176
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

    .line 177
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 178
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 179
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    .line 180
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;)V

    invoke-interface {p2, v0}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setOnEventListener(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    .line 182
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .registers 12
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 157
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)V

    return-object v0
.end method

.method public static newPlayReadyInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .registers 6
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p1, "customData"    # Ljava/lang/String;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PRCustomData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_10
    sget-object v1, Lorg/telegram/messenger/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v1, p0, v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    move-result-object v1

    return-object v1

    .line 136
    .end local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_10
.end method

.method public static newWidevineInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .registers 5
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 420
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 421
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v0, :cond_14

    .line 422
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    :cond_14
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    .line 432
    :cond_1c
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x4

    .line 385
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_b

    .line 409
    .end local p1    # "response":Ljava/lang/Object;
    :cond_a
    :goto_a
    return-void

    .line 390
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_15

    .line 391
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_a

    .line 396
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, v2, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 397
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    .line 398
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v1, :cond_a

    .line 399
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_a

    .line 406
    :catch_36
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 412
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_8

    .line 413
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    .line 417
    :goto_7
    return-void

    .line 415
    :cond_8
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 350
    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 351
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_13

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_13

    .line 371
    .end local p1    # "response":Ljava/lang/Object;
    :goto_12
    return-void

    .line 356
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_13
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1d

    .line 357
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_12

    .line 362
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V

    .line 363
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-ne v1, v3, :cond_34

    .line 364
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openInternal(Z)V
    :try_end_2e
    .catch Landroid/media/DeniedByServerException; {:try_start_1d .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 368
    :catch_2f
    move-exception v0

    .line 369
    .local v0, "e":Landroid/media/DeniedByServerException;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_12

    .line 366
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :cond_34
    :try_start_34
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_37
    .catch Landroid/media/DeniedByServerException; {:try_start_34 .. :try_end_37} :catch_2f

    goto :goto_12
.end method

.method private openInternal(Z)V
    .registers 6
    .param p1, "allowProvisioning"    # Z

    .prologue
    .line 325
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    .line 326
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    .line 327
    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    .line 328
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_1a
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_26

    .line 338
    :goto_1a
    return-void

    .line 329
    :catch_1b
    move-exception v0

    .line 330
    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_22

    .line 331
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_1a

    .line 333
    :cond_22
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_1a

    .line 335
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_26
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method private postKeyRequest()V
    .registers 9

    .prologue
    .line 376
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object v7

    .line 378
    .local v7, "keyRequest":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 382
    .end local v7    # "keyRequest":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    :goto_1d
    return-void

    .line 379
    :catch_1e
    move-exception v6

    .line 380
    .local v6, "e":Landroid/media/NotProvisionedException;
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method private postProvisionRequest()V
    .registers 4

    .prologue
    .line 341
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v1, :cond_5

    .line 347
    :goto_4
    return-void

    .line 344
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 345
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 346
    .local v0, "request":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .registers 8
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v2, 0x1

    .line 236
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-ne v1, p1, :cond_16

    :cond_9
    move v1, v2

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 237
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v1, v2, :cond_18

    .line 267
    :goto_15
    return-object p0

    .line 236
    :cond_16
    const/4 v1, 0x0

    goto :goto_a

    .line 241
    :cond_18
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v1, :cond_2c

    .line 242
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 243
    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    .line 244
    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    .line 247
    :cond_2c
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "DrmRequestHandler"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 248
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 251
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    .line 252
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    if-nez v1, :cond_71

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media does not support uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_15

    .line 256
    :cond_71
    sget v1, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_83

    .line 258
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    sget-object v3, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 259
    .local v0, "psshData":[B
    if-nez v0, :cond_8a

    .line 265
    .end local v0    # "psshData":[B
    :cond_83
    :goto_83
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    .line 266
    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_15

    .line 262
    .restart local v0    # "psshData":[B
    :cond_8a
    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v3, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    goto :goto_83
.end method

.method public final getError()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 318
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 305
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 217
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 193
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 297
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    .local p1, "session":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    const/4 v2, 0x0

    .line 272
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_a

    .line 290
    :cond_9
    :goto_9
    return-void

    .line 275
    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 277
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 281
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 282
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 283
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    .line 284
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    .line 285
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 286
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 288
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    goto :goto_9
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 310
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 313
    :cond_10
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 229
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 230
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method
