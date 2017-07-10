.class public Lorg/telegram/messenger/query/SearchQuery;
.super Ljava/lang/Object;
.source "SearchQuery.java"


# static fields
.field private static bitmapRect:Landroid/graphics/RectF;

.field public static hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
            ">;"
        }
    .end annotation
.end field

.field public static inlineBots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_topPeer;",
            ">;"
        }
    .end annotation
.end field

.field private static inlineDates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static loaded:Z

.field private static loading:Z

.field private static roundPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->roundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 1
    .param p0, "x0"    # Landroid/graphics/Paint;

    .prologue
    .line 56
    sput-object p0, Lorg/telegram/messenger/query/SearchQuery;->roundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100()Landroid/graphics/RectF;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->bitmapRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 1
    .param p0, "x0"    # Landroid/graphics/RectF;

    .prologue
    .line 56
    sput-object p0, Lorg/telegram/messenger/query/SearchQuery;->bitmapRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    return p0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 56
    sput-object p0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(IID)V
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # D

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V

    return-void
.end method

.method public static buildShortcuts()V
    .registers 4

    .prologue
    .line 78
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_7

    .line 242
    .local v0, "a":I
    .local v1, "hintsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    :goto_6
    return-void

    .line 81
    .end local v0    # "a":I
    .end local v1    # "hintsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v1    # "hintsFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_topPeer;>;"
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_d
    sget-object v2, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 83
    sget-object v2, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_30

    .line 88
    :cond_25
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/query/SearchQuery$1;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/query/SearchQuery$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 82
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static cleanup()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 68
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    .line 69
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    .line 70
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method private static deletePeer(II)V
    .registers 4
    .param p0, "did"    # I
    .param p1, "type"    # I

    .prologue
    .line 595
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SearchQuery$9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/SearchQuery$9;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public static increaseInlineRaiting(I)V
    .registers 12
    .param p0, "uid"    # I

    .prologue
    const/4 v10, 0x1

    .line 412
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineDates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 414
    .local v4, "time":Ljava/lang/Integer;
    if-eqz v4, :cond_95

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 420
    .local v1, "dt":I
    :goto_20
    const/4 v3, 0x0

    .line 421
    .local v3, "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_22
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_39

    .line 422
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 423
    .local v2, "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v5, p0, :cond_98

    .line 424
    move-object v3, v2

    .line 428
    .end local v2    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_39
    if-nez v3, :cond_50

    .line 429
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .end local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeer;-><init>()V

    .line 430
    .restart local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 431
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput p0, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 432
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_50
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    div-int v5, v1, v5

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    .line 435
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/query/SearchQuery$4;

    invoke-direct {v6}, Lorg/telegram/messenger/query/SearchQuery$4;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 446
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_83

    .line 447
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    sget-object v6, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 449
    :cond_83
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->rating:D

    invoke-static {p0, v10, v6, v7}, Lorg/telegram/messenger/query/SearchQuery;->savePeer(IID)V

    .line 450
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 451
    return-void

    .line 417
    .end local v0    # "a":I
    .end local v1    # "dt":I
    .end local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_95
    const/16 v1, 0x3c

    .restart local v1    # "dt":I
    goto :goto_20

    .line 421
    .restart local v0    # "a":I
    .restart local v2    # "p":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    .restart local v3    # "peer":Lorg/telegram/tgnet/TLRPC$TL_topPeer;
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public static increasePeerRaiting(J)V
    .registers 6
    .param p0, "did"    # J

    .prologue
    .line 496
    long-to-int v0, p0

    .line 497
    .local v0, "lower_id":I
    if-gtz v0, :cond_4

    .line 572
    :cond_3
    :goto_3
    return-void

    .line 501
    :cond_4
    if-lez v0, :cond_29

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 503
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_12
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_3

    .line 506
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/SearchQuery$7;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/messenger/query/SearchQuery$7;-><init>(JI)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 501
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_29
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static loadHints(Z)V
    .registers 5
    .param p0, "cache"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    sget-boolean v1, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    if-eqz v1, :cond_7

    .line 409
    :cond_6
    :goto_6
    return-void

    .line 248
    :cond_7
    if-eqz p0, :cond_22

    .line 249
    sget-boolean v1, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    if-nez v1, :cond_6

    .line 252
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    .line 253
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/SearchQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/SearchQuery$2;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 317
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loaded:Z

    goto :goto_6

    .line 319
    :cond_22
    sput-boolean v3, Lorg/telegram/messenger/query/SearchQuery;->loading:Z

    .line 320
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;-><init>()V

    .line 321
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->hash:I

    .line 322
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_pm:Z

    .line 323
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->correspondents:Z

    .line 324
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->groups:Z

    .line 325
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->channels:Z

    .line 326
    iput-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_inline:Z

    .line 327
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->offset:I

    .line 328
    const/16 v1, 0x14

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->limit:I

    .line 329
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/SearchQuery$3;

    invoke-direct {v2}, Lorg/telegram/messenger/query/SearchQuery$3;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6
.end method

.method public static removeInline(I)V
    .registers 7
    .param p0, "uid"    # I

    .prologue
    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 456
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v3, p0, :cond_4c

    .line 457
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;-><init>()V

    .line 459
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryBotsInline;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    .line 460
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 461
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$5;

    invoke-direct {v4}, Lorg/telegram/messenger/query/SearchQuery$5;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 467
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/telegram/messenger/query/SearchQuery;->deletePeer(II)V

    .line 468
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 472
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    :cond_4b
    return-void

    .line 455
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static removePeer(I)V
    .registers 8
    .param p0, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "category":Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryPeers;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a

    .line 477
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-ne v3, p0, :cond_4b

    .line 478
    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 480
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;-><init>()V

    .line 481
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_topPeerCategoryCorrespondents;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->category:Lorg/telegram/tgnet/TLRPC$TopPeerCategory;

    .line 482
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 483
    invoke-static {p0, v6}, Lorg/telegram/messenger/query/SearchQuery;->deletePeer(II)V

    .line 484
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/SearchQuery$6;

    invoke-direct {v4}, Lorg/telegram/messenger/query/SearchQuery$6;-><init>()V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 493
    .end local v2    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resetTopPeerRating;
    :cond_4a
    return-void

    .line 476
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static savePeer(IID)V
    .registers 6
    .param p0, "did"    # I
    .param p1, "type"    # I
    .param p2, "rating"    # D

    .prologue
    .line 575
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/SearchQuery$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/query/SearchQuery$8;-><init>(IID)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method
