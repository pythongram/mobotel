.class final Lorg/telegram/messenger/MediaController$VideoConvertRunnable$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$obj:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .registers 2

    .prologue
    .line 3695
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$VideoConvertRunnable$1;->val$obj:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 3699
    :try_start_0
    new-instance v2, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$VideoConvertRunnable$1;->val$obj:Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$1;)V

    .line 3700
    .local v2, "wrapper":Lorg/telegram/messenger/MediaController$VideoConvertRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v3, "VideoConvertRunnable"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3701
    .local v1, "th":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3702
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 3706
    .end local v1    # "th":Ljava/lang/Thread;
    .end local v2    # "wrapper":Lorg/telegram/messenger/MediaController$VideoConvertRunnable;
    :goto_15
    return-void

    .line 3703
    :catch_16
    move-exception v0

    .line 3704
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_15
.end method
