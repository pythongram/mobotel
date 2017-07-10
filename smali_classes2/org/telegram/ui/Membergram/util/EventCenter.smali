.class public Lorg/telegram/ui/Membergram/util/EventCenter;
.super Ljava/lang/Object;
.source "EventCenter.java"


# static fields
.field public static final didUserLogout:I

.field public static final insertNewChannelSuccess:I

.field public static final networkConnected:I

.field public static final networkDisconnected:I

.field public static final purchaseCoin:I

.field private static totalEvents:I

.field public static final updateUserCoin:I


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEventType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    const/4 v0, 0x1

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    .line 10
    sget v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->updateUserCoin:I

    .line 11
    sget v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->purchaseCoin:I

    .line 12
    sget v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->didUserLogout:I

    .line 13
    sget v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->insertNewChannelSuccess:I

    .line 14
    sget v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->networkConnected:I

    .line 15
    sget v0, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Membergram/util/EventCenter;->totalEvents:I

    sput v0, Lorg/telegram/ui/Membergram/util/EventCenter;->networkDisconnected:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Membergram/util/EventCenter;->mData:Ljava/util/ArrayList;

    .line 23
    iput p1, p0, Lorg/telegram/ui/Membergram/util/EventCenter;->mEventType:I

    .line 24
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Membergram/util/EventCenter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEvent(I)Z
    .registers 3
    .param p1, "event"    # I

    .prologue
    .line 37
    iget v0, p0, Lorg/telegram/ui/Membergram/util/EventCenter;->mEventType:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public varargs setArg([Ljava/lang/Object;)V
    .registers 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 27
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_e

    aget-object v0, p1, v1

    .line 28
    .local v0, "o":Ljava/lang/Object;
    iget-object v3, p0, Lorg/telegram/ui/Membergram/util/EventCenter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    .end local v0    # "o":Ljava/lang/Object;
    :cond_e
    return-void
.end method
