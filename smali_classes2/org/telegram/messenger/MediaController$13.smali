.class Lorg/telegram/messenger/MediaController$13;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$result:[Ljava/lang/Boolean;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V
    .registers 5
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2361
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$13;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$13;->val$result:[Ljava/lang/Boolean;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$13;->val$cacheFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$13;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2364
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$13;->val$result:[Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$13;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$13;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/messenger/MediaController;->access$4800(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2365
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$13;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2366
    return-void

    :cond_1e
    move v0, v1

    .line 2364
    goto :goto_12
.end method
