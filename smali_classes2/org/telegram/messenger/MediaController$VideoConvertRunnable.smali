.class Lorg/telegram/messenger/MediaController$VideoConvertRunnable;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoConvertRunnable"
.end annotation


# instance fields
.field private messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .registers 2
    .param p1, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3686
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 3687
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x1"    # Lorg/telegram/messenger/MediaController$1;

    .prologue
    .line 3681
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;-><init>(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static runConversion(Lorg/telegram/messenger/MessageObject;)V
    .registers 3
    .param p0, "obj"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3695
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$VideoConvertRunnable$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable$1;-><init>(Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3707
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3708
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3691
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$6800(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z

    .line 3692
    return-void
.end method
