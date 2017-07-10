.class public Lorg/telegram/messenger/query/StickersQuery;
.super Ljava/lang/Object;
.source "StickersQuery.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_MASK:I = 0x1

.field private static allStickers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private static archivedStickersCount:[I

.field private static featuredStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private static featuredStickerSetsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private static featuredStickersLoaded:Z

.field private static loadDate:[I

.field private static loadFeaturedDate:I

.field private static loadFeaturedHash:I

.field private static loadHash:[I

.field private static loadingFeaturedStickers:Z

.field private static loadingRecentGifs:Z

.field private static loadingRecentStickers:[Z

.field private static loadingStickers:[Z

.field private static readingStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static recentGifs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static recentGifsLoaded:Z

.field private static recentStickers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static recentStickersLoaded:[Z

.field private static stickerSets:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickerSetsByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersByEmoji:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersById:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private static stickersLoaded:[Z

.field private static unreadStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 47
    new-array v0, v2, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    .line 50
    new-array v0, v2, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersById:[Ljava/util/HashMap;

    .line 52
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    .line 53
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    .line 54
    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    .line 55
    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    .line 57
    new-array v0, v2, [I

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    .line 62
    new-array v0, v2, [Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v4

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    .line 63
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    .line 64
    new-array v0, v2, [Z

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    return p0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    return p0
.end method

.method static synthetic access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 4
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1402(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1500()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 1
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 42
    sput p0, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    return p0
.end method

.method static synthetic access$1700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800()[I
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/ArrayList;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(ILjava/util/ArrayList;ZII)V
    .registers 5
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedStickers(ILjava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200()[Z
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    return-object v0
.end method

.method static synthetic access$2300()[Z
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    return-object v0
.end method

.method static synthetic access$2400()[I
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    return-object v0
.end method

.method static synthetic access$2500(ILjava/util/ArrayList;II)V
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$2600()[Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800()[Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersById:[Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900()[I
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    return-object v0
.end method

.method static synthetic access$300()[Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 42
    sput-object p0, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400()[Z
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    return-object v0
.end method

.method static synthetic access$500()[Z
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    return-object v0
.end method

.method static synthetic access$600(ILjava/util/ArrayList;ZI)V
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    return-void
.end method

.method static synthetic access$700(Ljava/util/ArrayList;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    .registers 5
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    return p0
.end method

.method public static addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .registers 15
    .param p0, "set"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 483
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 516
    :cond_1e
    :goto_1e
    return-void

    .line 486
    :cond_1f
    iget-object v10, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v10, :cond_64

    move v7, v8

    .line 487
    .local v7, "type":I
    :goto_26
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v10, v10, v7

    invoke-virtual {v10, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 488
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v11, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v10, v11, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_44
    iget-object v10, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_66

    .line 491
    iget-object v10, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 492
    .local v3, "document":Lorg/telegram/tgnet/TLRPC$Document;
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickersById:[Ljava/util/HashMap;

    aget-object v10, v10, v7

    iget-wide v12, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .end local v0    # "a":I
    .end local v3    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v7    # "type":I
    :cond_64
    move v7, v9

    .line 486
    goto :goto_26

    .line 494
    .restart local v0    # "a":I
    .restart local v7    # "type":I
    :cond_66
    const/4 v0, 0x0

    :goto_67
    iget-object v10, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_d0

    .line 495
    iget-object v10, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    .line 496
    .local v6, "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    const-string v11, "\ufe0f"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    .line 497
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 498
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-nez v1, :cond_9b

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_9b
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_9c
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_cd

    .line 503
    iget-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 504
    .local v4, "id":Ljava/lang/Long;
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bb

    .line 505
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    iget-object v11, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_bb
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->stickersById:[Ljava/util/HashMap;

    aget-object v10, v10, v7

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    .line 508
    .local v5, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v5, :cond_ca

    .line 509
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 494
    .end local v4    # "id":Ljava/lang/Long;
    .end local v5    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_cd
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 513
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v2    # "c":I
    .end local v6    # "stickerPack":Lorg/telegram/tgnet/TLRPC$TL_stickerPack;
    :cond_d0
    sget-object v10, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v11, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v11, v11, v7

    invoke-static {v11}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v11

    aput v11, v10, v7

    .line 514
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 515
    invoke-static {v7, v9, v8}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    goto/16 :goto_1e
.end method

.method public static addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V
    .registers 13
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p1, "date"    # I

    .prologue
    const/4 v10, 0x0

    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "found":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_29

    .line 189
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 190
    .local v3, "image":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_26

    .line 191
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    const/4 v2, 0x1

    .line 188
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 196
    .end local v3    # "image":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_29
    if-nez v2, :cond_30

    .line 197
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5, v10, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    :cond_30
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    if-le v5, v6, :cond_5e

    .line 200
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 201
    .local v4, "old":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$4;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/query/StickersQuery$4;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 212
    .end local v4    # "old":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_5e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v5, 0x1

    invoke-static {v10, v1, v5, p1}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    .line 215
    return-void
.end method

.method public static addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V
    .registers 14
    .param p0, "type"    # I
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "date"    # I

    .prologue
    const/4 v10, 0x0

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "found":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_31

    .line 129
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 130
    .local v3, "image":Lorg/telegram/tgnet/TLRPC$Document;
    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_2e

    .line 131
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    const/4 v2, 0x1

    .line 128
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    .end local v3    # "image":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_31
    if-nez v2, :cond_3a

    .line 137
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5, v10, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    :cond_3a
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    if-le v5, v6, :cond_6e

    .line 140
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v5, v5, p0

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v6, v6, p0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 141
    .local v4, "old":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$1;

    invoke-direct {v6, v4}, Lorg/telegram/messenger/query/StickersQuery$1;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 152
    .end local v4    # "old":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_6e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {p0, v1, v10, p2}, Lorg/telegram/messenger/query/StickersQuery;->processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V

    .line 155
    return-void
.end method

.method private static calcDocumentsHash(Ljava/util/ArrayList;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 263
    if-nez p0, :cond_b

    .line 264
    const/4 v6, 0x0

    .line 277
    :goto_a
    return v6

    .line 266
    :cond_b
    const-wide/16 v2, 0x0

    .line 267
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e
    const/16 v6, 0xc8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_3d

    .line 268
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 269
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v1, :cond_25

    .line 267
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 272
    :cond_25
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v4, v6

    .line 273
    .local v4, "high_id":I
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    long-to-int v5, v6

    .line 274
    .local v5, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 275
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v5

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_22

    .line 277
    .end local v1    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v4    # "high_id":I
    .end local v5    # "lower_id":I
    :cond_3d
    long-to-int v6, v2

    goto :goto_a
.end method

.method private static calcFeaturedStickersHash(Ljava/util/ArrayList;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 701
    const-wide/16 v2, 0x0

    .line 702
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4d

    .line 703
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 704
    .local v5, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v6, :cond_1f

    .line 702
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 707
    :cond_1f
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v1, v6

    .line 708
    .local v1, "high_id":I
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    long-to-int v4, v6

    .line 709
    .local v4, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 710
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 711
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 712
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_1c

    .line 715
    .end local v1    # "high_id":I
    .end local v4    # "lower_id":I
    .end local v5    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_4d
    long-to-int v6, v2

    return v6
.end method

.method public static calcNewHash(I)V
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 479
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, p0

    .line 480
    return-void
.end method

.method private static calcStickersHash(Ljava/util/ArrayList;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "sets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const-wide v8, 0x80000000L

    .line 1002
    const-wide/16 v2, 0x0

    .line 1003
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_28

    .line 1004
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 1005
    .local v1, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v4, :cond_1d

    .line 1003
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1008
    :cond_1d
    const-wide/16 v4, 0x4f25

    mul-long/2addr v4, v2

    add-long/2addr v4, v8

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    rem-long v2, v4, v8

    goto :goto_1a

    .line 1010
    .end local v1    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_28
    long-to-int v4, v2

    return v4
.end method

.method public static checkFeaturedStickers()V
    .registers 4

    .prologue
    .line 113
    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-nez v0, :cond_22

    sget-boolean v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_22

    .line 114
    :cond_1d
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V

    .line 116
    :cond_22
    return-void
.end method

.method public static checkStickers(I)V
    .registers 5
    .param p0, "type"    # I

    .prologue
    .line 107
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_28

    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aget v2, v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 108
    :cond_23
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 110
    :cond_28
    return-void
.end method

.method public static cleanup()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2e

    .line 81
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aput v2, v1, v0

    .line 82
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aput v2, v1, v0

    .line 83
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aput-boolean v2, v1, v0

    .line 86
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersLoaded:[Z

    aput-boolean v2, v1, v0

    .line 87
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aput-boolean v2, v1, v0

    .line 88
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    aput-boolean v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 90
    :cond_2e
    sput v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    .line 91
    sput v2, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    .line 92
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 93
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 94
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 95
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 96
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 97
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 99
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 100
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    .line 101
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->featuredStickersLoaded:Z

    .line 102
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    .line 103
    sput-boolean v2, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    .line 104
    return-void
.end method

.method public static clearRecents(I)V
    .registers 4
    .param p0, "type"    # I

    .prologue
    .line 1220
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1221
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/MessagesStorage;->clearWebRecent(I)V

    .line 1222
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clearRecentStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_clearRecentStickers;-><init>()V

    .line 1223
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_clearRecentStickers;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_clearRecentStickers;->attached:Z

    .line 1224
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$27;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$27;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1228
    return-void
.end method

.method public static getAllStickers()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 230
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->allStickers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getArchivedStickersCount(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 778
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getEmojiForSticker(J)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # J

    .prologue
    .line 258
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickersByEmoji:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_f

    .end local v0    # "value":Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public static getFeaturedStickerSets()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFeaturesStickersHashWithoutUnread()I
    .registers 14

    .prologue
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 738
    const-wide/16 v2, 0x0

    .line 739
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_a
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3b

    .line 740
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 741
    .local v5, "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v6, :cond_23

    .line 739
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 744
    :cond_23
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v1, v6

    .line 745
    .local v1, "high_id":I
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    long-to-int v4, v6

    .line 746
    .local v4, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 747
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_20

    .line 749
    .end local v1    # "high_id":I
    .end local v4    # "lower_id":I
    .end local v5    # "set":Lorg/telegram/tgnet/TLRPC$StickerSet;
    :cond_3b
    long-to-int v6, v2

    return v6
.end method

.method public static getRecentGifs()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getRecentStickers(I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getRecentStickersNoCopy(I)Ljava/util/ArrayList;
    .registers 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getStickerById(JI)Lorg/telegram/tgnet/TLRPC$Document;
    .registers 9
    .param p0, "id"    # J
    .param p2, "type"    # I

    .prologue
    .line 1209
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->stickersById:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1210
    .local v0, "document":Lorg/telegram/tgnet/TLRPC$Document;
    if-nez v0, :cond_11

    .line 1217
    .end local v0    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_10
    :goto_10
    return-object v0

    .line 1213
    .restart local v0    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_11
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {v0}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1214
    .local v1, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-eqz v2, :cond_10

    .line 1217
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getStickerSetById(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .registers 2
    .param p0, "id"    # Ljava/lang/Long;

    .prologue
    .line 226
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method public static getStickerSetId(Lorg/telegram/tgnet/TLRPC$Document;)J
    .registers 5
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 989
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 990
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 991
    .local v1, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v2, :cond_20

    .line 992
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v2, :cond_23

    .line 993
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 998
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :goto_1f
    return-wide v2

    .line 989
    .restart local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 998
    .end local v1    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_23
    const-wide/16 v2, -0x1

    goto :goto_1f
.end method

.method public static getStickerSetName(J)Ljava/lang/String;
    .registers 6
    .param p0, "setId"    # J

    .prologue
    .line 976
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 977
    .local v0, "stickerSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v0, :cond_13

    .line 978
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    .line 985
    :goto_12
    return-object v2

    .line 981
    :cond_13
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 982
    .local v1, "stickerSetCovered":Lorg/telegram/tgnet/TLRPC$StickerSetCovered;
    if-eqz v1, :cond_26

    .line 983
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    goto :goto_12

    .line 985
    :cond_26
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static getStickerSets(I)Ljava/util/ArrayList;
    .registers 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getUnreadStickerSets()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isLoadingStickers(I)Z
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 218
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isStickerPackInstalled(J)Z
    .registers 4
    .param p0, "id"    # J

    .prologue
    .line 246
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackInstalled(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStickerPackUnread(J)Z
    .registers 4
    .param p0, "id"    # J

    .prologue
    .line 250
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static loadArchivedStickersCount(IZ)V
    .registers 10
    .param p0, "type"    # I
    .param p1, "cache"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 782
    if-eqz p1, :cond_40

    .line 783
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "Notifications"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 784
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "archivedStickersCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 785
    .local v0, "count":I
    if-ne v0, v7, :cond_2a

    .line 786
    invoke-static {p0, v4}, Lorg/telegram/messenger/query/StickersQuery;->loadArchivedStickersCount(IZ)V

    .line 813
    .end local v0    # "count":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_29
    return-void

    .line 788
    .restart local v0    # "count":I
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2a
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->archivedStickersCount:[I

    aput v0, v5, p0

    .line 789
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->archivedStickersCountDidLoaded:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v5, v6, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_29

    .line 792
    .end local v0    # "count":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_40
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;-><init>()V

    .line 793
    .local v2, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->limit:I

    .line 794
    if-ne p0, v3, :cond_58

    :goto_49
    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getArchivedStickers;->masks:Z

    .line 795
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/query/StickersQuery$19;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/query/StickersQuery$19;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_29

    :cond_58
    move v3, v4

    .line 794
    goto :goto_49
.end method

.method public static loadFeaturesStickers(ZZ)V
    .registers 5
    .param p0, "cache"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 519
    sget-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    if-eqz v1, :cond_5

    .line 586
    :goto_4
    return-void

    .line 522
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/messenger/query/StickersQuery;->loadingFeaturedStickers:Z

    .line 523
    if-eqz p0, :cond_1b

    .line 524
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$11;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$11;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 567
    :cond_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;-><init>()V

    .line 568
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;
    if-eqz p1, :cond_32

    const/4 v1, 0x0

    :goto_23
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;->hash:I

    .line 569
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$12;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/query/StickersQuery$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_getFeaturedStickers;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_4

    .line 568
    :cond_32
    sget v1, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    goto :goto_23
.end method

.method public static loadRecents(IZZ)V
    .registers 13
    .param p0, "type"    # I
    .param p1, "gif"    # Z
    .param p2, "cache"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 281
    if-eqz p1, :cond_25

    .line 282
    sget-boolean v6, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    if-eqz v6, :cond_b

    .line 381
    :cond_a
    :goto_a
    return-void

    .line 285
    :cond_b
    sput-boolean v4, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentGifs:Z

    .line 286
    sget-boolean v6, Lorg/telegram/messenger/query/StickersQuery;->recentGifsLoaded:Z

    if-eqz v6, :cond_12

    .line 287
    const/4 p2, 0x0

    .line 298
    :cond_12
    :goto_12
    if-eqz p2, :cond_37

    .line 299
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$5;

    invoke-direct {v5, p1, p0}, Lorg/telegram/messenger/query/StickersQuery$5;-><init>(ZI)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 290
    :cond_25
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aget-boolean v6, v6, p0

    if-nez v6, :cond_a

    .line 293
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadingRecentStickers:[Z

    aput-boolean v4, v6, p0

    .line 294
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentStickersLoaded:[Z

    aget-boolean v6, v6, p0

    if-eqz v6, :cond_12

    .line 295
    const/4 p2, 0x0

    goto :goto_12

    .line 340
    :cond_37
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "emoji"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 342
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_73

    .line 343
    const-string v6, "lastGifLoadTime"

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 347
    .local v0, "lastLoadTime":J
    :goto_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-ltz v6, :cond_a

    .line 350
    if-eqz p1, :cond_7a

    .line 351
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;-><init>()V

    .line 352
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;
    sget-object v4, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-static {v4}, Lorg/telegram/messenger/query/StickersQuery;->calcDocumentsHash(Ljava/util/ArrayList;)I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;->hash:I

    .line 353
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$6;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$6;-><init>(IZ)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_a

    .line 345
    .end local v0    # "lastLoadTime":J
    .end local v3    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;
    :cond_73
    const-string v6, "lastStickersLoadTime"

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .restart local v0    # "lastLoadTime":J
    goto :goto_47

    .line 365
    :cond_7a
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;-><init>()V

    .line 366
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;
    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->recentStickers:[Ljava/util/ArrayList;

    aget-object v6, v6, p0

    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->calcDocumentsHash(Ljava/util/ArrayList;)I

    move-result v6

    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->hash:I

    .line 367
    if-ne p0, v4, :cond_9b

    :goto_8b
    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->attached:Z

    .line 368
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$7;

    invoke-direct {v5, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$7;-><init>(IZ)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_a

    :cond_9b
    move v4, v5

    .line 367
    goto :goto_8b
.end method

.method public static loadStickers(IZZ)V
    .registers 7
    .param p0, "type"    # I
    .param p1, "cache"    # Z
    .param p2, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 816
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    aget-boolean v2, v2, p0

    if-eqz v2, :cond_8

    .line 934
    :goto_7
    return-void

    .line 819
    :cond_8
    invoke-static {p0, p1}, Lorg/telegram/messenger/query/StickersQuery;->loadArchivedStickersCount(IZ)V

    .line 820
    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->loadingStickers:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p0

    .line 821
    if-eqz p1, :cond_23

    .line 822
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$20;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/query/StickersQuery$20;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 858
    :cond_23
    if-nez p0, :cond_43

    .line 859
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;-><init>()V

    .local v1, "req":Lorg/telegram/tgnet/TLObject;
    move-object v2, v1

    .line 860
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;

    if-eqz p2, :cond_3e

    :goto_2f
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAllStickers;->hash:I

    .line 865
    .local v0, "hash":I
    :goto_31
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/StickersQuery$21;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/query/StickersQuery$21;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_7

    .line 860
    .end local v0    # "hash":I
    :cond_3e
    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v0, v3, p0

    goto :goto_2f

    .line 862
    .end local v1    # "req":Lorg/telegram/tgnet/TLObject;
    :cond_43
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;-><init>()V

    .restart local v1    # "req":Lorg/telegram/tgnet/TLObject;
    move-object v2, v1

    .line 863
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;

    if-eqz p2, :cond_50

    :goto_4d
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMaskStickers;->hash:I

    .restart local v0    # "hash":I
    goto :goto_31

    .end local v0    # "hash":I
    :cond_50
    sget-object v3, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v0, v3, p0

    goto :goto_4d
.end method

.method public static markFaturedStickersAsRead(Z)V
    .registers 6
    .param p0, "query"    # Z

    .prologue
    .line 719
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 735
    :cond_8
    :goto_8
    return-void

    .line 722
    :cond_9
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 723
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    sput v1, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    .line 724
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 725
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->featuredStickerSets:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedDate:I

    sget v4, Lorg/telegram/messenger/query/StickersQuery;->loadFeaturedHash:I

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 726
    if-eqz p0, :cond_8

    .line 727
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;-><init>()V

    .line 728
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$16;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$16;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_8
.end method

.method public static markFaturedStickersByIdAsRead(J)V
    .registers 6
    .param p0, "id"    # J

    .prologue
    .line 753
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->unreadStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 775
    :cond_18
    :goto_18
    return-void

    .line 756
    :cond_19
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->readingStickerSets:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;-><init>()V

    .line 758
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_readFeaturedStickers;->id:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$17;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$17;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 765
    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$18;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$18;-><init>(J)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_18
.end method

.method private static processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    .registers 12
    .param p2, "cache"    # Z
    .param p3, "date"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .local p1, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$13;

    invoke-direct {v0}, Lorg/telegram/messenger/query/StickersQuery$13;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 596
    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$14;

    move v1, p2

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/query/StickersQuery$14;-><init>(ZLjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method

.method private static processLoadedRecentDocuments(ILjava/util/ArrayList;ZI)V
    .registers 6
    .param p0, "type"    # I
    .param p2, "gif"    # Z
    .param p3, "date"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    if-eqz p1, :cond_12

    .line 385
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$8;

    invoke-direct {v1, p2, p1, p0, p3}, Lorg/telegram/messenger/query/StickersQuery$8;-><init>(ZLjava/util/ArrayList;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 432
    :cond_12
    if-nez p3, :cond_1c

    .line 433
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$9;

    invoke-direct {v0, p2, p0, p1}, Lorg/telegram/messenger/query/StickersQuery$9;-><init>(ZILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 457
    :cond_1c
    return-void
.end method

.method private static processLoadedStickers(ILjava/util/ArrayList;ZII)V
    .registers 12
    .param p0, "type"    # I
    .param p2, "cache"    # Z
    .param p3, "date"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$23;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/query/StickersQuery$23;-><init>(I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1021
    sget-object v6, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/query/StickersQuery$24;

    move v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/query/StickersQuery$24;-><init>(ZLjava/util/ArrayList;III)V

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1127
    return-void
.end method

.method private static putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .param p2, "date"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p0, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    .local p1, "unreadStickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    .local v0, "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$15;

    invoke-direct {v2, v0, p1, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$15;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 698
    return-void

    .line 655
    .end local v0    # "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$StickerSetCovered;>;"
    :cond_18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static putStickersToCache(ILjava/util/ArrayList;II)V
    .registers 7
    .param p0, "type"    # I
    .param p2, "date"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    if-eqz p1, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 938
    .local v0, "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$22;

    invoke-direct {v2, v0, p0, p2, p3}, Lorg/telegram/messenger/query/StickersQuery$22;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 973
    return-void

    .line 937
    .end local v0    # "stickersFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    :cond_18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 5
    .param p0, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 162
    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->recentGifs:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 164
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 165
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 166
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 168
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$2;

    invoke-direct {v2}, Lorg/telegram/messenger/query/StickersQuery$2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 174
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$3;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/query/StickersQuery$3;-><init>(Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public static removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;
    .param p2, "hide"    # I
    .param p3, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p4, "showSettings"    # Z

    .prologue
    .line 1130
    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v5, :cond_93

    const/4 v4, 0x1

    .line 1131
    .local v4, "type":I
    :goto_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 1132
    .local v3, "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->access_hash:J

    .line 1133
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;->id:J

    .line 1134
    if-eqz p2, :cond_b5

    .line 1135
    const/4 v5, 0x1

    if-ne p2, v5, :cond_96

    const/4 v5, 0x1

    :goto_18
    iput-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    .line 1136
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1b
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4b

    .line 1137
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1138
    .local v2, "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_af

    .line 1139
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1140
    const/4 v5, 0x2

    if-ne p2, v5, :cond_98

    .line 1141
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1149
    .end local v2    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_4b
    :goto_4b
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v6

    aput v6, v5, v4

    .line 1150
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    sget-object v6, Lorg/telegram/messenger/query/StickersQuery;->loadDate:[I

    aget v6, v6, v4

    sget-object v7, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    aget v7, v7, v4

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->putStickersToCache(ILjava/util/ArrayList;II)V

    .line 1151
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1152
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;-><init>()V

    .line 1153
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1154
    const/4 v5, 0x1

    if-ne p2, v5, :cond_b3

    const/4 v5, 0x1

    :goto_84
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;->archived:Z

    .line 1155
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$25;

    invoke-direct {v6, v4, p2, p3, p4}, Lorg/telegram/messenger/query/StickersQuery$25;-><init>(IILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1206
    .end local v0    # "a":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :goto_92
    return-void

    .line 1130
    .end local v3    # "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    .end local v4    # "type":I
    :cond_93
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1135
    .restart local v3    # "stickerSetID":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;
    .restart local v4    # "type":I
    :cond_96
    const/4 v5, 0x0

    goto :goto_18

    .line 1143
    .restart local v0    # "a":I
    .restart local v2    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_98
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsById:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v5, Lorg/telegram/messenger/query/StickersQuery;->stickerSetsByName:Ljava/util/HashMap;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$StickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 1136
    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    .line 1154
    .end local v2    # "set":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :cond_b3
    const/4 v5, 0x0

    goto :goto_84

    .line 1179
    .end local v0    # "a":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_installStickerSet;
    :cond_b5
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;-><init>()V

    .line 1180
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_uninstallStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1181
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/query/StickersQuery$26;

    invoke-direct {v6, p1, p0, v4}, Lorg/telegram/messenger/query/StickersQuery$26;-><init>(Lorg/telegram/tgnet/TLRPC$StickerSet;Landroid/content/Context;I)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_92
.end method

.method public static reorderStickers(ILjava/util/ArrayList;)V
    .registers 8
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "order":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    new-instance v1, Lorg/telegram/messenger/query/StickersQuery$10;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/query/StickersQuery$10;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 473
    sget-object v0, Lorg/telegram/messenger/query/StickersQuery;->loadHash:[I

    sget-object v1, Lorg/telegram/messenger/query/StickersQuery;->stickerSets:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->calcStickersHash(Ljava/util/ArrayList;)I

    move-result v1

    aput v1, v0, p0

    .line 474
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 475
    invoke-static {p0, v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    .line 476
    return-void
.end method
